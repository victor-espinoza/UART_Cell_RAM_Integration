# Lab_5_Cell_RAM
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


