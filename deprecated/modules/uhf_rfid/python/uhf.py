# from send_to_rabbitmq import Sensor

import serial
import time

DEFAULT_BAUDRATE        = 115200
DEFAULT_SERIAL_PORT     = '/dev/serial0'
DEFAULT_ACCESS_PASSWORD = [0x00, 0x00, 0x00, 0x00]

# Reader commands
RESET_CMD         = 0x70
READ_CMD          = 0x81
WRITE_CMD         = 0x82
RT_INVENTORY_CMD  = 0x89 # Real time inventory
GET_READER_ID_CMD = 0x68 # Get reader identifier
BUZZER_CMD        = 0x7A
SET_MODE_CMD	  = 0xA0

# Reader modes
STANDARD_MODE	  = 0x00
WIEGAND26_MODE	  = 0x03

# Buzzer modes
BUZZER_QUIET     = 0x00
BUZZER_ROUND     = 0x01
BUZZER_TAG       = 0x02

# Membank
RESERVED_MEMBANK = 0x00
EPC_MEMBANK      = 0x01
TID_MEMBANK      = 0x02
USER_MEMBANK     = 0x03

# Membank word limit, a word is 2 bytes (16 bit)
EPC_MEMBANK_WORD_LIM  = 8
TID_MEMBANK_WORD_LIM  = 12
USER_MEMBANK_WORD_LIM = 32

# Needed to format package
HEADER           = 0xA0
READER_ADDRESS   = 0x01
PUBLIC_ADDRESS   = 0xFF

# Indexes
HEADER_INDEX      = 0
MESSAGE_LEN_INDEX = 1

# Error codes
COMMAND_SUCCESS      = 0x10
COMMAND_FAIL         = 0x11
TAG_INV_ERROR        = 0x31 # Tag inventory error
TAG_READ_ERROR       = 0x32 # Error reading tag
TAG_WRITE_ERROR      = 0x33 # Error writing tag
TAG_LOCK_ERROR       = 0x34 # Error locking tag
TAG_KILL_ERROR       = 0x35 # Error killing tag
NO_TAG_ERROR         = 0x36
BUFFER_EMPTY         = 0x38
PARAM_INVALID        = 0x41 # Invalid parameter
WORD_CNT_TOO_LONG    = 0x42 # WordCnt too long
MEMBANK_OUT_OF_RANGE = 0x43
LOCK_OUT_OF_RANGE    = 0x44 # Lock region out of range

class UHFReader():
    def get_error_message(self, error_code):
        if error_code == COMMAND_SUCCESS:
            return "COMMAND SUCCESS"
        if error_code == COMMAND_FAIL:
            return "COMMAND FAIL"
        if error_code == TAG_INV_ERROR:
            return "TAG INVENTORY ERROR"
        if error_code == TAG_READ_ERROR:
            return "TAG READ ERROR"
        if error_code == TAG_WRITE_ERROR:
            return "TAG WRITE ERROR"
        if error_code == TAG_LOCK_ERROR:
            return "TAG LOCK ERROR"
        if error_code == TAG_KILL_ERROR:
            return "TAG KILL ERROR"
        if error_code == NO_TAG_ERROR:
            return "NO TAG ERROR"
        if error_code == BUFFER_EMPTY:
            return "BUFFER EMPTY"
        if error_code == PARAM_INVALID:
            return "PARAMETER INVALID"
        if error_code == WORD_CNT_TOO_LONG:
            return "WORD CNT TOO LONG"
        if error_code == MEMBANK_OUT_OF_RANGE:
            return "MEMBANK OUT OF RANGE"
        if error_code == LOCK_OUT_OF_RANGE:
            return "LOCK REGION OUT OF RANGE"
        return "UNHANLED ERROR CODE: " + format(error_code, '#04x')


    # Read datasheet for checksum function (written in C)
    def get_checksum(self, arr):
        cs = 0
        for i in arr:
            cs += i
            cs %= 256
        
        cs = ~cs + 1
        cs %= 256
        return cs
    
    
    def check_packet_checksum(self, arr):
        return (self.get_checksum(arr[:-1]) == arr[-1])

    
    def format_command(self, command):
        # Message length count from third byte, exculuding header and len byte (address -> check)
        message_length = len(command) + 2
        command = [HEADER, len(command) + 2, PUBLIC_ADDRESS] + command
        command.append(self.get_checksum(command))
        print(self.get_hex_string(command))
        return bytearray(command)

    
    def get_hex_string(self, arr):
        hex_str = ''
        for i in arr:
            hex_str += format(i, '#04x')[2:] + ' '
        return hex_str.upper()
    
    
    def get_int_arr(self, bytes_str):
        int_arr = []
        hex_str = bytes_str.hex()
        for i in range(0, len(hex_str), 2):
            int_arr.append(int(hex_str[i] + hex_str[i+1], 16))
        return int_arr

    
    def open_connection(self, port=DEFAULT_SERIAL_PORT, baudrate=DEFAULT_BAUDRATE, timeout=20):
        self.ser = serial.Serial(port=port, baudrate=baudrate, timeout=timeout)
        self.ser.close()
        self.ser.open()
    
    
    def close_connection(self):
        self.ser.close()

    
    def reset_reader(self):
        self.ser.write(self.format_command([RESET_CMD]))

    def set_reader_mode(self, mode):
        self.ser.write(self.format_command([SET_MODE_CMD, mode]))

    def setmode_standard(self):
        self.ser.write(self.format_command([0xa0,0x00]))

    
    def read_tag(self, membank=TID_MEMBANK, word_address=0x00, word_cnt=0x01):
        if ((membank == TID_MEMBANK and word_address + word_cnt > TID_MEMBANK_WORD_LIM) or
            (membank == EPC_MEMBANK and word_address + word_cnt > EPC_MEMBANK_WORD_LIM) or
            (membank == USER_MEMBANK and word_address + word_cnt > USER_MEMBANK_WORD_LIM)):
            print("Membank word limit exceeded. (TID 12 words, EPC 8 words, USER 32 words)")
            return

        self.ser.write(self.format_command([READ_CMD, membank, word_address, word_cnt]))

        '''
        output = self.read_output()
        if len(output) == 0:
            return
        header = output[0]
        if header != 0xA0:
            print("Wrong response header: " + format(header, '#04x'))
            return

        output = self.read_output()
        if len(output) == 0:
            return
        message_length = output[0]
        response = self.read_output(message_length)

        if message_length == 4:
            # if response[2] == NO_TAG_ERROR:
            #     return
            print(self.get_error_message(response[2]))
        else:
            data_length = response[4]
            read_length = response[5 + data_length]

            pc = response[5:7]
            epc = response[5:5 + data_length - read_length - 2]
            crc = response[5 + data_length - read_length - 2:5 + data_length - read_length]
            read_data = response[5 + data_length - read_length:5 + data_length]

            # print("Tag count: " + str(response[3]+response[2]))
            print("PC: " + self.get_hex_string(pc))
            print("EPC: " + self.get_hex_string(epc))
            print("CRC: " + self.get_hex_string(crc))
            print("Read data: " + self.get_hex_string(read_data))

            return self.get_hex_string(read_data)
        '''

    
    def write_tag(self, data, membank=TID_MEMBANK,
                  access_password=DEFAULT_ACCESS_PASSWORD,
                  word_address=0x00, word_cnt=0x01):
        if ((membank == TID_MEMBANK and word_address + word_cnt > TID_MEMBANK_WORD_LIM) or
            (membank == EPC_MEMBANK and word_address + word_cnt > EPC_MEMBANK_WORD_LIM) or
            (membank == USER_MEMBANK and word_address + word_cnt > USER_MEMBANK_WORD_LIM)):
            print("Membank word limit exceeded. (TID 12 words, EPC 8 words, USER 32 words)")
            return
        
        if (membank == EPC_MEMBANK and word_address < 0x02):
            print("EPC starts from address 02, you are overwriting PC+CRC.\nProceed? (y/N) ", end="")
            ans = input()
            if len(ans) == 0 or ans.lower()[0] != 'y':
                return

        if len(access_password) != 4:
            print("Password array must has 4 bytes")
            return

        if len(data) != word_cnt*2:
            print("Write data should have 2*word_cnt bytes")
            return

        command = [WRITE_CMD] + access_password
        command += [membank, word_address, word_cnt] + data
        self.ser.write(self.format_command(command))
        
        header = self.read_output()[0]
        if header != 0xA0:
            print("Wrong response header: " + format(header, '#04x'))

        message_length = self.read_output()[0]
        response = self.read_output(message_length)

        if message_length == 4:
            # if response[2] == NO_TAG_ERROR:
            #     return
            print(self.get_error_message(response[2]))
        else:
            data_length = response[4]

            pc = response[5:7]
            epc = response[5:5 + data_length - 2]
            crc = response[5 + data_length - 2:5 + data_length]

            print("Tag count: " + str(response[3]+response[2]))
            print("PC: " + self.get_hex_string(pc))
            print("EPC: " + self.get_hex_string(epc))
            print("CRC: " + self.get_hex_string(crc))
            print("Write count: " + str(response[-2]))
            print("Status: " + self.get_error_message(response[-4]))
        
    
    def realtime_inventory_start(self, repeat=0xFF):
        self.ser.write(self.format_command([RT_INVENTORY_CMD, repeat]))


    def read_realtime_inventory(self):
        header = self.read_output()

        if len(header) == 0:
            return
        
        header = header[0]
        if header != 0xA0:
            print("Wrong response header: " + format(header, '#04x'))
            return
        
        message_length = self.read_output()[0]
        response = self.read_output(message_length)

        pc = response[3:5]
        epc = response[5:-2]
        rssi = response[-2:-1]

        print("PC: " + self.get_hex_string(pc))
        print("EPC: " + self.get_hex_string(epc))
        print("RSSI: " + self.get_hex_string(rssi))
        print()

    
    def set_beeper_mode(self, mode):
        self.ser.write(self.format_command([BUZZER_CMD, mode]))

    
    def read_output(self, n_bytes=1):
        return self.get_int_arr(self.ser.read(n_bytes))


'''
===============================
          Driver code
===============================
'''

# sensor = Sensor('uhf', '1')

uhf = UHFReader()
uhf.open_connection()
# uhf.setmode_standard()
time.sleep(1)

while False:
    #print("Reset")
    uhf.reset_reader()
    time.sleep(1)

uhf.reset_reader()
uhf.set_reader_mode(STANDARD_MODE)
#uhf.set_reader_mode(WIEGAND26_MODE)

uhf.set_beeper_mode(BUZZER_QUIET)
#uhf.set_beeper_mode(BUZZER_TAG)
# uhf.write_tag(data=[0x00, 0x00, 0x00, 0x00],
#               membank=USER_MEMBANK,
#               word_address=0x01,
#               word_cnt=2)
# uhf.realtime_inventory_start()
#uhf.read_output()
# uhf.read_tag(membank=TID_MEMBANK, word_address=0x01, word_cnt=11)
uhf.read_tag()

while True:
    try:
        uhf.realtime_inventory_start()
        #uhf.read_realtime_inventory()
        #tag = uhf.read_tag(membank=TID_MEMBANK, word_address=0x01, word_cnt=11)
        output = uhf.read_output()
        #print(output)
        #print(tag)
        for out in output:
            print(hex(out))
    except KeyboardInterrupt:
        break
    except:
        pass

    #uhf.realtime_inventory_start()
    #uhf.read_realtime_inventory()

    # print("\nPress enter to read tag...")
    # input()

    # Read 12 words (16 bit each) to get 24 bytes (PC + EPC + CRC not included)
    # tag = uhf.read_tag(membank=TID_MEMBANK, word_address=0x01, word_cnt=11)
    # if tag:
    #     sensor.send_message(sensor.format_message('tagid:' + tag.replace(' ', '')))
