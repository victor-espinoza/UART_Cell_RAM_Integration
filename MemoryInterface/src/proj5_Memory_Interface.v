`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 
// Author:        Victor Espinoza
// Email:         victor.alfonso94@gmail.com
// Project #:     Project  5 - Memory Interface
// Course:        CECS 460
//
// Create Date:   23:38:35 11/25/2015 
//  
// Module Name:   proj5_Memory_Interface 
// File Name:     proj5_Memory_Interface.v
//  
// Description:   This top_level module basically ties in all of the other  
//                modules that I made and connects them together. It takes the 
//                primary inputs of clk, rstb, bit8, parity_en, odd_n_even,
//                baud_val[3:0], and Rx. This project has one output called tx. 
//                This tx output goes to P9, which is a port that connects to 
//                the RS-232 serial connector that connects to a UART terminal 
//                on a computer via a serial cable. The clk input comes from the 
//                clock on the Nexys 2 board, while the rstb input is a push
//                button. The bit8, parity_en, odd_n_even, and baud_val[3:0] 
//                inputs are all switches on the Nexys 2 board. The rstb input
//                is synchronized and distributed to all of the other modules in
//                this project. This synchronized rstb value (rstbs) is also
//                negated and then used as the reset input to the PicoBlaze
//                processor. Inside of the PicoBlaze, I display my banner and
//                my newline prompt and I then wait for a byte of data to be
//                received by checking the RxRdy bit in the status register.
//                Once the RxRdy bit is set, I then know that the Receive Engine
//                has received a byte and is ready to receive another byte. I
//                then load the received byte into a flop and send that data to
//                a decoder (which uses read[0] to determine whether I am 
//                reading in the status of the UART engine or reading in the
//                received data. I then output the received byte of data to the 
//                PicoBlaze. On the second clk cycle of the output instruction,
//                I decode the Write_Strobe value by using the Write_Strobe and
//                the Port_Id port of the picoblaze. I then put these values
//                into my write[255:0] register (because there are 2^8 registers
//                that can be written to the PicoBlaze: 00 - FF). For my design,
//                I output my values to the Port_ID of 01, so I needed to pass
//                my write[1] value into my transmit engine to let it know
//                that it should load in the appropriate data bits (Out_Port)
//                into the shift register. I use the same logic flow for the 
//                Read_Strobe (I have a read[255:0] register and I use read[0]
//                and read[1] in my design. read[0] is used to read in the 
//                status flags to the PicoBlaze while read[1] is used to 
//                notify the Receive Engine that it is going to receive the 
//                data coming from the terminal window. The baud_val[3:0] bits 
//                determine the baud rate at which the Program is going to be 
//                receiving and transmitting characters. The bit8, parity_en and 
//                odd_n_even inputs determine the format of the data bits being 
//                received and transmitted (7N1, 7E1, 7O1, 8N1, 8O1, and 8E1). 
//                All of these inputs (minus the Rx input) go into my Transmit 
//                Engine where I update my shift register and baud
//                counter accordingly. These inputs (including the Rx input)
//                also go into my Receive Engine where I shift in the data one
//                bit at a time. Once I establish the desired baud rate
//                and data format, I then open a terminal window under the same
//                baud rate and data format and then I am ready to start 
//                receiving/transmitting characters to the UART terminal. In 
//                the PicoBlaze I display my banner and then I transmit my
//                prompt (*>). I then wait to receive a character from the
//                terminal, where I then process the data and either 
//                issue a newline command and a new prompt (carriage return
//                or newline characters), display my hometown (asterisk
//                character), delete the previous character (delete/
//                backspace character), or echo the character. I also added my
//                Seven-Segment display to this lab so that I can display
//                my character counter value on the upper 2 Seven-Segment 
//                displays and the data being received by the Receive Engine
//                in the lower 2 Seven-Segment displays. This helped me out 
//                tremendously in verifying that I was receiving the proper 
//                character data. Whenever a character is received from the 
//                terminal, I also save it to memory. To achieve this I
//                need three registers to retrive the whole memory 
//                address (because the PicoBlaze only outputs 8-bits of 
//                data at a time and the memory address is 23 bits wide). 
//                Each register is updated with the out_port value of the 
//                PicoBlaze only when its appropriate write_strobe data is set 
//                high. These three registers are then concatenated and go into 
//                an OBUF, where they are outputted and mapped to the address 
//                pin locations for the Micron memory. I also need two additional 
//                8-bit registers to hold in the input data that is going to be 
//                written into memory (the memory data is 16-bits wide which is 
//                why I need two 8-bit registers). Like the address registers, 
//                each write data out register is  only updated when its 
//                appropriate write_strobe number is set high. Finally, I have 
//                two additional 8-bit registers (read data in registers) that 
//                hold the data values that are outputted by the specific memory 
//                address. These two registers are only updated once a Read 
//                operation from memory has successfully been completed. Both of 
//                the write data out registers are concatenated and go into the 
//                input of an IOBUF while the a 16-bit wire called rdDataIn goes 
//                to the output of the IOBUF. The read data in registers are 
//                updated with the correct values located inside of the rdDataIn 
//                16-bit wire once a Read operation has finished executing in 
//                the Memory.
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module proj5_Memory_Interface(clk, rstb, bit8, parity_en, odd_n_even, baud_val, 
 Rx, tx, a, b, c, d, e, f, g, a3, a2, a1, a0, LED, memWriteAddr, memoryData,
 MT_CLK, MT_ADV, MT_UB, MT_LB, MT_OE, MT_WE, MT_CE, MT_CRE);

   //Input and Output Declarations
   input       clk, rstb, bit8, parity_en, odd_n_even, Rx;
   input [3:0] baud_val;
   
	//memory address for micron memory
   output        MT_CLK, MT_ADV, MT_UB, MT_LB, MT_OE; 
   output        MT_WE, MT_CE, MT_CRE;
   wire          MT_CLK, MT_ADV, MT_UB, MT_LB, MT_OE; 
   wire          MT_WE, MT_CE, MT_CRE;
   output [22:0] memWriteAddr;
   wire   [22:0] memWriteAddr;
   
	//7-Segment Display info and tx output from transmit engine
   output       tx, a, b, c, d, e, f, g, a3, a2, a1, a0;
   wire         tx, a, b, c, d, e, f, g, a3, a2, a1, a0;
   output [7:0] LED;
   wire   [7:0] LED;
	
   //output data coming from micron memory
   inout  [15:0] memoryData;
   wire   [15:0] memoryData;

   //Local Declarations
   //wire rstsb, TxSet, TxRst, Done, sSet, sRst, ld, btu, shift;
   wire         rstsb, tx_out, TxRdy, OE;
   wire [7:0]   in_port, RxData;
   wire [2:0]   RxStatus;
   wire         interrupt, read_strobe, write_strobe, interrupt_ack;
   wire [7:0]   out_port;
   wire [7:0]   port_id;
   wire [15:0]  rdDataIn;
   wire         memWrite, memRead;
   wire [7:0]   finalMemPicoData, memStatus;
   reg  [255:0] write, read;
   
	//register variables
   reg  [7:0] charCounter, wrAddrReg0, wrAddrReg1, wrAddrReg2, memPicoData;
   reg  [7:0] wrDataOutReg0, wrDataOutReg1, rdDataInReg0, rdDataInReg1;
   
   //state machine variables
   reg       RDY, ChipEnable, OutputEnable, WriteEnable, nOE, nReadLd, ReadLd;
   reg       nRDY, nChipEnable, nOutputEnable, nWriteEnable;
   reg [1:0] present_state, next_state;
   reg [2:0] sm_clk_counter;
   wire      sm_clk_pulse;
   
      //symbolic state declaration
   localparam [2:0]   
      idle           = 2'b00,
      performRead    = 2'b01,
      performWrite   = 2'b10;
      
   assign LED = {1'b0, bit8, parity_en, odd_n_even, baud_val[3:0]};
   assign tx  = tx_out;
   
   
   //synch_reset module instantiation
   //module synch_reset(clk, rstb, rstsb);
   synch_reset Synchronizer_Circuit(
      .clk(clk), 
      .rstb(rstb),
      .rstsb(rstsb)
   );
   
   
   //instantiate the RxStatusblaze
   embedded_kcpsm3 ekcp3(
      .port_id(port_id),
      .write_strobe(write_strobe),
      .read_strobe(read_strobe),
      .out_port(out_port),
      .in_port(in_port),
      .interrupt(interrupt),
      .interrupt_ack(interrupt_ack),
      .reset(!rstsb),
      .clk(clk)
   );
   
   //********************************************************************************
   //Chip Select for Transmit Engine, Receive Engine, and Memory Interface
      //The write_strobe and read_strobe memory map is as follows:
      //read_strobe[0x00]    ;read in status of transmit engine
      //read_strobe[0x01]   ;read in received data from receive engine
      //write_strobe[0x11] ;output Write Address Register 0
      //write_strobe[0x12] ;Write Address Register 1
      //write_strobe[0x13] ;Write Address Register 2
      //write_strobe[0x14] ;Write Data Out Register 0
      //write_strobe[0x15] ;Write Data Out Register 1
      //read_strobe[0x16]  ;Read Data In Register 0
      //read_strobe[0x17] ;Read Data In Register 0
      //write_strobe[0x18]    ;Perform Memory Read
      //write_strobe[0x19]   ;Perform Memory Write
      //read_strobe[0x1A]   ;Read in Memory Interface Status   
   
   assign interrupt = 0;
   //write strobe and read strobe decode   
   always@(*)begin
      write[255:0]   = 256'b0;
      write[port_id] = write_strobe;
      read[255:0]    = 256'b0;
      read[port_id]  = read_strobe;
   end   
   
   assign memRead  = write[24];
   assign memWrite = write[25];
   //********************************************************************************
   
   //transmit_engine module instantiation   
   //module transmit_engine(clk, rstb, bit8, parity_en, odd_n_even, baud_val, 
   //txWrite, inData, tx, TxRdy);
   transmit_engine transmit(
      .clk(clk), 
      .rstb(rstsb),
      .bit8(bit8),
      .parity_en(parity_en),
      .odd_n_even(odd_n_even),
      .baud_val(baud_val),
      .txWrite(write[1]),
      .inData(out_port),
      .tx(tx_out),
      .TxRdy(TxRdy)
   );   
   
   //module receive_engine(clk, rstb, bit8, parity_en, odd_n_even, baud_val, READ, 
   // Rx, status, data);
   receive_engine receive(
      .clk(clk), 
      .rstb(rstsb),
      .bit8(bit8),
      .parity_en(parity_en),
      .odd_n_even(odd_n_even),
      .baud_val(baud_val),
      .READ(read[1:0]),
      .Rx(Rx),
      .status(RxStatus),
      .data(RxData)
   );   
   
//********************************************************************************
   //Display Value Transmitted to Transmit Engine
   always@(posedge clk, negedge rstsb)
      if(!rstsb)
         charCounter <= 8'b00;
      else if (write[5])
         charCounter <= out_port;
      else
         charCounter <= charCounter;
//********************************************************************************
   
   //Display Controller instantiation
   //module display_controller(clk, rstb, annode3, annode2, annode1, annode0,  
   // a3, a2, a1, a0, a, b, c, d, e, f, g);
   display_controller Display_Controller(
      .clk(clk),
      .rstb(rstsb),
      .annode3(charCounter[7:4]),
      .annode2(charCounter[3:0]),
      .annode1(RxData[7:4]),
      .annode0(RxData[3:0]),
      .a3(a3),
      .a2(a2),
      .a1(a1),
      .a0(a0),
      .a(a),
      .b(b),
      .c(c),
      .d(d),
      .e(e),
      .f(f),
      .g(g)   
   );
   
   //********************************************************************************
   //Write Address Registers
   
   //Write Address Register 0
   always@(posedge clk, negedge rstsb)
      if(!rstsb)
         wrAddrReg0 <= 8'b00;
      else if (write[17])
         wrAddrReg0 <= out_port;
      else
         wrAddrReg0 <= wrAddrReg0;
         
   //Write Address Register 1         
   always@(posedge clk, negedge rstsb)
      if(!rstsb)
         wrAddrReg1 <= 8'b00;
      else if (write[18])
         wrAddrReg1 <= out_port;
      else
         wrAddrReg1 <= wrAddrReg1;
         
   //Write Address Register 2
   always@(posedge clk, negedge rstsb)
      if(!rstsb)
         wrAddrReg2 <= 8'b00;
      else if (write[19])
         wrAddrReg2 <= out_port;
      else
         wrAddrReg2 <= wrAddrReg2;
   //********************************************************************************
   
   
   //********************************************************************************
   //Write Data Out Registers
   
   //Write Data Out Register 0
   always@(posedge clk, negedge rstsb)
      if(!rstsb)
         wrDataOutReg0 <= 8'b00;
      else if (write[20])
         wrDataOutReg0 <= out_port;
      else
         wrDataOutReg0 <= wrDataOutReg0;
         
   //Write Data Out Register 1
   always@(posedge clk, negedge rstsb)
      if(!rstsb)
         wrDataOutReg1 <= 8'b00;
      else if (write[21])
         wrDataOutReg1 <= out_port;
      else
         wrDataOutReg1 <= wrDataOutReg1;
   //********************************************************************************
   
   
   //********************************************************************************
   //Read Data In Registers
   
   //Read Data In Register 0
   always@(posedge clk, negedge rstsb)
      if(!rstsb)
         rdDataInReg0 <= 8'b00;
      else if (ReadLd)
         rdDataInReg0 <= rdDataIn[7:0];
      else
         rdDataInReg0 <= rdDataInReg0;

   //Read Data In Register 1
   always@(posedge clk, negedge rstsb)
      if(!rstsb)
         rdDataInReg1 <= 8'b00;
      else if (ReadLd)
         rdDataInReg1 <= rdDataIn[15:8];
      else
         rdDataInReg1 <= rdDataInReg1;
   //********************************************************************************


   //********************************************************************************
   //Assign the appropriate data going into the PicoBlaze Microcontroller
   always @(*) 
      case ({read[26], read[23], read[22]})
         3'b001:  memPicoData = rdDataInReg0; //Read Data In Register 0
         3'b010:  memPicoData = rdDataInReg1; //Read Data In Register 1
         3'b100:  memPicoData = memStatus; //Read Memory Status
         default: memPicoData = 8'h00; //no bits
      endcase
      
   assign finalMemPicoData = memPicoData;
   assign memStatus        = {7'b0, RDY};
   
   assign in_port = (read[0]) ? {2'b0, RxStatus[2:1], 2'b0, TxRdy, RxStatus[0]} : 
    ((read[1]) ? RxData : finalMemPicoData);
   //********************************************************************************
   
   
   //********************************************************************************
   //IOBUF and OBUF Instantiations
   assign OE = nOE;
   IOBUF iob[15:0](
      .T(OE),
      .I({wrDataOutReg1, wrDataOutReg0}),
      .O(rdDataIn),
      .IO(memoryData)
   );
   
   OBUF ob[22:0](
      .I({wrAddrReg2[6:0], wrAddrReg1, wrAddrReg0}),
      .O(memWriteAddr)
   );
   
   //********************************************************************************
   
   
   //********************************************************************************
   //Finite State Machine for RX system
   //The Memory Interface Block needs a Finite State Machine so that we can generate
   //the appropriate signals to send to the CellRam module for a read and write
   //operation to memory. The signals being generated are the chip enable, 
   //output enable, and the write enable. For a write operation, the chip enable will
   //be set low and so will the write enable. Since the write enable has precedence
   //over the output enable, I do not care what the output enable is so I set it high
   //for the entirety of the write operation. For the read operation, I set the write
   //enable high and set the chip enable and output enable variables low for the 
   //entirety of the read operation. Both the read and write operations take 
   //approximately 85ns to finish, so I hold the appropriate values stable for 5 
   //clock cycles (100ns) so that the data has enough time to finish. After those 
   //clock cycles are up, I then return the state machine to the idle state where
   //it resets the signals to all be high and waits for the next operation to occur.
    
   always@(posedge clk, negedge rstsb)begin
      if(!rstsb)begin
         present_state  <= idle;
         //Reset outputs
         {RDY, ChipEnable, OutputEnable, WriteEnable,ReadLd} <= 5'b11110; 

      end
      else begin
         present_state  <= next_state; //update the present state
         //update present outputs
         {RDY, ChipEnable, OutputEnable, WriteEnable, ReadLd} <= 
          {nRDY, nChipEnable, nOutputEnable, nWriteEnable, nReadLd}; 
          
      end
   end
   
   always@(*)begin
      next_state = present_state; //default state: the same
      //wait for read or write
      {nRDY, nChipEnable, nOutputEnable, nWriteEnable, nOE, nReadLd}  = 6'b111110; 
      case(present_state)
         idle : begin
            //update next states
            {nRDY, nChipEnable, nOutputEnable, nWriteEnable, nOE, nReadLd}  
             = 6'b111110; 
            next_state = (memRead) ? performRead : ((memWrite) ? 
             performWrite : idle);
         end
         performRead : begin
            //update next states
            {nRDY, nChipEnable, nOutputEnable, nWriteEnable, nOE}  = 5'b00011;
            next_state = (sm_clk_pulse) ? idle : performRead;   
            nReadLd    = (sm_clk_pulse) ? 1'b1 : 1'b0;
         end
         performWrite : begin
            //update next states
            {nRDY, nChipEnable, nOutputEnable, nWriteEnable, nReadLd}  = 5'b00100; 
            next_state = (sm_clk_pulse) ? idle : performWrite;      
            nOE        = (WriteEnable);
         end
         default : begin
            //update next states
            {nRDY, nChipEnable, nOutputEnable, nWriteEnable, nOE, nReadLd}  
             = 6'b111100;
            next_state = idle;
         end   
      endcase
   end
   
   //counter logic for counting for 5 clocks.
   assign sm_clk_pulse = (sm_clk_counter == 4);
   always@(posedge clk, negedge rstsb)
      if(!rstsb)
         sm_clk_counter <= 3'b0; //reset counter
      else if (sm_clk_pulse)
         sm_clk_counter <= 3'b0; //reset counter if pulse was achieved
      else if (!ChipEnable)
         sm_clk_counter <= sm_clk_counter + 1; //increment counter
      else
         sm_clk_counter <= 3'b0; //reset counter if in idle state

//********************************************************************************   


//********************************************************************************
   //Assign outputs to micron memory
   assign   MT_CLK = 1'b0; //always low according to project specs
   assign   MT_ADV = 1'b0; //always low according to project specs
   assign   MT_UB  = 1'b0;  //always low according to project specs
   assign   MT_LB  = 1'b0;  //always low according to project specs
   assign   MT_OE  = OutputEnable; 
   assign   MT_WE  = WriteEnable;
   assign   MT_CE  = ChipEnable;
   assign   MT_CRE = 1'b0;
//********************************************************************************
   
endmodule
