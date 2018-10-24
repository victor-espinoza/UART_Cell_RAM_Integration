Project Overview:   

Fully Functional Universal Asynchronous Receiver/Transmitter with ability to store data in Cell RAM using Verilog and Assembly. 
     
The designed System On Chip is able to communicate with a user via an Universal Asynchronous Receiver Transmitter (UART) interface to receive and transmit data. The SOC is also capable of interfacing to memory. The device that was used to verify the correctness of the SOC was the Digilent Nexys2 circuit board.    
          
The SOC uses an external 8-bit microcontroller called PicoBlaze to receive and process data coming into and out of the SOC. The PicoBlaze is also able to process the status of the UART engine and inform the user whenever an overflow error or a parity error occurs within the UART communication. The UART engine achieves this by assigning status flags from its internal Receive engine. These flags are cleared every time that the PicoBlaze reads the status of the UART engine.	      
       
In order for the SOC to be able to accurately communicate with the user, they both need to set up an agreed upon communication scheme (number of data bits being sent, parity type, and number of stop bits). This is achieved by using the slide switches located on the Nexys2 board. Once the agreed upon communication scheme is established, the user then opens up a terminal window using the same communication scheme. This allows the SOC to communicate with the user and vice versa.      
     
All that the user needs to do to initiate the SOC communication is to reset the system by pushing a reset button on the Nexys2 board. Upon reset, a banner is displayed and so is a command prompt (*>). The user can then enter a character on the keyboard and its data is sent to the PicoBlaze. If the received character is a carriage return or a line feed character, then the PicoBlaze will have the UART Engine transmit a new line command and re-issue the prompt to the terminal window.     
     
If the character received is a pound sign (#), then the  PicoBlaze will have the UART engine transmit the hometown of the developer (Porterville, CA) to the terminal window. If the received character is a backspace, then a destructive delete character is transmitted to the terminal which deletes that character from the terminal screen. For the SOC specifications, it is extremely important to make sure that the prompt does not get deleted when inputting a backspace or delete character on the keyboard. Any other valid ASCII character that the user enters on the keyboard will be echoed to the terminal.    
    
Every character that the user enters into the keyboard is also written to the 8M x 16 Micron Memory located on the Nexys2 board starting at memory location 0x000. Each address location corresponds to 16 bits of data. Data can be written up to memory location 0x200 in the Micron Memory located on the Nexys2 board. Characters received after this limit is reached will begin to overwrite those characters previously saved in memory starting from the beginning at memory address 0x000.    
      
Micron Memory Block Diagram:    
![ScreenShot](https://cloud.githubusercontent.com/assets/14812721/24989514/0c2bd88e-1fc2-11e7-9107-d64ac14349da.jpg)   
    
Finally, in order to view the contents of the Micron Memory that have been written to, the user needs to send an asterisk (*) to the PicoBlaze. This character causes the PicoBlaze to retrieve all of the memory data that has been written to (all of the characters that the user has pressed on their keyboard during the terminal session thus far) and display it on the terminal.   

Project Block Diagram:     
![ScreenShot](https://cloud.githubusercontent.com/assets/14812721/24989506/ff7b9f52-1fc1-11e7-94d5-be0dead2117c.jpg)
     
The project consists of seven different blocks. The first block in the Block Diagram is the Asynchronous In, Synchronous Out Synchronization Circuit. This makes it so that the reset button on the Nexys 2 Board (which is high-active) generates a low signal every time it is activated. This is because all of the reset logic in the system (excluding the external PicoBlaze microcontroller is low-active). The output of my AISO (rstsb) goes to all of the other blocks in the design. Because the PicoBlaze has a high-active reset, I needed to invert the rstsb output before I connected the rstsb signal to the PicoBlaze.
   
The second block in the design is the PicoBlaze. I use the PicoBlaze to process all of the data coming in from the Universal Asynchronous Receiver Transmitter interface terminal. I also use the PicoBlaze to determine what data is going to be transmitted to the terminal. The port_id, write_strobe, and read_strobe outputs go into the third block, which is a decoder that I use to determine what data to write to the terminal and what data to read from the UART interface.
    
The fourth block consists of the transmit engine, where I format the data bits in the correct sequence and determine the parity, number of bits, and baud rate at which to transmit the data. I then shift load this data into a shift register and shift out the data bits individually until all of the bits have been transmitted to the terminal. The transmit engine also outputs a TxRdy flag to let the PicoBlaze know when it is ready to transmit another byte. 
       
The fifth block consists of the receive engine. This block receives data from the terminal by determining the parity, number of bits, and baud rate at which the data is being received. The data bits are shifted into a shift register. Once all data bits have been shifted in, the receive engine then loads the received byte into a register and calculates the parity error. The receive engine also continually updates the overflow flag to make sure that an overflow does not occur (when the receive engine starts receiving another byte before it finishes receiving the previous byte). The receive engine outputs both the received byte of data and its status flags (Overflow, Parity Error, and RxRdy). The received byte of data is then sent over to the PicoBlaze so it can process it and figure out what to transmit to the terminal.
     
Both the receive engine status flags and the transmit engine status flags are concatenated together and they then go into the sixth block, which is a multiplexer. The multiplexer decides what 8 bits of data to send to the in_port of the PicoBlaze based on whether read[0] is set high. If it is, then the in_port of the PicoBlaze gets the status flags {2'b0, Overflow, ParityError, 2'b0, TxRdy, RxRdy}, otherwise it gets the received byte data from the receive engine. 
     
The seventh block consists of the Memory Interface Block, where I have the logic to read and write from and to memory. This block relies on the data coming from the PicoBlaze and it also helps input specific data to the PicoBlaze as well. It internally creates the signals needed to perform read and write operations from and to memory. The memory interface status also goes into the multiplexor that the UART status flags and the receive engine data. That sums up the main top-level design of my project.
    
Memory Interface Block Diagram:    
![ScreenShot](https://cloud.githubusercontent.com/assets/14812721/24989512/08de1f0c-1fc2-11e7-9158-7f89f3fd4d26.jpg)    
    
I also connected a Seven-Segment Display in my design so that I can view the data being recieved by the PicoBlaze and see how many characters are displayed on the serial window line. For the sake of simplicity, however, I am not including this block in my top-level block diagram because it is trivial and does not contribute to the overall completion of the project.

Project Assembly Code:     
   
             ;Memory Interface
             ;
             ;================================================================
             ; data constants
             ;================================================================
             ;selected ASCII codes
             CONSTANT ASCII_CR , 0D                ; carriage return <CR>
             CONSTANT ASCII_LF , 0A                ; line feed <LF>
             CONSTANT ASCII_Space , 20             ; Space 
             CONSTANT ASCII_Asterisk , 2A          ; *(Asterisk) character
             CONSTANT ASCII_Greater_Than, 3E       ; >(Greater Than) character  
             CONSTANT ASCII_bslash , 2F            ; /(Backslash) character
             CONSTANT ASCII_colon , 3A             ; :(colon) character
             CONSTANT ASCII_comma , 2C             ; ,(comma) character
             CONSTANT ASCII_dash , 2D              ; -(dash) character
             CONSTANT ASCII_exclamation , 21       ; !(exclamation point) character
             CONSTANT ASCII_backspace , 08         ; BS(backspace) character
             CONSTANT ASCII_delete , 7F            ; DEL(descructive delete) 
             CONSTANT ASCII_pound , 23             ;#(pound sign) 

             CONSTANT ASCII_C_U , 43               ; Uppercase C
             CONSTANT ASCII_E_U , 45               ; Uppercase E
             CONSTANT ASCII_S_U , 53               ; Uppercase S
             CONSTANT ASCII_4 , 34                 ; number 4
             CONSTANT ASCII_6 , 36                 ; number 6
             CONSTANT ASCII_0 , 30                 ; number 0

             CONSTANT ASCII_V_U , 56               ; Uppercase V
             CONSTANT ASCII_i , 69                 ; Lowercase i
             CONSTANT ASCII_c , 63                 ; Lowercase c
             CONSTANT ASCII_t , 74                 ; Lowercase t
             CONSTANT ASCII_o , 6F                 ; Lowercase o
             CONSTANT ASCII_r , 72                 ; Lowercase r
             CONSTANT ASCII_s , 73                 ; Lowercase s
             CONSTANT ASCII_p , 70                 ; Lowercase p
             CONSTANT ASCII_n , 6E                 ; Lowercase n
             CONSTANT ASCII_z , 7A                 ; Lowercase z
             CONSTANT ASCII_a , 61                 ; Lowercase a


             CONSTANT ASCII_F_U , 46               ; Uppercase F
             CONSTANT ASCII_u , 75                 ; Lowercase u
             CONSTANT ASCII_l , 6C                 ; Lowercase l
             CONSTANT ASCII_U_U , 55               ; Uppercase U
             CONSTANT ASCII_A_U , 41               ; Uppercase A
             CONSTANT ASCII_R_U , 52               ; Uppercase R
             CONSTANT ASCII_T_U , 54               ; Uppercase T

             CONSTANT ASCII_D_U , 44               ; Uppercase D
             CONSTANT ASCII_e , 65                 ; Lowercase e
             CONSTANT ASCII_1 , 31                 ; number 1
             CONSTANT ASCII_8 , 38                 ; number 8
             CONSTANT ASCII_5 , 35                 ; number 5
             CONSTANT ASCII_2 , 32                 ; number 2

             CONSTANT ASCII_H_U , 48               ; Uppercase H
             CONSTANT ASCII_m , 6D                 ; Lowercase m
             CONSTANT ASCII_w , 77                 ; Lowercase w
             CONSTANT ASCII_P_U , 50               ; Uppercase P
             CONSTANT ASCII_v , 76                 ; Lowercase v

             CONSTANT ASCII_I_U , 49               ; Uppercase I
             CONSTANT ASCII_Y_U , 59               ; Uppercase Y
             CONSTANT ASCII_O_U , 4F               ; Uppercase O
             CONSTANT ASCII_L_U , 4C               ; Uppercase L
             CONSTANT ASCII_W_U , 57               ; Uppercase W


             CONSTANT ASCII_M_U , 4D               ; Uppercase M
             CONSTANT ASCII_y, 79                  ; Lowercase y
             CONSTANT ASCII_f , 66                 ; Lowercase f


             ;================================================================
             ; port aliases
             ;================================================================
             ;____________________________input port definitions_____________________
              
             CONSTANT rd_flag_port, 00       ;status of transmit engine
             CONSTANT rx_data_port, 01       ;received data from receive engine
             CONSTANT wr_addr_reg0, 11       ;Write Address Register 0
             CONSTANT wr_addr_reg1, 12       ;Write Address Register 1
             CONSTANT wr_addr_reg2, 13       ;Write Address Register 2
             CONSTANT wr_data_reg0, 14       ;Write Data Out Register 0
             CONSTANT wr_data_reg1, 15       ;Write Data Out Register 1
             CONSTANT rd_data_reg0, 16       ;Read Data In Register 0
             CONSTANT rd_data_reg1, 17       ;Read Data In Register 0
             CONSTANT mem_read, 18           ;Perform Memory Read
             CONSTANT mem_write, 19          ;Perform Memory Write
             CONSTANT MIB_Status, 1A         ;Read in Memory Interface Status	
             NAMEREG s0, tx_data             ;data to be transmitted by uart
             NAMEREG s2, rx_data             ;data to be received by uart
             NAMEREG s3, char_counter        ;keeps track of how many characters have been
                                             ;transmitted on the current line (for destructive 
                                             ;delete)
             NAMEREG s6, mem_addr_0          ;memory address for Micron Memory
             NAMEREG s7, mem_addr_1          ;memory address for Micron Memory
             NAMEREG s8, mem_addr_2          ;memory address for Micron Memory
             NAMEREG s9, mem_addr_read0      ;transmitting data received from memory
             NAMEREG sA, mem_addr_read1      ;transmitting data received from memory
             NAMEREG sB, mem_addr_read2      ;transmitting data received from memory
             NAMEREG sC, mem_range_selector  ;memory range selector

             ;____________________________output port definitions____________________

             CONSTANT uart_tx_port, 01    ;outputs to register 1 (Write_Strobe[1])

             ;================================================================
             ; Main Program
             ;================================================================
             main_program: 
                    load mem_range_selector, 00     ;zero out mem_range_selector
                    load char_counter, 00           ;zero out the character counter
                    call zero_out_mem               ;zero out memory locations 0x0 - 0x200
                    load mem_addr_0, 00             ;zero out memory address
                    load mem_addr_1, 00             ;zero out memory address
                    load mem_addr_2, 00             ;zero out memory address
                    load mem_addr_read0, 00         ;zero out counter for memory address
                    load mem_addr_read1, 00         ;zero out counter for memory address
                    load mem_addr_read2, 00         ;zero out counter for memory address
                    call display_banner             ;Display the banner at the beginning of the program

             infinite_loop: 
                    call proc_uart ;receive uart characters
                    JUMP infinite_loop


             ;================================================================
             ; routine : check_status_flags
             ;       function : check the status flags of the UART engine and inform the user of
             ;                  any errors that have occurred (parity, overflow)
             ;       Input Register :  s1 - read port flags
             ;       Temp Register :   s5 - check for parity/overflow error
             ;      Output Register : tx_data (s0) - data to be transmitted by uart
             ;================================================================     
             check_status_flags:   
                    load s5, s1                      ;copy status register value into s5
                    and s5, 20                       ;isolate overflow bit
	               sub s5, 20                       ;check to see if Overflow bit is set high
                    jump nz, check_parity_errror     ;if it isn't, check the parity error flag
                    call display_overflow_error      ;display overflow error
                    jump done_error_checking         ;jump to the end of the error checking          
             check_parity_errror :   
                    load s5, s1                      ;copy status register value into s5
                    and s5, 10                       ;isolate parity error bit
	               sub s5, 10                       ;check to see if Parity Error bit is set high
                    jump nz, done_error_checking     ;if it isn't, jump to the end of the error checking
                    call display_pairty_error        ;display overflow error
             done_error_checking:  
                    return                 


             ;================================================================
             ; routine : tx_one_byte
             ;       function : Wait until uart TxRdy bit is set, which signifies that the UART is
             ;                  ready to transmit another byte. Then transmit another byte to
             ;                  the UART.
             ;       Input Register :    s1 - read port flags
             ;      Output Register : tx_data (s0) - data to be transmitted by uart
             ;================================================================     
             tx_one_byte :
                    input s1, rd_flag_port             ;read in status of the Transmit Engine
                    call check_status_flags            ;check for overflow/parity errors
                    and s1, 02                         ;isolate TxRdy bit 
	               sub s1, 02                         ; check to see if TxRdy bit is set high
                    jump nz, tx_one_byte               ;if it isn't, keep on waiting until it is set high
                    output tx_data, uart_tx_port       ;If it is set high, then transmit byte to uart
                    compare tx_data, ASCII_delete      ;check to see if data is a destructive delete
                    jump nz, increment_counter         
                    sub char_counter, 01               ;decrement character counter
                    jump done_updating_counter    
             increment_counter:	
                    add char_counter, 01               ;increment character counter
             done_updating_counter:
                    output char_counter, 05            ;output character counter value
                    return


             ;================================================================
             ; routine: proc_uart
             ;       function : receive UART input character and process it:
             ;                  CR - transmit a new line (CR/LF) and prompt
             ;                  LF - transmit a new line (CR/LF) and prompt
             ;                  * - Dumps the memory that has been written to and displays it
             ;                      on the terminal window.
             ;                  # - Displays the designer's hometown (Porterville, CA)
             ;                  other - echo character
             ;                  every received character is also saved to Micron Memory
             ;       Input Register :   rx_data(s2) - received data, 
             ;                                      s1 - read port flags, 
             ;                                      s4, MIB_Status 
             ;      Output Register : tx_data (s0) - data to be transmitted by uart 
             ;                        mem_addr_read0 - address [7:0] used while dumping memory 
             ;                        mem_addr_read1 - address [15:8] used while dumping memory 
             ;                        mem_addr_read2 - address [23:16] used while dumping memory 
             ;                        sD - used to output a value of 00 to controller
             ;                        mem_addr_0 - current address [7:0] of memory
             ;                        mem_addr_1 - current address [15:8] of memory
             ;                        mem_addr_2 - current address [23:16] of memory
             ;                        rx_data
             ;================================================================
             proc_uart:
                    input rx_data ,  rx_data_port      ;receive data from terminal
             receive_byte:
                    input s1, rd_flag_port             ;read in status of the Receive Engine
                    call check_status_flags            ;check for overflow/parity errors
                    and s1, 01                         ;isolate RxRdy bit 
	               sub s1, 01                         ; check to see if RxRdy bit is set high
                    jump nz, receive_byte              ;if it isn't, keep on waiting until it is set high
	               input rx_data ,  rx_data_port      ;store received data in register
	               compare rx_data, ASCII_pound       ;see if pound sign was received
	               jump nz, compare_cr                ;if not, check for carriage return
	               call transmit_hometown             ;transmit hometown
                    call new_prompt                    ;start a new line
                    jump  uart_receive_byte_done       ;jump to store character in memory
             compare_cr:
	               compare rx_data, ASCII_CR          ;see if carriage return was received
	               jump nz, compare_lf                ;if not, check for line feed
	               call new_prompt                    ;trigger the newline prompt
                    jump   save_cr
             compare_lf:
                    compare rx_data, ASCII_LF          ;see if line feed was received
	               jump nz, compare_asterisk          ;if not, check for asterisk
	               call new_prompt                    ;trigger the newline prompt
                    jump   save_cr
             compare_asterisk:
                    compare rx_data, ASCII_Asterisk    ;see if asterisk was received
                    jump nz, compare_backspace         ;if not, check for backspace
                    load tx_data , ASCII_CR
                    call tx_one_byte                   ; transmit CR (Carriage Return)
                    load tx_data , ASCII_LF
                    call tx_one_byte                   ; transmit LF (Line Feed)
                    load mem_addr_read0, 00            ;zero out counter for memory address read
                    load mem_addr_read1, 00            ;zero out counter for memory address read
                    load mem_addr_read2, 00            ;zero out counter for memory address read
             begin_mem_rd:
	               output mem_addr_read0 , wr_addr_reg0  ;output [7:0] of memory address
	               output mem_addr_read1 , wr_addr_reg1  ;output[15:8] of memory address
	               output mem_addr_read2 , wr_addr_reg2  ;output [23:16] of memory address
                    compare mem_range_selector, 01        ;see up to what memory address to display to
                    jump nz, mem_adr_limit                ;if not, check for backspace
                    compare mem_addr_read0, 02            ;see if values match
                    jump nz, get_next_mem_loc             ;if they don't get byte from memory
                    compare mem_addr_read1, 02            ;see if values match
                    jump nz,  get_next_mem_loc            ;if they don't get byte from memory
	               call new_prompt                       ;trigger the newline prompt
                    compare mem_addr_read2, 00            ;see if values match
                    jump z, uart_receive_byte_done        ;if they do, jump to end of process
                    jump get_next_mem_loc ;
             mem_adr_limit:
                    compare mem_addr_read0, mem_addr_0  ;see if values match
                    jump nz, get_next_mem_loc           ;if they don't get byte from memory
                    compare mem_addr_read1, mem_addr_1  ;see if values match
                    jump nz,  get_next_mem_loc          ;if they don't get byte from memory
	               call new_prompt                     ;trigger the newline prompt
                    compare mem_addr_read2, mem_addr_2  ;see if values match
                    load mem_range_selector, 01         ;zero out mem_range_selecto
                    jump z, uart_receive_byte_done      ;if they do, jump to end of process
             get_next_mem_loc:
                    load sD, 00		                ; fill with zero value
	               output sD, mem_read 	           ;perform memory read
             perform_memory_read:
	               input s4, MIB_Status 	        ;read in Memory Interface status			
                    and s4, 01                       ;isolate RDY bit 
	               sub s4, 01                       ; check to see if RDY bit is set high
                    jump nz,  perform_memory_read    ;if it isn't, keep on waiting until it is set high
	               input tx_data , rd_data_reg0 	   ;Retrieve Read Data In Register 0
                    call tx_one_byte                 ;transmit data from memory
	               input tx_data , rd_data_reg1 	   ;Retrieve Read Data In Register 1
	               call tx_one_byte                 ;transmit data from memory
                    add  mem_addr_read0, 01          ;Increment memory address
                    addcy  mem_addr_read1, 00        ;Incremetn memory address
                    addcy  mem_addr_read2, 00        ;Incremetn memory address
	               jump  begin_mem_rd	             ;get next memory location
             compare_backspace:
                    compare rx_data, ASCII_backspace ;see if backspace was received
                    jump nz,  compare_delete         ;if not, check for destructive delete
	               compare char_counter, 04         ;check to see if there are any bits to delete
                    jump z, done_processing          ;if there are no characters available to delete, do nothing
	               load rx_data, ASCII_delete       ;load with a destructive delete if backspace pressed
                    jump  transmit_received_char     ;delete the character
             compare_delete:
                    compare rx_data, ASCII_delete   ;see if delete was received
                    jump nz, echo_character         ;if not, echo character
	               compare char_counter, 04        ;check to see if there are any bits to delete
                    jump z, done_processing         ;if there are no characters available to delete, do nothing
                    jump transmit_received_char     ;transmit the destructive delete
             echo_character:
                    compare char_counter, AA         ;check to see if counter limit has been reached
                    jump nz, transmit_received_char  ;if it isn't, transmit the character
                    call new_prompt                  ;otherwise start a new line
             transmit_received_char:
                    load tx_data , rx_data 
	               call tx_one_byte                 ; echo received character
	               jump uart_receive_byte_done;
             save_cr :
                    load rx_data, ASCII_CR
	               jump uart_receive_byte_done ;
             save_lf :
                    load rx_data, ASCII_LF
             uart_receive_byte_done :
                    load sD, 00		             ; fill with zero value
	               output mem_addr_0, wr_addr_reg0  ;output [7:0] of memory address
	               output mem_addr_1, wr_addr_reg1  ;output[15:8] of memory address
	               output mem_addr_2, wr_addr_reg2  ;output [23:16] of memory address
	               output rx_data , wr_data_reg0    ;output [7:0] of memory address
	               output sD, wr_data_reg1  	   ;output [15:8] of memory address
	               output sD, mem_write 	        ;perform memory write
             perform_memory_write:
	               input s4, MIB_Status 	      ;read in Memory Interface status			
                    and s4, 01                     ;isolate RDY bit 
	               sub s4, 01                     ; check to see if RDY bit is set high
                    jump nz, perform_memory_write  ;if it isn't, keep on waiting until it is set high
                    compare mem_addr_0, 02         ;see if values match
                    jump nz, increment_mem_addr    ;if they don't get byte from memory
                    compare mem_addr_1, 02         ;see if values match
                    jump nz,  increment_mem_addr   ;if they don't get byte from memory
                    compare mem_addr_2, 00         ;see if values match
                    jump nz,  increment_mem_addr   ;if they don't get byte from memory
                    load mem_addr_0, 00            ;roll over to beginning of memory
                    load mem_addr_1, 00            ;roll over to beginning of memory
                    load mem_addr_2, 00            ;roll over to beginning of memory
	               load mem_range_selector, 01    ;display all contents of memory from now on
                    jump  done_processing          ;jump to end of command		
             increment_mem_addr :
                    add mem_addr_0, 01             ;Increment memory address
                    addcy mem_addr_1, 00           ;Incremetn memory address
                    addcy mem_addr_2, 00           ;Incremetn memory address
                    compare rx_data, ASCII_CR      ;see if asterisk was received
                    jump z, save_lf                ;if not, increment address
             done_processing :
                    return


             ;================================================================
             ; routine: zero_out_mem
             ;       function : writes a value of 0 to all of the memory locations:
             ;================================================================
             zero_out_mem: 
                    load mem_addr_0, 00            	    ;zero out memory address
                    load mem_addr_1, 00            	    ;zero out memory address
                    load mem_addr_2, 00           	    ;zero out memory address
             next_mem_addr:
                    load sD, 00		             ; fill with zero value
	               output mem_addr_0, wr_addr_reg0  ;output [7:0] of memory address
	               output mem_addr_1, wr_addr_reg1  ;output[15:8] of memory address
	               output mem_addr_2, wr_addr_reg2  ;output [23:16] of memory address
	               output sD , wr_data_reg0         ;output [7:0] of memory address
	               output sD, wr_data_reg1  	   ;output [15:8] of memory address
	               output sD, mem_write 	        ;perform memory write
             fill_memory_with_zero:
	               input s4, MIB_Status 	         ;read in Memory Interface status			
                    and s4, 01                        ;isolate RDY bit 
	               sub s4, 01                        ; check to see if RDY bit is set high
                    jump nz,   fill_memory_with_zero  ;if it isn't, keep on waiting until it is set high
                    compare mem_addr_0, 02            ;see if values match
                    jump nz, increase_mem_addr        ;if they don't get byte from memory
                    compare mem_addr_1, 02            ;see if values match
                    jump nz,  increase_mem_addr       ;if they don't get byte from memory
                    compare mem_addr_2, 00            ;see if values match
                    jump nz,  increase_mem_addr       ;if they don't get byte from memory
                    load mem_addr_0, 00               ;roll over to beginning of memory
                    load mem_addr_1, 00               ;roll over to beginning of memory
                    load mem_addr_2, 00               ;roll over to beginning of memory
                    jump   done_zeroing_mem           ;jump to end of command		
             increase_mem_addr :
                    add mem_addr_0, 01               ;Increment memory address
                    addcy mem_addr_1, 00             ;Incremetn memory address
                    addcy mem_addr_2, 00             ;Incremetn memory address
                    jump next_mem_addr  	        ;if not, increment address
             done_zeroing_mem :
	               return


             ;================================================================
             ; routine: display_banner
             ;       function : Transmits the beginning banner onto the terminal screen:
             ; ****************************
             ; *   CECS 460      
             ; *   Victor Espinoza
             ; *   Full UART
             ; *   Due: 11/19/15
             ; ****************************
             ;================================================================
             display_banner: 
                    call  transmit_top_of_banner     ;transmit asterisks
                    call  transmit_class             ;transmit class name
                    call transmit_student_name       ;transmit my name
                    call transmit_project_name       ;transmit project name
                    call transmit_due_date           ;transmit due date
                    call transmit_top_of_banner      ;transmit asterisks
                    load tx_data , ASCII_CR
                    call tx_one_byte                 ; transmit CR (Carriage Return)
                    load tx_data , ASCII_LF
                    call tx_one_byte                 ; transmit LF (Line Feed)
 	               call new_prompt                  ;transmit prompt
	               return


             ;================================================================
             ; routine: new_prompt
             ;       function : Transmits the new prompt (*>) whenever a CR or LF chacacter
             ;                  are received or when the terminal issues a new line command.
             ;================================================================
             new_prompt:
                    load char_counter, 00                      ;zero out the character counter
                    load tx_data , ASCII_CR
                    call tx_one_byte                            ; transmit CR (Carriage Return)
                    load tx_data , ASCII_LF
                    call tx_one_byte                            ; transmit LF (Line Feed)
                    load tx_data , ASCII_Asterisk
                    call tx_one_byte                            ; transmit * (Asterisk)  
                    load tx_data , ASCII_Greater_Than
                    call tx_one_byte                            ; transmit >(Greater Than)	
                    return


             ;================================================================
             ; routine: transmit_top_of_banner
             ;       function : Transmits the top part of the banner (30 asterisks)
             ; ******************************
             ;================================================================
             transmit_top_of_banner:
                    load tx_data , ASCII_CR
                    call tx_one_byte                     ; transmit CR (Carriage Return)
                    load tx_data , ASCII_LF
                    call tx_one_byte                     ; transmit LF (Line Feed)
	               load sF, 1D ;
             asterisk_loop:
	               compare sF, 00                       ; check to see if loop is done transmitting
                    jump z, done_transmitting_asterisks  ; if it is, jump to end of loop
                    load tx_data , ASCII_Asterisk   
	               call tx_one_byte                     ; transmit * (Asterisk)  
                    sub sF, 01                           ; decrement loop counter
                   JUMP asterisk_loop
            done_transmitting_asterisks:
                    return


             ;================================================================
             ; routine: transmit_class
             ;       function : Transmits the class name (CECS 460)
             ;================================================================
             transmit_class:
                    load tx_data , ASCII_CR
                    call tx_one_byte                            ; transmit CR (Carriage Return)
                    load tx_data , ASCII_LF
                    call tx_one_byte                            ; transmit LF (Line Feed)
                    load tx_data , ASCII_Asterisk   
	               call tx_one_byte                            ; transmit * (Asterisk)       
                    load tx_data , ASCII_Space 
                    call tx_one_byte                            ; transmit space
                    load tx_data , ASCII_C_U
                    call tx_one_byte                            ; transmit C
                    load tx_data , ASCII_E_U
                    call tx_one_byte                            ; transmit E
                    load tx_data , ASCII_C_U
                    call tx_one_byte                            ; transmit C
                    load tx_data , ASCII_S_U
                    call tx_one_byte                            ; transmit S
                    load tx_data , ASCII_Space 
                    call tx_one_byte                            ; transmit space
                    load tx_data , ASCII_4
                    call tx_one_byte                            ; transmit 4
                    load tx_data , ASCII_6
                    call tx_one_byte                            ; transmit 6
                    load tx_data , ASCII_0
                    call tx_one_byte                            ; transmit 0
                    return


             ;================================================================
             ; routine: transmit_student_name
             ;       function : Transmits the student name (Victor Espinoza)
             ;================================================================
             transmit_student_name:
                    load tx_data , ASCII_CR
                    call tx_one_byte                            ; transmit CR (Carriage Return)
                    load tx_data , ASCII_LF
                    call tx_one_byte                            ; transmit LF (Line Feed)
                    load tx_data , ASCII_Asterisk   
	               call tx_one_byte                            ; transmit * (Asterisk)       
                    load tx_data , ASCII_Space 
                    call tx_one_byte                            ; transmit space
                    load tx_data ,  ASCII_V_U
                    call tx_one_byte                            ; transmit V
                    load tx_data , ASCII_i
                    call tx_one_byte                            ; transmit i
                    load tx_data , ASCII_c
                    call tx_one_byte                            ; transmit c
                    load tx_data , ASCII_t
                    call tx_one_byte                            ; transmit t
                    load tx_data , ASCII_o
                    call tx_one_byte                            ; transmit o
                    load tx_data , ASCII_r
                    call tx_one_byte                            ; transmit r
                    load tx_data , ASCII_Space 
                    call tx_one_byte                            ; transmit space
                    load tx_data , ASCII_E_U
                    call tx_one_byte                            ; transmit E
                    load tx_data , ASCII_s
                    call tx_one_byte                            ; transmit s
                    load tx_data , ASCII_p
                    call tx_one_byte                            ; transmit p
                    load tx_data , ASCII_i
                    call tx_one_byte                            ; transmit i
                    load tx_data , ASCII_n
                    call tx_one_byte                            ; transmit n
                    load tx_data , ASCII_o
                    call tx_one_byte                            ; transmit o
                    load tx_data , ASCII_z
                    call tx_one_byte                            ; transmit z
                    load tx_data , ASCII_a
                    call tx_one_byte                            ; transmit a
                    return


             ;================================================================
             ; routine: transmit_project_name
             ;       function : Transmits the project name (Memory Interface)
             ;================================================================
             transmit_project_name:
                    load tx_data , ASCII_CR
                    call tx_one_byte                            ; transmit CR (Carriage Return)
                    load tx_data , ASCII_LF
                    call tx_one_byte                            ; transmit LF (Line Feed)
                    load tx_data , ASCII_Asterisk   
	               call tx_one_byte                            ; transmit * (Asterisk)       
                    load tx_data , ASCII_Space 
                    call tx_one_byte                            ; transmit space
                    load tx_data , ASCII_M_U
                    call tx_one_byte                            ; transmit M
                    load tx_data , ASCII_e
                    call tx_one_byte                            ; transmit e
                    load tx_data , ASCII_m
                    call tx_one_byte                            ; transmit m
                    load tx_data , ASCII_o
                    call tx_one_byte                            ; transmit o
                    load tx_data , ASCII_r
                    call tx_one_byte                            ; transmit r
                    load tx_data , ASCII_y
                    call tx_one_byte                            ; transmit y
                    load tx_data , ASCII_Space 
                    call tx_one_byte                            ; transmit space
                    load tx_data , ASCII_I_U
                    call tx_one_byte                            ; transmit I
                    load tx_data , ASCII_n
                    call tx_one_byte                            ; transmit n
                    load tx_data , ASCII_t
                    call tx_one_byte                            ; transmit t
                    load tx_data , ASCII_e
                    call tx_one_byte                            ; transmit e
                    load tx_data , ASCII_r
                    call tx_one_byte                            ; transmit r
                    load tx_data , ASCII_f
                    call tx_one_byte                            ; transmit f
                    load tx_data , ASCII_a
                    call tx_one_byte                            ; transmit a
                    load tx_data , ASCII_c
                    call tx_one_byte                            ; transmit c
                    load tx_data , ASCII_e
                    call tx_one_byte                            ; transmit e
                    return


             ;================================================================
             ; routine: transmit_due_date
             ;       function : Transmits the project due date (Due: 12/10/15)
             ;================================================================
             transmit_due_date:
                    load tx_data , ASCII_CR
                    call tx_one_byte                            ; transmit CR (Carriage Return)
                    load tx_data , ASCII_LF
                    call tx_one_byte                            ; transmit LF (Line Feed)
                    load tx_data , ASCII_Asterisk   
	               call tx_one_byte                            ; transmit * (Asterisk)       
                    load tx_data , ASCII_Space 
                    call tx_one_byte                            ; transmit space
                    load tx_data , ASCII_D_U
                    call tx_one_byte                            ; transmit D
                    load tx_data , ASCII_u
                    call tx_one_byte                            ; transmit u
                    load tx_data , ASCII_e
                    call tx_one_byte                            ; transmit e      
                    load tx_data , ASCII_colon 
                    call tx_one_byte                            ; transmit : (Colon)     
                    load tx_data , ASCII_Space 
                    call tx_one_byte                            ; transmit space
                    load tx_data , ASCII_1
                    call tx_one_byte                            ; transmit 1
                    load tx_data , ASCII_2
                    call tx_one_byte                            ; transmit 2
                    load tx_data , ASCII_bslash
                    call tx_one_byte                            ; transmit / (Backslash)
                    load tx_data , ASCII_l
                    call tx_one_byte                            ; transmit l
                    load tx_data , ASCII_0
                    call tx_one_byte                            ; transmit 0
                    load tx_data , ASCII_bslash
                    call tx_one_byte                            ; transmit / (Backslash)
                    load tx_data , ASCII_l
                    call tx_one_byte                            ; transmit l
                    load tx_data , ASCII_5
                    call tx_one_byte                            ; transmit 5
                    return


             ;================================================================
             ; routine: transmit_hometown
             ;       function : Transmits the student's hometown (Hometown - Porterville, CA)
             ;================================================================
             transmit_hometown:
 	               call new_prompt                             ; transmit prompt 
                    load tx_data , ASCII_Space 
                    call tx_one_byte                            ; transmit space
                    load tx_data , ASCII_H_U
                    call tx_one_byte                            ; transmit H
                    load tx_data , ASCII_o
                    call tx_one_byte                            ; transmit o
                    load tx_data , ASCII_m
                    call tx_one_byte                            ; transmit m
                    load tx_data , ASCII_e
                    call tx_one_byte                            ; transmit e
                    load tx_data , ASCII_t
                    call tx_one_byte                            ; transmit t
                    load tx_data , ASCII_o
                    call tx_one_byte                            ; transmit o
                    load tx_data , ASCII_w
                    call tx_one_byte                            ; transmit w
                    load tx_data , ASCII_n
                    call tx_one_byte                            ; transmit n
                    load tx_data , ASCII_Space 
                    call tx_one_byte                            ; transmit space
                    load tx_data , ASCII_dash
                    call tx_one_byte                            ; transmit dash
                    load tx_data , ASCII_Space 
                    call tx_one_byte                            ; transmit space
                    load tx_data , ASCII_P_U
                    call tx_one_byte                            ; transmit P
                    load tx_data , ASCII_o
                    call tx_one_byte                            ; transmit o
                    load tx_data , ASCII_r
                    call tx_one_byte                            ; transmit r
                    load tx_data , ASCII_t
                    call tx_one_byte                            ; transmit t
                    load tx_data , ASCII_e
                    call tx_one_byte                            ; transmit e
                    load tx_data , ASCII_r
                    call tx_one_byte                            ; transmit r
                    load tx_data , ASCII_v
                    call tx_one_byte                            ; transmit v
                    load tx_data , ASCII_i
                    call tx_one_byte                            ; transmit i
                    load tx_data , ASCII_l
                    call tx_one_byte                            ; transmit l
                    load tx_data , ASCII_l
                    call tx_one_byte                            ; transmit l
                    load tx_data , ASCII_e
                    call tx_one_byte                            ; transmit e
                    load tx_data , ASCII_comma
                    call tx_one_byte                            ; transmit comma
                    load tx_data , ASCII_Space
                    call tx_one_byte                            ; transmit space
                    load tx_data , ASCII_C_U
                    call tx_one_byte                            ; transmit C
                    load tx_data , ASCII_A_U
                    call tx_one_byte                            ; transmit A
                    return


             ;================================================================
             ; routine: display_pairty_error
             ;       function : Informs user of parity error (PARITY ERROR!)
             ;================================================================
             display_pairty_error:
                    load tx_data , ASCII_P_U
                    call tx_one_byte                            ; transmit P
                    load tx_data , ASCII_A_U
                    call tx_one_byte                            ; transmit A
                    load tx_data , ASCII_R_U
                    call tx_one_byte                            ; transmit R
                    load tx_data , ASCII_I_U
                    call tx_one_byte                            ; transmit I
                    load tx_data , ASCII_T_U
                    call tx_one_byte                            ; transmit T
                    load tx_data , ASCII_Y_U
                    call tx_one_byte                            ; transmit Y
                    load tx_data , ASCII_Space
                    call tx_one_byte                            ; transmit space
                    load tx_data , ASCII_E_U
                    call tx_one_byte                            ; transmit E
                    load tx_data , ASCII_R_U
                    call tx_one_byte                            ; transmit R
                    load tx_data , ASCII_R_U
                    call tx_one_byte                            ; transmit R
                    load tx_data , ASCII_O_U
                    call tx_one_byte                            ; transmit O
                    load tx_data , ASCII_R_U
                    call tx_one_byte                            ; transmit R
                    load tx_data , ASCII_exclamation
                    call tx_one_byte                            ; transmit exclamation
 	               call new_prompt                             ; transmit prompt 
                    return


             ;================================================================
             ; routine: display_overflow_error
             ;       function : Informs user of overflow error (OVERFLOW ERROR!)
             ;================================================================
             display_overflow_error:
                    load tx_data , ASCII_O_U
                    call tx_one_byte                            ; transmit O
                    load tx_data , ASCII_V_U
                    call tx_one_byte                            ; transmit V
                    load tx_data , ASCII_E_U
                    call tx_one_byte                            ; transmit E
                    load tx_data , ASCII_R_U
                    call tx_one_byte                            ; transmit R
                    load tx_data , ASCII_F_U
                    call tx_one_byte                            ; transmit F
                    load tx_data , ASCII_L_U
                    call tx_one_byte                            ; transmit L
                    load tx_data , ASCII_O_U
                    call tx_one_byte                            ; transmit O
                    load tx_data , ASCII_W_U
                    call tx_one_byte                            ; transmit W
                    load tx_data , ASCII_Space
                    call tx_one_byte                            ; transmit space
                    load tx_data , ASCII_E_U
                    call tx_one_byte                            ; transmit E
                    load tx_data , ASCII_R_U
                    call tx_one_byte                            ; transmit R
                    load tx_data , ASCII_R_U
                    call tx_one_byte                            ; transmit R
                    load tx_data , ASCII_O_U
                    call tx_one_byte                            ; transmit O
                    load tx_data , ASCII_R_U
                    call tx_one_byte                            ; transmit R
                    load tx_data , ASCII_exclamation
                    call tx_one_byte                            ; transmit exclamation
 	               call new_prompt                             ; transmit prompt 
                    return

Dependencies:    
This project was created using the Xilinx ISE Project Navigator Version: 14.7.
     
Project Verification:  
I verified that my I was my Memory Interface was corrct in two phases. First, I used the provided zip file that showed a model of the memory that we were using. I convinced myself that I was able to fully read and write from memory using the Micron Memory by simulating the provided testbench and making sure that I understood what was happening in the waveforms.   
      
After I verified this, I then made a top-level test bench where I made sure that everything was working correctly by using a simple test bench. In the Memory Interface test bench, I initialized my UART format to transfer at a baud rate of 460800 and have a format of 8O1. I then waited for the appropriate amount of time so that my test-bench would simulate sending my banner message and newline prompt.    
     
After that, I made sure that the receive engine correctly received the data of 0x5D. After I received the start bit from the receive data, I then waited for the bit time up to occur before I changed the Rx input value to the Receive Engine. This was so that I wasn't disturbing the Receive Engine while it was waiting for a bit time to begin collecting data.    
    
After a bit was shifted into the shift register, I then changed the Rx input in a way that would yield me receiving a byte of 0x5D. After all of the data bits were shifted into the shift register, I then loaded this data into a flop and sent the data to the PicoBlaze. As expected, the end result was that 0x5D was loaded into the flop and outputted to the PicoBlaze decoder (which selects what data is going to the In_Port of the PicoBlaze).    
     
I also made sure that my Parity Error logic was correctly detecting a parity error by assigning the wrong parity to my byte of data. The 8O1 format should have an odd parity value of 0, but I gave the parity value a value of 1. As expected, The PARITY_ERR status flag was set high and sent to the PicoBlaze decoder.    
     
I also made sure that all of my signals were changing correctly and that there were no surprises between the different states in my Receive Engine State Machine. After the character was successfully processed, I made sure that my state machine switched over to a Read operation and that the signals stayed consistent long enough for the Write operation to finish executing.    
     
After this, I repeated this process by sending in a value of 0xFF. After I successfully received this value, I then sent yet another value to the PicoBlaze, but this time it was an asterisk (which signals the PicoBlaze to read the data that has been saved to memory. This prompted my  design to enter the Read state in my state machine. I made sure that all of my data signals going into my memory matched up to the expected values, and they did. I also made sure that the IOBUF was working as intended which it was. After observing that everything matched what I was expecting it to, I then concuded that my design was correct. 

Chip Level Test:
For the Chip Level test, I downloaded the project to a Nexys2 board and confirmed the correctness of my design. I did this by opening up a terminal window and then making sure that all of the UART communication data was similar. I then pushed reset on the Nexys2 board and this initialized the system. I then observed the banner being displayed on the terminal window and the command prompt being displayed as well. I then entered different characters on my keyboard and observed them being echoed onto the terminal (or performing the appropriate actions based on the chip requirements).     
      
After verifying the different character inputs and making sure that they accurately processed by the PicoBlaze, I then concluded that everything worked exactly as it was expected to.


