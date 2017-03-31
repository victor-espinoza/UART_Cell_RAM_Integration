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
// Module Name:   proj_5_Memory_Interface_tb  
// File Name:     proj_5_Memory_Interface_tb.v
//  
// Description:   I verified that my I was my Memory Interface was corrct in two 
//                phases. First, I used the provided zip file that showed a model 
//                of the memory that we were using. I convinced myself that I was 
//                able to fully read and write from memory using the Micron Memory 
//                by simulating the provided testbench and making sure that I 
//                understood what was happening in the waveforms. After I verified 
//                this, I then made a top-level test bench where I made sure that 
//                everything was working correctly by using a simple test bench. 
//                In the Memory Interface test bench, I initialized my UART format 
//                to transfer at a baud rate of 460800 and have a format of 8O1. 
//                I then waited for the appropriate amount of time so that my 
//                test-bench would simulate sending my banner message and newline 
//                prompt. After that, I made sure that the receive engine correctly 
//                received the data of 0x5D. After I received the start bit from 
//                the receive data, I then waited for the bit time up to occur 
//                before I changed the Rx input value to the Receive Engine. This 
//                was so that I wasn't disturbing the Receive Engine while it was 
//                waiting for a bit time to begin collecting data. After a bit was 
//                shifted into the shift register, I then changed the Rx input in 
//                a way that would yield me receiving a byte of 0x5D. After all of 
//                the data bits were shifted into the shift register, I then loaded 
//                this data into a flop and sent the data to the PicoBlaze. As 
//                expected, the end result was that 0x5D was loaded into the flop 
//                and outputted to the PicoBlaze decoder (which selects what data is 
//                going to the In_Port of the PicoBlaze). I also made sure that my 
//                Parity Error logic was correctly detecting a parity error by 
//                assigning the wrong parity to my byte of data. The 8O1 format 
//                should have an odd parity value of 0, but I gave the parity value 
//                a value of 1. As expected, The PARITY_ERR status flag was set high 
//                and sent to the PicoBlaze decoder. I also made sure that all of my 
//                signals were changing correctly and that there were no surprises 
//                between the different states in my Receive Engine State Machine. 
//                After the character was successfully processed, I made sure that 
//                my state machine switched over to a Read operation and that the 
//                signals stayed consistent long enough for the Write operation to 
//                finish executing. After this, I repeated this process by sending 
//                in a value of 0xFF. After I successfully received this value, I 
//                then sent yet another value to the PicoBlaze, but this time it 
//                was an asterisk (which signals the PicoBlaze to read the data that 
//                has been saved to memory. This prompted my  design to enter the  
//                Read state in my state machine. I made sure that all of my data 
//                signals going into my memory matched up to the expected values, and
//                they did. I also made sure that the IOBUF was working as intended 
//                which it was. After observing that everything matched what I was  
//                expecting it to, I then concuded that my design was correct. 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module proj_5_Memory_Interface_tb;
//Inputs
   reg         clk;
   reg         rstb;
   reg         bit8;
   reg         parity_en;
   reg         odd_n_even;
   reg [3:0]   baud_val;
   reg         Rx;
   wire        Tx;
   wire [22:0] memWriteAddr;
   wire [15:0] memoryData;
   wire        MT_CLK, MT_ADV, MT_UB, MT_LB, MT_OE, MT_WE, MT_CE, MT_CRE;
   
   //Instantiate the Unit Under Test (UUT)
   //module proj5_Memory_Interface(clk, rstb, bit8, parity_en, odd_n_even, baud_val, 
   //Rx, tx, a, b, c, d, e, f, g, a3, a2, a1, a0, LED, memWriteAddr, memoryData,
   //MT_CLK, MT_ADV, MT_UB, MT_LB, MT_OE, MT_WE, MT_CE, MT_CRE);
   proj5_Memory_Interface uut(
      .clk(clk), 
      .rstb(rstb), 
      .bit8(bit8),
      .parity_en(parity_en),
      .odd_n_even(odd_n_even),
      .baud_val(baud_val),
      .Rx(Rx),
      .tx(Tx),
      .memWriteAddr(memWriteAddr),
      .memoryData(memoryData),
      .MT_CLK(MT_CLK),
      .MT_ADV(MT_ADV),
      .MT_UB(MT_UB),
      .MT_LB(MT_LB),
      .MT_OE(MT_OE),
      .MT_WE(MT_WE),
      .MT_CE(MT_CE),
      .MT_CRE(MT_CRE)   
   );
   //vary the clk signal every 10ns to mimick a 
   //period of 20ns (which is the period of our boards)
   always #10 clk = ~clk;
   //always #20 tx_Write = ~tx_Write;
   

   initial begin

      //Initialize Inputs
      clk        = 0;
      rstb       = 1; //low active reset
      //8O1 (300 Baud) Transmitting 0x65 = 110_0101
      bit8       = 1; //8 bits of data
      parity_en  = 1; //parity enabled
      odd_n_even = 1; //odd parity
      baud_val   = 4'hA; //baud = 460800 BAUD Rate
      Rx         = 1'b1; //data to be transmitted   
      
      //Wait 100 ns for global reset to finish
      #100  @(posedge clk) rstb = 0; // have reset become unactive.
      
      #3500000 @(posedge clk)
            Rx = 1'b0; //data to be transmitted
      //Receive 0x5D
      
      //d0
      wait (uut.receive.btu == 1);
      wait (uut.receive.btu == 0);
      Rx = 1'b1;
      
      //d1
      wait (uut.receive.btu == 1);
      wait (uut.receive.btu == 0);
      Rx = 1'b0;

      //d2
      wait (uut.receive.btu == 1);
      wait (uut.receive.btu == 0);
      Rx = 1'b1;

      //d3
      wait (uut.receive.btu == 1);
      wait (uut.receive.btu == 0);
      Rx = 1'b1;
      
      //d4
      wait (uut.receive.btu == 1);
      wait (uut.receive.btu == 0);
      Rx = 1'b1;

      //d5
      wait (uut.receive.btu == 1);
      wait (uut.receive.btu == 0);
      Rx = 1'b0;
      
      //d6
      wait (uut.receive.btu == 1);
      wait (uut.receive.btu == 0);
      Rx = 1'b1;

      //d7
      wait (uut.receive.btu == 1);
      wait (uut.receive.btu == 0);
      Rx = 1'b0;
      

      //parity/stop
      wait (uut.receive.btu == 1);
      wait (uut.receive.btu == 0);
      Rx = 1'b1;


      wait (uut.receive.done == 1);  //wait until byte is done being received.
      wait (uut.receive.done == 0);
      
      #500000 @(posedge clk)
      
      Rx = 1'b0; //data to be transmitted
      //Receive 0xFF
      
      //d0
      wait (uut.receive.btu == 1);
      wait (uut.receive.btu == 0);
      Rx = 1'b1;

      wait (uut.receive.done == 1);  //wait until byte is done being received.
      wait (uut.receive.done == 0);   
      
      #500000 @(posedge clk)            
      Rx = 1'b0; //data to be transmitted
      //Receive 0x2A = 0010 1010
      
      //d0
      wait (uut.receive.btu == 1);
      wait (uut.receive.btu == 0);
      Rx = 1'b0;
      
      //d0
      wait (uut.receive.btu == 1);
      wait (uut.receive.btu == 0);
      Rx = 1'b0;
      
      //d1
      wait (uut.receive.btu == 1);
      wait (uut.receive.btu == 0);
      Rx = 1'b1;

      //d2
      wait (uut.receive.btu == 1);
      wait (uut.receive.btu == 0);
      Rx = 1'b0;

      //d3
      wait (uut.receive.btu == 1);
      wait (uut.receive.btu == 0);
      Rx = 1'b1;
      
      //d4
      wait (uut.receive.btu == 1);
      wait (uut.receive.btu == 0);
      Rx = 1'b0;

      //d5
      wait (uut.receive.btu == 1);
      wait (uut.receive.btu == 0);
      Rx = 1'b1;
      
      //d6
      wait (uut.receive.btu == 1);
      wait (uut.receive.btu == 0);
      Rx = 1'b0;

      //d7
      wait (uut.receive.btu == 1);
      wait (uut.receive.btu == 0);
      Rx = 1'b0;
      

      //parity/stop
      wait (uut.receive.btu == 1);
      wait (uut.receive.btu == 0);
      Rx = 1'b1;


      wait (uut.receive.done == 1);  //wait until byte is done being received.
      wait (uut.receive.done == 0);
      
      #1000000      
      $stop;
   end

endmodule
