////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: proj5_Memory_Interface_synthesis.v
// /___/   /\     Timestamp: Mon Dec 07 23:36:06 2015
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim proj5_Memory_Interface.ngc proj5_Memory_Interface_synthesis.v 
// Device	: xc3s500e-4-fg320
// Input file	: proj5_Memory_Interface.ngc
// Output file	: E:\CECS 460\Labs\Lab 5 - Cell RAM\MemoryInterface\netgen\synthesis\proj5_Memory_Interface_synthesis.v
// # of Modules	: 1
// Design Name	: proj5_Memory_Interface
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module proj5_Memory_Interface (
  clk, MT_CE, a, b, MT_CLK, c, d, e, f, g, MT_LB, rstb, parity_en, MT_OE, MT_CRE, Rx, MT_UB, tx, MT_WAIT, bit8, MT_WE, odd_n_even, a0, MT_ADV, a1, a2
, a3, memoryData, memWriteAddr, LED, baud_val
);
  input clk;
  output MT_CE;
  output a;
  output b;
  output MT_CLK;
  output c;
  output d;
  output e;
  output f;
  output g;
  output MT_LB;
  input rstb;
  input parity_en;
  output MT_OE;
  output MT_CRE;
  input Rx;
  output MT_UB;
  output tx;
  output MT_WAIT;
  input bit8;
  output MT_WE;
  input odd_n_even;
  output a0;
  output MT_ADV;
  output a1;
  output a2;
  output a3;
  inout [15 : 0] memoryData;
  output [23 : 0] memWriteAddr;
  output [7 : 0] LED;
  input [3 : 0] baud_val;
  wire ChipEnable_0;
  wire \Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ;
  wire \Display_Controller/LED_contr/present_state_FSM_FFd1_2 ;
  wire \Display_Controller/LED_contr/present_state_FSM_FFd2_3 ;
  wire \Display_Controller/LED_contr/present_state_FSM_FFd3_4 ;
  wire \Display_Controller/LED_contr/present_state_FSM_FFd4_5 ;
  wire \Display_Controller/Mcompar_count_cmp_ge0000_cy<0>_rt_7 ;
  wire \Display_Controller/Mcompar_count_cmp_ge0000_cy<2>_rt_10 ;
  wire \Display_Controller/Mcompar_count_cmp_ge0000_lut[1] ;
  wire \Display_Controller/Mcompar_count_cmp_ge0000_lut[3] ;
  wire \Display_Controller/Mcompar_count_cmp_ge0000_lut[4] ;
  wire \Display_Controller/Mcompar_count_cmp_ge0000_lut[5] ;
  wire \Display_Controller/Mcompar_count_cmp_ge0000_lut[6] ;
  wire \Display_Controller/Mcompar_count_cmp_ge0000_lut[7] ;
  wire \Display_Controller/Mcount_count ;
  wire \Display_Controller/Mcount_count1 ;
  wire \Display_Controller/Mcount_count10 ;
  wire \Display_Controller/Mcount_count11 ;
  wire \Display_Controller/Mcount_count12 ;
  wire \Display_Controller/Mcount_count13 ;
  wire \Display_Controller/Mcount_count14 ;
  wire \Display_Controller/Mcount_count15 ;
  wire \Display_Controller/Mcount_count2 ;
  wire \Display_Controller/Mcount_count3 ;
  wire \Display_Controller/Mcount_count4 ;
  wire \Display_Controller/Mcount_count5 ;
  wire \Display_Controller/Mcount_count6 ;
  wire \Display_Controller/Mcount_count7 ;
  wire \Display_Controller/Mcount_count8 ;
  wire \Display_Controller/Mcount_count9 ;
  wire \Display_Controller/Mmux_ad_out_3_68 ;
  wire \Display_Controller/Mmux_ad_out_31_69 ;
  wire \Display_Controller/Mmux_ad_out_32_70 ;
  wire \Display_Controller/Mmux_ad_out_33_71 ;
  wire \Display_Controller/Mmux_ad_out_4_72 ;
  wire \Display_Controller/Mmux_ad_out_41_73 ;
  wire \Display_Controller/Mmux_ad_out_42_74 ;
  wire \Display_Controller/Mmux_ad_out_43_75 ;
  wire \Display_Controller/clk_250_80 ;
  wire \Display_Controller/clk_250_not0001 ;
  wire \Display_Controller/count_cmp_ge0000 ;
  wire \Display_Controller/count_cmp_ge0000_inv ;
  wire LED_0_OBUF_109;
  wire LED_1_OBUF_110;
  wire LED_2_OBUF_111;
  wire LED_3_OBUF_112;
  wire LED_4_OBUF_113;
  wire LED_5_OBUF_114;
  wire LED_6_OBUF_115;
  wire LED_7_OBUF_116;
  wire N1;
  wire N10;
  wire N104;
  wire N105;
  wire N110;
  wire N111;
  wire N1111;
  wire N113;
  wire N114;
  wire N12;
  wire N132;
  wire N133;
  wire N14;
  wire N141;
  wire N142;
  wire N148;
  wire N15;
  wire N150;
  wire N152;
  wire N154;
  wire N156;
  wire N158;
  wire N160;
  wire N162;
  wire N164;
  wire N168;
  wire N174;
  wire N176;
  wire N178;
  wire N179;
  wire N180;
  wire N181;
  wire N182;
  wire N183;
  wire N184;
  wire N185;
  wire N186;
  wire N187;
  wire N188;
  wire N189;
  wire N190;
  wire N191;
  wire N192;
  wire N193;
  wire N194;
  wire N195;
  wire N196;
  wire N197;
  wire N198;
  wire N199;
  wire N20;
  wire N33;
  wire N37;
  wire N39;
  wire N41;
  wire N51;
  wire N61;
  wire N76;
  wire N78;
  wire N80;
  wire N85;
  wire N93;
  wire OutputEnable_188;
  wire ReadLd_189;
  wire Rx_IBUF_191;
  wire \Synchronizer_Circuit/rst_reg_delay_192 ;
  wire \Synchronizer_Circuit/rst_synch_out_193 ;
  wire WriteEnable_194;
  wire a0_OBUF_197;
  wire a1_OBUF_199;
  wire a2_OBUF_201;
  wire a3_OBUF_203;
  wire a_OBUF_204;
  wire b_OBUF_206;
  wire c_OBUF_213;
  wire clk_BUFGP_223;
  wire d_OBUF_225;
  wire e_OBUF_227;
  wire \ekcp3/processor/active_interrupt ;
  wire \ekcp3/processor/arith_carry ;
  wire \ekcp3/processor/arith_carry_in ;
  wire \ekcp3/processor/arith_carry_out ;
  wire \ekcp3/processor/call_type ;
  wire \ekcp3/processor/carry_fast_route ;
  wire \ekcp3/processor/carry_flag ;
  wire \ekcp3/processor/clean_int ;
  wire \ekcp3/processor/condition_met ;
  wire \ekcp3/processor/flag_enable ;
  wire \ekcp3/processor/flag_type ;
  wire \ekcp3/processor/flag_write ;
  wire \ekcp3/processor/high_parity ;
  wire \ekcp3/processor/high_shift_in ;
  wire \ekcp3/processor/high_zero ;
  wire \ekcp3/processor/high_zero_carry ;
  wire \ekcp3/processor/input_fetch_type ;
  wire \ekcp3/processor/int_enable ;
  wire \ekcp3/processor/int_enable_value ;
  wire \ekcp3/processor/int_pulse ;
  wire \ekcp3/processor/int_update_enable ;
  wire \ekcp3/processor/internal_reset ;
  wire \ekcp3/processor/interrupt_ack_internal ;
  wire \ekcp3/processor/invert_arith_carry ;
  wire \ekcp3/processor/io_initial_decode ;
  wire \ekcp3/processor/low_parity ;
  wire \ekcp3/processor/low_shift_in ;
  wire \ekcp3/processor/low_zero ;
  wire \ekcp3/processor/low_zero_carry ;
  wire \ekcp3/processor/memory_enable ;
  wire \ekcp3/processor/memory_type ;
  wire \ekcp3/processor/memory_write ;
  wire \ekcp3/processor/move_group ;
  wire \ekcp3/processor/normal_count ;
  wire \ekcp3/processor/not_active_interrupt ;
  wire \ekcp3/processor/not_t_state ;
  wire \ekcp3/processor/parity ;
  wire \ekcp3/processor/parity_carry ;
  wire \ekcp3/processor/pc_enable ;
  wire \ekcp3/processor/push_or_pop_type ;
  wire \ekcp3/processor/read_active ;
  wire \ekcp3/processor/register_enable ;
  wire \ekcp3/processor/register_type ;
  wire \ekcp3/processor/register_write ;
  wire \ekcp3/processor/reset_delay ;
  wire \ekcp3/processor/sel_arith ;
  wire \ekcp3/processor/sel_arith_carry ;
  wire \ekcp3/processor/sel_arith_carry_in ;
  wire \ekcp3/processor/sel_group ;
  wire \ekcp3/processor/sel_logical ;
  wire \ekcp3/processor/sel_parity ;
  wire \ekcp3/processor/sel_shadow_carry ;
  wire \ekcp3/processor/sel_shadow_zero ;
  wire \ekcp3/processor/sel_shift ;
  wire \ekcp3/processor/sel_shift_carry ;
  wire \ekcp3/processor/shadow_carry ;
  wire \ekcp3/processor/shadow_zero ;
  wire \ekcp3/processor/shift_carry ;
  wire \ekcp3/processor/shift_carry_value ;
  wire \ekcp3/processor/shift_in ;
  wire \ekcp3/processor/stack_write_enable ;
  wire \ekcp3/processor/t_state ;
  wire \ekcp3/processor/valid_to_move ;
  wire \ekcp3/processor/write_active ;
  wire \ekcp3/processor/zero_carry ;
  wire \ekcp3/processor/zero_fast_route ;
  wire \ekcp3/processor/zero_flag ;
  wire f_OBUF_537;
  wire g_OBUF_539;
  wire \in_port<0>48_541 ;
  wire \in_port<0>60_542 ;
  wire \in_port<0>68_543 ;
  wire nChipEnable;
  wire nOE;
  wire nOE1_593;
  wire nRDY;
  wire nReadLd;
  wire nWriteEnable;
  wire present_state_FSM_FFd1_615;
  wire \present_state_FSM_FFd1-In_616 ;
  wire present_state_FSM_FFd2_617;
  wire \present_state_FSM_FFd2-In_618 ;
  wire read_strobe;
  wire \receive/DOIT_653 ;
  wire \receive/LOAD_654 ;
  wire \receive/Madd_nBaudCount_addsub0000_cy<10>_rt_657 ;
  wire \receive/Madd_nBaudCount_addsub0000_cy<11>_rt_659 ;
  wire \receive/Madd_nBaudCount_addsub0000_cy<12>_rt_661 ;
  wire \receive/Madd_nBaudCount_addsub0000_cy<13>_rt_663 ;
  wire \receive/Madd_nBaudCount_addsub0000_cy<14>_rt_665 ;
  wire \receive/Madd_nBaudCount_addsub0000_cy<15>_rt_667 ;
  wire \receive/Madd_nBaudCount_addsub0000_cy<16>_rt_669 ;
  wire \receive/Madd_nBaudCount_addsub0000_cy<1>_rt_671 ;
  wire \receive/Madd_nBaudCount_addsub0000_cy<2>_rt_673 ;
  wire \receive/Madd_nBaudCount_addsub0000_cy<3>_rt_675 ;
  wire \receive/Madd_nBaudCount_addsub0000_cy<4>_rt_677 ;
  wire \receive/Madd_nBaudCount_addsub0000_cy<5>_rt_679 ;
  wire \receive/Madd_nBaudCount_addsub0000_cy<6>_rt_681 ;
  wire \receive/Madd_nBaudCount_addsub0000_cy<7>_rt_683 ;
  wire \receive/Madd_nBaudCount_addsub0000_cy<8>_rt_685 ;
  wire \receive/Madd_nBaudCount_addsub0000_cy<9>_rt_687 ;
  wire \receive/Madd_nBaudCount_addsub0000_xor<17>_rt_689 ;
  wire \receive/OVERFLOW_708 ;
  wire \receive/OVERFLOW_not0001 ;
  wire \receive/PARITY_ERR_710 ;
  wire \receive/PARITY_ERR_not0001 ;
  wire \receive/PARITY_ERR_not0001417 ;
  wire \receive/PARITY_ERR_not00014171_713 ;
  wire \receive/PARITY_ERR_not00014172_714 ;
  wire \receive/PARITY_ERR_not0001432_715 ;
  wire \receive/PARITY_ERR_not0001473_716 ;
  wire \receive/PARITY_ERR_not0001486_717 ;
  wire \receive/PARITY_ERR_not0001487_718 ;
  wire \receive/PARITY_ERR_not0001_bdd2 ;
  wire \receive/RxRdy_720 ;
  wire \receive/RxRdy_not0001_721 ;
  wire \receive/RxSet ;
  wire \receive/START_723 ;
  wire \receive/b7 ;
  wire \receive/bcu ;
  wire \receive/doneDelay_756 ;
  wire \receive/finalBaudCountNum<12>1_761 ;
  wire \receive/finalBaudCountNum<12>2_762 ;
  wire \receive/finalBaudCountNum<16>_bdd0 ;
  wire \receive/finalBaudCountNum<8>_bdd0 ;
  wire \receive/nDOIT ;
  wire \receive/nLOAD ;
  wire \receive/nSTART ;
  wire \receive/parityResult ;
  wire \receive/present_state_FSM_FFd1_821 ;
  wire \receive/present_state_FSM_FFd1-In ;
  wire \receive/present_state_FSM_FFd1-In15 ;
  wire \receive/present_state_FSM_FFd1-In151_824 ;
  wire \receive/present_state_FSM_FFd1-In28_825 ;
  wire \receive/present_state_FSM_FFd2_826 ;
  wire \receive/present_state_FSM_FFd2-In ;
  wire \receive/present_state_FSM_FFd2-In37 ;
  wire \receive/present_state_FSM_FFd2-In371_829 ;
  wire \receive/sSet ;
  wire \receive/sreg_data_0_mux0000 ;
  wire \receive/sreg_data_1_mux0000 ;
  wire \receive/sreg_data_2_mux0000 ;
  wire \receive/sreg_data_3_mux0000 ;
  wire \receive/sreg_data_4_mux0000 ;
  wire \receive/sreg_data_5_mux0000 ;
  wire \receive/sreg_data_6_mux0000 ;
  wire \receive/sreg_data_7_mux0000 ;
  wire \receive/sreg_data_8_mux0000 ;
  wire \receive/sreg_data_8_not0001 ;
  wire rstb_IBUF_851;
  wire \transmit/Done ;
  wire \transmit/Madd_nBaudCount_addsub0000_cy<10>_rt_861 ;
  wire \transmit/Madd_nBaudCount_addsub0000_cy<11>_rt_863 ;
  wire \transmit/Madd_nBaudCount_addsub0000_cy<12>_rt_865 ;
  wire \transmit/Madd_nBaudCount_addsub0000_cy<13>_rt_867 ;
  wire \transmit/Madd_nBaudCount_addsub0000_cy<14>_rt_869 ;
  wire \transmit/Madd_nBaudCount_addsub0000_cy<15>_rt_871 ;
  wire \transmit/Madd_nBaudCount_addsub0000_cy<16>_rt_873 ;
  wire \transmit/Madd_nBaudCount_addsub0000_cy<1>_rt_875 ;
  wire \transmit/Madd_nBaudCount_addsub0000_cy<2>_rt_877 ;
  wire \transmit/Madd_nBaudCount_addsub0000_cy<3>_rt_879 ;
  wire \transmit/Madd_nBaudCount_addsub0000_cy<4>_rt_881 ;
  wire \transmit/Madd_nBaudCount_addsub0000_cy<5>_rt_883 ;
  wire \transmit/Madd_nBaudCount_addsub0000_cy<6>_rt_885 ;
  wire \transmit/Madd_nBaudCount_addsub0000_cy<7>_rt_887 ;
  wire \transmit/Madd_nBaudCount_addsub0000_cy<8>_rt_889 ;
  wire \transmit/Madd_nBaudCount_addsub0000_cy<9>_rt_891 ;
  wire \transmit/Madd_nBaudCount_addsub0000_xor<17>_rt_893 ;
  wire \transmit/Mmux_nBitCount31 ;
  wire \transmit/Mrom_baudCountNum ;
  wire \transmit/Mrom_baudCountNum1 ;
  wire \transmit/Mrom_baudCountNum10 ;
  wire \transmit/Mrom_baudCountNum11_918 ;
  wire \transmit/Mrom_baudCountNum12 ;
  wire \transmit/Mrom_baudCountNum13 ;
  wire \transmit/Mrom_baudCountNum14 ;
  wire \transmit/Mrom_baudCountNum15 ;
  wire \transmit/Mrom_baudCountNum2 ;
  wire \transmit/Mrom_baudCountNum3 ;
  wire \transmit/Mrom_baudCountNum4 ;
  wire \transmit/Mrom_baudCountNum5 ;
  wire \transmit/Mrom_baudCountNum6 ;
  wire \transmit/Mrom_baudCountNum7 ;
  wire \transmit/Mrom_baudCountNum8 ;
  wire \transmit/TxRdy_930 ;
  wire \transmit/TxRdy_not0001 ;
  wire \transmit/sreg_data_0_mux0000 ;
  wire \transmit/sreg_data_10_mux0000 ;
  wire \transmit/sreg_data_10_mux0000312_1007 ;
  wire \transmit/sreg_data_10_mux0000325_1008 ;
  wire \transmit/sreg_data_10_not0001 ;
  wire \transmit/sreg_data_1_mux0000 ;
  wire \transmit/sreg_data_2_mux0000 ;
  wire \transmit/sreg_data_3_mux0000 ;
  wire \transmit/sreg_data_4_mux0000 ;
  wire \transmit/sreg_data_5_mux0000 ;
  wire \transmit/sreg_data_6_mux0000 ;
  wire \transmit/sreg_data_7_mux0000 ;
  wire \transmit/sreg_data_8_mux0000 ;
  wire \transmit/sreg_data_9_mux0000 ;
  wire \transmit/sreg_data_9_mux00001_SW2 ;
  wire \transmit/sreg_data_9_mux00001_SW21_1028 ;
  wire \transmit/start_1029 ;
  wire \transmit/write1Delay_1030 ;
  wire \write[11] ;
  wire \write[12] ;
  wire \write[13] ;
  wire \write[14] ;
  wire \write[15] ;
  wire \write[1] ;
  wire \write[5] ;
  wire write_strobe;
  wire [6 : 0] \Display_Controller/Mcompar_count_cmp_ge0000_cy ;
  wire [14 : 0] \Display_Controller/Mcount_count_cy ;
  wire [15 : 0] \Display_Controller/Mcount_count_lut ;
  wire [3 : 0] \Display_Controller/ad_out ;
  wire [15 : 0] \Display_Controller/count ;
  wire [1 : 1] \Display_Controller/seg_sel ;
  wire [7 : 0] charCounter;
  wire [9 : 0] \ekcp3/address ;
  wire [17 : 0] \ekcp3/instruction ;
  wire [7 : 0] \ekcp3/processor/alu_group ;
  wire [7 : 0] \ekcp3/processor/alu_result ;
  wire [7 : 0] \ekcp3/processor/arith_internal_carry ;
  wire [7 : 0] \ekcp3/processor/arith_result ;
  wire [7 : 0] \ekcp3/processor/arith_value ;
  wire [7 : 0] \ekcp3/processor/half_arith ;
  wire [4 : 0] \ekcp3/processor/half_stack_address ;
  wire [9 : 0] \ekcp3/processor/inc_pc_value ;
  wire [9 : 0] \ekcp3/processor/inc_pc_vector ;
  wire [7 : 0] \ekcp3/processor/input_group ;
  wire [7 : 0] \ekcp3/processor/logical_result ;
  wire [7 : 0] \ekcp3/processor/logical_value ;
  wire [7 : 0] \ekcp3/processor/memory_data ;
  wire [4 : 0] \ekcp3/processor/next_stack_address ;
  wire [9 : 0] \ekcp3/processor/pc_value ;
  wire [8 : 0] \ekcp3/processor/pc_value_carry ;
  wire [9 : 0] \ekcp3/processor/pc_vector ;
  wire [8 : 0] \ekcp3/processor/pc_vector_carry ;
  wire [3 : 0] \ekcp3/processor/sel_carry ;
  wire [7 : 0] \ekcp3/processor/shift_result ;
  wire [7 : 0] \ekcp3/processor/shift_value ;
  wire [4 : 0] \ekcp3/processor/stack_address ;
  wire [3 : 0] \ekcp3/processor/stack_address_carry ;
  wire [9 : 0] \ekcp3/processor/stack_pop_data ;
  wire [9 : 0] \ekcp3/processor/stack_ram_data ;
  wire [7 : 0] \ekcp3/processor/store_data ;
  wire [7 : 0] \ekcp3/processor/sy ;
  wire [7 : 0] in_port;
  wire [7 : 0] out_port;
  wire [7 : 0] port_id;
  wire [15 : 0] rdDataIn;
  wire [7 : 0] rdDataInReg0;
  wire [7 : 0] rdDataInReg1;
  wire [0 : 0] read;
  wire [16 : 0] \receive/Madd_nBaudCount_addsub0000_cy ;
  wire [0 : 0] \receive/Madd_nBaudCount_addsub0000_lut ;
  wire [8 : 0] \receive/Mcompar_btu_cmp_eq0000_cy ;
  wire [8 : 0] \receive/Mcompar_btu_cmp_eq0000_lut ;
  wire [17 : 0] \receive/baudCount ;
  wire [3 : 0] \receive/bitCount ;
  wire [7 : 0] \receive/data ;
  wire [15 : 0] \receive/finalBaudCountNum ;
  wire [17 : 0] \receive/nBaudCount ;
  wire [17 : 0] \receive/nBaudCount_addsub0000 ;
  wire [3 : 0] \receive/nBitCount ;
  wire [8 : 0] \receive/sreg_data ;
  wire [2 : 0] sm_clk_counter;
  wire [2 : 0] sm_clk_counter_mux0000;
  wire [16 : 0] \transmit/Madd_nBaudCount_addsub0000_cy ;
  wire [0 : 0] \transmit/Madd_nBaudCount_addsub0000_lut ;
  wire [9 : 0] \transmit/Mcompar_btu_cmp_eq0000_cy ;
  wire [9 : 0] \transmit/Mcompar_btu_cmp_eq0000_lut ;
  wire [17 : 0] \transmit/baudCount ;
  wire [3 : 0] \transmit/bitCount ;
  wire [7 : 0] \transmit/data ;
  wire [17 : 0] \transmit/nBaudCount ;
  wire [17 : 0] \transmit/nBaudCount_addsub0000 ;
  wire [3 : 0] \transmit/nBitCount ;
  wire [10 : 0] \transmit/sreg_data ;
  wire [7 : 0] wrAddrReg0;
  wire [7 : 0] wrAddrReg1;
  wire [7 : 0] wrAddrReg2;
  wire [7 : 0] wrDataOutReg0;
  wire [7 : 0] wrDataOutReg1;
  GND   XST_GND (
    .G(LED_7_OBUF_116)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  FDCE   charCounter_0 (
    .C(clk_BUFGP_223),
    .CE(\write[5] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[0]),
    .Q(charCounter[0])
  );
  FDCE   charCounter_1 (
    .C(clk_BUFGP_223),
    .CE(\write[5] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[1]),
    .Q(charCounter[1])
  );
  FDCE   charCounter_2 (
    .C(clk_BUFGP_223),
    .CE(\write[5] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[2]),
    .Q(charCounter[2])
  );
  FDCE   charCounter_3 (
    .C(clk_BUFGP_223),
    .CE(\write[5] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[3]),
    .Q(charCounter[3])
  );
  FDCE   charCounter_4 (
    .C(clk_BUFGP_223),
    .CE(\write[5] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[4]),
    .Q(charCounter[4])
  );
  FDCE   charCounter_5 (
    .C(clk_BUFGP_223),
    .CE(\write[5] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[5]),
    .Q(charCounter[5])
  );
  FDCE   charCounter_6 (
    .C(clk_BUFGP_223),
    .CE(\write[5] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[6]),
    .Q(charCounter[6])
  );
  FDCE   charCounter_7 (
    .C(clk_BUFGP_223),
    .CE(\write[5] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[7]),
    .Q(charCounter[7])
  );
  FDCE   wrAddrReg0_0 (
    .C(clk_BUFGP_223),
    .CE(\write[11] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[0]),
    .Q(wrAddrReg0[0])
  );
  FDCE   wrAddrReg0_1 (
    .C(clk_BUFGP_223),
    .CE(\write[11] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[1]),
    .Q(wrAddrReg0[1])
  );
  FDCE   wrAddrReg0_2 (
    .C(clk_BUFGP_223),
    .CE(\write[11] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[2]),
    .Q(wrAddrReg0[2])
  );
  FDCE   wrAddrReg0_3 (
    .C(clk_BUFGP_223),
    .CE(\write[11] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[3]),
    .Q(wrAddrReg0[3])
  );
  FDCE   wrAddrReg0_4 (
    .C(clk_BUFGP_223),
    .CE(\write[11] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[4]),
    .Q(wrAddrReg0[4])
  );
  FDCE   wrAddrReg0_5 (
    .C(clk_BUFGP_223),
    .CE(\write[11] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[5]),
    .Q(wrAddrReg0[5])
  );
  FDCE   wrAddrReg0_6 (
    .C(clk_BUFGP_223),
    .CE(\write[11] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[6]),
    .Q(wrAddrReg0[6])
  );
  FDCE   wrAddrReg0_7 (
    .C(clk_BUFGP_223),
    .CE(\write[11] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[7]),
    .Q(wrAddrReg0[7])
  );
  FDCE   wrAddrReg1_0 (
    .C(clk_BUFGP_223),
    .CE(\write[12] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[0]),
    .Q(wrAddrReg1[0])
  );
  FDCE   wrAddrReg1_1 (
    .C(clk_BUFGP_223),
    .CE(\write[12] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[1]),
    .Q(wrAddrReg1[1])
  );
  FDCE   wrAddrReg1_2 (
    .C(clk_BUFGP_223),
    .CE(\write[12] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[2]),
    .Q(wrAddrReg1[2])
  );
  FDCE   wrAddrReg1_3 (
    .C(clk_BUFGP_223),
    .CE(\write[12] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[3]),
    .Q(wrAddrReg1[3])
  );
  FDCE   wrAddrReg1_4 (
    .C(clk_BUFGP_223),
    .CE(\write[12] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[4]),
    .Q(wrAddrReg1[4])
  );
  FDCE   wrAddrReg1_5 (
    .C(clk_BUFGP_223),
    .CE(\write[12] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[5]),
    .Q(wrAddrReg1[5])
  );
  FDCE   wrAddrReg1_6 (
    .C(clk_BUFGP_223),
    .CE(\write[12] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[6]),
    .Q(wrAddrReg1[6])
  );
  FDCE   wrAddrReg1_7 (
    .C(clk_BUFGP_223),
    .CE(\write[12] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[7]),
    .Q(wrAddrReg1[7])
  );
  FDCE   wrAddrReg2_0 (
    .C(clk_BUFGP_223),
    .CE(\write[13] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[0]),
    .Q(wrAddrReg2[0])
  );
  FDCE   wrAddrReg2_1 (
    .C(clk_BUFGP_223),
    .CE(\write[13] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[1]),
    .Q(wrAddrReg2[1])
  );
  FDCE   wrAddrReg2_2 (
    .C(clk_BUFGP_223),
    .CE(\write[13] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[2]),
    .Q(wrAddrReg2[2])
  );
  FDCE   wrAddrReg2_3 (
    .C(clk_BUFGP_223),
    .CE(\write[13] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[3]),
    .Q(wrAddrReg2[3])
  );
  FDCE   wrAddrReg2_4 (
    .C(clk_BUFGP_223),
    .CE(\write[13] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[4]),
    .Q(wrAddrReg2[4])
  );
  FDCE   wrAddrReg2_5 (
    .C(clk_BUFGP_223),
    .CE(\write[13] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[5]),
    .Q(wrAddrReg2[5])
  );
  FDCE   wrAddrReg2_6 (
    .C(clk_BUFGP_223),
    .CE(\write[13] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[6]),
    .Q(wrAddrReg2[6])
  );
  FDCE   wrAddrReg2_7 (
    .C(clk_BUFGP_223),
    .CE(\write[13] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[7]),
    .Q(wrAddrReg2[7])
  );
  FDC   ReadLd (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(nReadLd),
    .Q(ReadLd_189)
  );
  FDC   sm_clk_counter_0 (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(sm_clk_counter_mux0000[2]),
    .Q(sm_clk_counter[0])
  );
  FDC   sm_clk_counter_1 (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(sm_clk_counter_mux0000[1]),
    .Q(sm_clk_counter[1])
  );
  FDC   sm_clk_counter_2 (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(sm_clk_counter_mux0000[0]),
    .Q(sm_clk_counter[2])
  );
  FDP   WriteEnable (
    .C(clk_BUFGP_223),
    .D(nWriteEnable),
    .PRE(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .Q(WriteEnable_194)
  );
  FDP   OutputEnable (
    .C(clk_BUFGP_223),
    .D(nRDY),
    .PRE(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .Q(OutputEnable_188)
  );
  FDP   ChipEnable (
    .C(clk_BUFGP_223),
    .D(nChipEnable),
    .PRE(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .Q(ChipEnable_0)
  );
  FDC   \Synchronizer_Circuit/rst_synch_out  (
    .C(clk_BUFGP_223),
    .CLR(rstb_IBUF_851),
    .D(\Synchronizer_Circuit/rst_reg_delay_192 ),
    .Q(\Synchronizer_Circuit/rst_synch_out_193 )
  );
  FDC   \Synchronizer_Circuit/rst_reg_delay  (
    .C(clk_BUFGP_223),
    .CLR(rstb_IBUF_851),
    .D(N1),
    .Q(\Synchronizer_Circuit/rst_reg_delay_192 )
  );
  OBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DRIVE ( 12 ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \ob[23]  (
    .I(wrAddrReg2[7]),
    .O(memWriteAddr[23])
  );
  OBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DRIVE ( 12 ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \ob[22]  (
    .I(wrAddrReg2[6]),
    .O(memWriteAddr[22])
  );
  OBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DRIVE ( 12 ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \ob[21]  (
    .I(wrAddrReg2[5]),
    .O(memWriteAddr[21])
  );
  OBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DRIVE ( 12 ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \ob[20]  (
    .I(wrAddrReg2[4]),
    .O(memWriteAddr[20])
  );
  OBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DRIVE ( 12 ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \ob[19]  (
    .I(wrAddrReg2[3]),
    .O(memWriteAddr[19])
  );
  OBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DRIVE ( 12 ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \ob[18]  (
    .I(wrAddrReg2[2]),
    .O(memWriteAddr[18])
  );
  OBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DRIVE ( 12 ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \ob[17]  (
    .I(wrAddrReg2[1]),
    .O(memWriteAddr[17])
  );
  OBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DRIVE ( 12 ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \ob[16]  (
    .I(wrAddrReg2[0]),
    .O(memWriteAddr[16])
  );
  OBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DRIVE ( 12 ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \ob[15]  (
    .I(wrAddrReg1[7]),
    .O(memWriteAddr[15])
  );
  OBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DRIVE ( 12 ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \ob[14]  (
    .I(wrAddrReg1[6]),
    .O(memWriteAddr[14])
  );
  OBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DRIVE ( 12 ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \ob[13]  (
    .I(wrAddrReg1[5]),
    .O(memWriteAddr[13])
  );
  OBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DRIVE ( 12 ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \ob[12]  (
    .I(wrAddrReg1[4]),
    .O(memWriteAddr[12])
  );
  OBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DRIVE ( 12 ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \ob[11]  (
    .I(wrAddrReg1[3]),
    .O(memWriteAddr[11])
  );
  OBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DRIVE ( 12 ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \ob[10]  (
    .I(wrAddrReg1[2]),
    .O(memWriteAddr[10])
  );
  OBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DRIVE ( 12 ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \ob[9]  (
    .I(wrAddrReg1[1]),
    .O(memWriteAddr[9])
  );
  OBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DRIVE ( 12 ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \ob[8]  (
    .I(wrAddrReg1[0]),
    .O(memWriteAddr[8])
  );
  OBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DRIVE ( 12 ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \ob[7]  (
    .I(wrAddrReg0[7]),
    .O(memWriteAddr[7])
  );
  OBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DRIVE ( 12 ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \ob[6]  (
    .I(wrAddrReg0[6]),
    .O(memWriteAddr[6])
  );
  OBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DRIVE ( 12 ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \ob[5]  (
    .I(wrAddrReg0[5]),
    .O(memWriteAddr[5])
  );
  OBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DRIVE ( 12 ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \ob[4]  (
    .I(wrAddrReg0[4]),
    .O(memWriteAddr[4])
  );
  OBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DRIVE ( 12 ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \ob[3]  (
    .I(wrAddrReg0[3]),
    .O(memWriteAddr[3])
  );
  OBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DRIVE ( 12 ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \ob[2]  (
    .I(wrAddrReg0[2]),
    .O(memWriteAddr[2])
  );
  OBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DRIVE ( 12 ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \ob[1]  (
    .I(wrAddrReg0[1]),
    .O(memWriteAddr[1])
  );
  OBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DRIVE ( 12 ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \ob[0]  (
    .I(wrAddrReg0[0]),
    .O(memWriteAddr[0])
  );
  FDC   present_state_FSM_FFd1 (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\present_state_FSM_FFd1-In_616 ),
    .Q(present_state_FSM_FFd1_615)
  );
  FDC   present_state_FSM_FFd2 (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\present_state_FSM_FFd2-In_618 ),
    .Q(present_state_FSM_FFd2_617)
  );
  MUXCY   \transmit/Mcompar_btu_cmp_eq0000_cy<9>  (
    .CI(\transmit/Mcompar_btu_cmp_eq0000_cy [8]),
    .DI(LED_7_OBUF_116),
    .S(\transmit/Mcompar_btu_cmp_eq0000_lut [9]),
    .O(\transmit/Mcompar_btu_cmp_eq0000_cy [9])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \transmit/Mcompar_btu_cmp_eq0000_lut<9>  (
    .I0(\transmit/baudCount [17]),
    .I1(\receive/finalBaudCountNum<16>_bdd0 ),
    .O(\transmit/Mcompar_btu_cmp_eq0000_lut [9])
  );
  MUXCY   \transmit/Mcompar_btu_cmp_eq0000_cy<8>  (
    .CI(\transmit/Mcompar_btu_cmp_eq0000_cy [7]),
    .DI(LED_7_OBUF_116),
    .S(\transmit/Mcompar_btu_cmp_eq0000_lut [8]),
    .O(\transmit/Mcompar_btu_cmp_eq0000_cy [8])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \transmit/Mcompar_btu_cmp_eq0000_lut<8>  (
    .I0(\transmit/baudCount [14]),
    .I1(\transmit/Mrom_baudCountNum14 ),
    .I2(\transmit/baudCount [15]),
    .I3(\transmit/Mrom_baudCountNum15 ),
    .O(\transmit/Mcompar_btu_cmp_eq0000_lut [8])
  );
  MUXCY   \transmit/Mcompar_btu_cmp_eq0000_cy<7>  (
    .CI(\transmit/Mcompar_btu_cmp_eq0000_cy [6]),
    .DI(LED_7_OBUF_116),
    .S(\transmit/Mcompar_btu_cmp_eq0000_lut [7]),
    .O(\transmit/Mcompar_btu_cmp_eq0000_cy [7])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \transmit/Mcompar_btu_cmp_eq0000_lut<7>  (
    .I0(\transmit/baudCount [12]),
    .I1(\transmit/Mrom_baudCountNum12 ),
    .I2(\transmit/baudCount [13]),
    .I3(\transmit/Mrom_baudCountNum13 ),
    .O(\transmit/Mcompar_btu_cmp_eq0000_lut [7])
  );
  MUXCY   \transmit/Mcompar_btu_cmp_eq0000_cy<6>  (
    .CI(\transmit/Mcompar_btu_cmp_eq0000_cy [5]),
    .DI(LED_7_OBUF_116),
    .S(\transmit/Mcompar_btu_cmp_eq0000_lut [6]),
    .O(\transmit/Mcompar_btu_cmp_eq0000_cy [6])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \transmit/Mcompar_btu_cmp_eq0000_lut<6>  (
    .I0(\transmit/baudCount [10]),
    .I1(\transmit/Mrom_baudCountNum10 ),
    .I2(\transmit/baudCount [11]),
    .I3(\transmit/Mrom_baudCountNum11_918 ),
    .O(\transmit/Mcompar_btu_cmp_eq0000_lut [6])
  );
  MUXCY   \transmit/Mcompar_btu_cmp_eq0000_cy<5>  (
    .CI(\transmit/Mcompar_btu_cmp_eq0000_cy [4]),
    .DI(LED_7_OBUF_116),
    .S(\transmit/Mcompar_btu_cmp_eq0000_lut [5]),
    .O(\transmit/Mcompar_btu_cmp_eq0000_cy [5])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \transmit/Mcompar_btu_cmp_eq0000_lut<5>  (
    .I0(\transmit/baudCount [8]),
    .I1(\transmit/Mrom_baudCountNum8 ),
    .I2(\transmit/baudCount [9]),
    .I3(\receive/finalBaudCountNum<8>_bdd0 ),
    .O(\transmit/Mcompar_btu_cmp_eq0000_lut [5])
  );
  MUXCY   \transmit/Mcompar_btu_cmp_eq0000_cy<4>  (
    .CI(\transmit/Mcompar_btu_cmp_eq0000_cy [3]),
    .DI(LED_7_OBUF_116),
    .S(\transmit/Mcompar_btu_cmp_eq0000_lut [4]),
    .O(\transmit/Mcompar_btu_cmp_eq0000_cy [4])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \transmit/Mcompar_btu_cmp_eq0000_lut<4>  (
    .I0(\transmit/baudCount [6]),
    .I1(\transmit/Mrom_baudCountNum6 ),
    .I2(\transmit/baudCount [7]),
    .I3(\transmit/Mrom_baudCountNum7 ),
    .O(\transmit/Mcompar_btu_cmp_eq0000_lut [4])
  );
  MUXCY   \transmit/Mcompar_btu_cmp_eq0000_cy<3>  (
    .CI(\transmit/Mcompar_btu_cmp_eq0000_cy [2]),
    .DI(LED_7_OBUF_116),
    .S(\transmit/Mcompar_btu_cmp_eq0000_lut [3]),
    .O(\transmit/Mcompar_btu_cmp_eq0000_cy [3])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \transmit/Mcompar_btu_cmp_eq0000_lut<3>  (
    .I0(\transmit/baudCount [4]),
    .I1(\transmit/Mrom_baudCountNum4 ),
    .I2(\transmit/baudCount [5]),
    .I3(\transmit/Mrom_baudCountNum5 ),
    .O(\transmit/Mcompar_btu_cmp_eq0000_lut [3])
  );
  MUXCY   \transmit/Mcompar_btu_cmp_eq0000_cy<2>  (
    .CI(\transmit/Mcompar_btu_cmp_eq0000_cy [1]),
    .DI(LED_7_OBUF_116),
    .S(\transmit/Mcompar_btu_cmp_eq0000_lut [2]),
    .O(\transmit/Mcompar_btu_cmp_eq0000_cy [2])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \transmit/Mcompar_btu_cmp_eq0000_lut<2>  (
    .I0(\transmit/baudCount [2]),
    .I1(\transmit/Mrom_baudCountNum2 ),
    .I2(\transmit/baudCount [3]),
    .I3(\transmit/Mrom_baudCountNum3 ),
    .O(\transmit/Mcompar_btu_cmp_eq0000_lut [2])
  );
  MUXCY   \transmit/Mcompar_btu_cmp_eq0000_cy<1>  (
    .CI(\transmit/Mcompar_btu_cmp_eq0000_cy [0]),
    .DI(LED_7_OBUF_116),
    .S(\transmit/Mcompar_btu_cmp_eq0000_lut [1]),
    .O(\transmit/Mcompar_btu_cmp_eq0000_cy [1])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \transmit/Mcompar_btu_cmp_eq0000_lut<1>  (
    .I0(\transmit/baudCount [0]),
    .I1(\transmit/Mrom_baudCountNum ),
    .I2(\transmit/baudCount [1]),
    .I3(\transmit/Mrom_baudCountNum1 ),
    .O(\transmit/Mcompar_btu_cmp_eq0000_lut [1])
  );
  MUXCY   \transmit/Mcompar_btu_cmp_eq0000_cy<0>  (
    .CI(N1),
    .DI(LED_7_OBUF_116),
    .S(\transmit/Mcompar_btu_cmp_eq0000_lut [0]),
    .O(\transmit/Mcompar_btu_cmp_eq0000_cy [0])
  );
  XORCY   \transmit/Madd_nBaudCount_addsub0000_xor<17>  (
    .CI(\transmit/Madd_nBaudCount_addsub0000_cy [16]),
    .LI(\transmit/Madd_nBaudCount_addsub0000_xor<17>_rt_893 ),
    .O(\transmit/nBaudCount_addsub0000 [17])
  );
  XORCY   \transmit/Madd_nBaudCount_addsub0000_xor<16>  (
    .CI(\transmit/Madd_nBaudCount_addsub0000_cy [15]),
    .LI(\transmit/Madd_nBaudCount_addsub0000_cy<16>_rt_873 ),
    .O(\transmit/nBaudCount_addsub0000 [16])
  );
  MUXCY   \transmit/Madd_nBaudCount_addsub0000_cy<16>  (
    .CI(\transmit/Madd_nBaudCount_addsub0000_cy [15]),
    .DI(LED_7_OBUF_116),
    .S(\transmit/Madd_nBaudCount_addsub0000_cy<16>_rt_873 ),
    .O(\transmit/Madd_nBaudCount_addsub0000_cy [16])
  );
  XORCY   \transmit/Madd_nBaudCount_addsub0000_xor<15>  (
    .CI(\transmit/Madd_nBaudCount_addsub0000_cy [14]),
    .LI(\transmit/Madd_nBaudCount_addsub0000_cy<15>_rt_871 ),
    .O(\transmit/nBaudCount_addsub0000 [15])
  );
  MUXCY   \transmit/Madd_nBaudCount_addsub0000_cy<15>  (
    .CI(\transmit/Madd_nBaudCount_addsub0000_cy [14]),
    .DI(LED_7_OBUF_116),
    .S(\transmit/Madd_nBaudCount_addsub0000_cy<15>_rt_871 ),
    .O(\transmit/Madd_nBaudCount_addsub0000_cy [15])
  );
  XORCY   \transmit/Madd_nBaudCount_addsub0000_xor<14>  (
    .CI(\transmit/Madd_nBaudCount_addsub0000_cy [13]),
    .LI(\transmit/Madd_nBaudCount_addsub0000_cy<14>_rt_869 ),
    .O(\transmit/nBaudCount_addsub0000 [14])
  );
  MUXCY   \transmit/Madd_nBaudCount_addsub0000_cy<14>  (
    .CI(\transmit/Madd_nBaudCount_addsub0000_cy [13]),
    .DI(LED_7_OBUF_116),
    .S(\transmit/Madd_nBaudCount_addsub0000_cy<14>_rt_869 ),
    .O(\transmit/Madd_nBaudCount_addsub0000_cy [14])
  );
  XORCY   \transmit/Madd_nBaudCount_addsub0000_xor<13>  (
    .CI(\transmit/Madd_nBaudCount_addsub0000_cy [12]),
    .LI(\transmit/Madd_nBaudCount_addsub0000_cy<13>_rt_867 ),
    .O(\transmit/nBaudCount_addsub0000 [13])
  );
  MUXCY   \transmit/Madd_nBaudCount_addsub0000_cy<13>  (
    .CI(\transmit/Madd_nBaudCount_addsub0000_cy [12]),
    .DI(LED_7_OBUF_116),
    .S(\transmit/Madd_nBaudCount_addsub0000_cy<13>_rt_867 ),
    .O(\transmit/Madd_nBaudCount_addsub0000_cy [13])
  );
  XORCY   \transmit/Madd_nBaudCount_addsub0000_xor<12>  (
    .CI(\transmit/Madd_nBaudCount_addsub0000_cy [11]),
    .LI(\transmit/Madd_nBaudCount_addsub0000_cy<12>_rt_865 ),
    .O(\transmit/nBaudCount_addsub0000 [12])
  );
  MUXCY   \transmit/Madd_nBaudCount_addsub0000_cy<12>  (
    .CI(\transmit/Madd_nBaudCount_addsub0000_cy [11]),
    .DI(LED_7_OBUF_116),
    .S(\transmit/Madd_nBaudCount_addsub0000_cy<12>_rt_865 ),
    .O(\transmit/Madd_nBaudCount_addsub0000_cy [12])
  );
  XORCY   \transmit/Madd_nBaudCount_addsub0000_xor<11>  (
    .CI(\transmit/Madd_nBaudCount_addsub0000_cy [10]),
    .LI(\transmit/Madd_nBaudCount_addsub0000_cy<11>_rt_863 ),
    .O(\transmit/nBaudCount_addsub0000 [11])
  );
  MUXCY   \transmit/Madd_nBaudCount_addsub0000_cy<11>  (
    .CI(\transmit/Madd_nBaudCount_addsub0000_cy [10]),
    .DI(LED_7_OBUF_116),
    .S(\transmit/Madd_nBaudCount_addsub0000_cy<11>_rt_863 ),
    .O(\transmit/Madd_nBaudCount_addsub0000_cy [11])
  );
  XORCY   \transmit/Madd_nBaudCount_addsub0000_xor<10>  (
    .CI(\transmit/Madd_nBaudCount_addsub0000_cy [9]),
    .LI(\transmit/Madd_nBaudCount_addsub0000_cy<10>_rt_861 ),
    .O(\transmit/nBaudCount_addsub0000 [10])
  );
  MUXCY   \transmit/Madd_nBaudCount_addsub0000_cy<10>  (
    .CI(\transmit/Madd_nBaudCount_addsub0000_cy [9]),
    .DI(LED_7_OBUF_116),
    .S(\transmit/Madd_nBaudCount_addsub0000_cy<10>_rt_861 ),
    .O(\transmit/Madd_nBaudCount_addsub0000_cy [10])
  );
  XORCY   \transmit/Madd_nBaudCount_addsub0000_xor<9>  (
    .CI(\transmit/Madd_nBaudCount_addsub0000_cy [8]),
    .LI(\transmit/Madd_nBaudCount_addsub0000_cy<9>_rt_891 ),
    .O(\transmit/nBaudCount_addsub0000 [9])
  );
  MUXCY   \transmit/Madd_nBaudCount_addsub0000_cy<9>  (
    .CI(\transmit/Madd_nBaudCount_addsub0000_cy [8]),
    .DI(LED_7_OBUF_116),
    .S(\transmit/Madd_nBaudCount_addsub0000_cy<9>_rt_891 ),
    .O(\transmit/Madd_nBaudCount_addsub0000_cy [9])
  );
  XORCY   \transmit/Madd_nBaudCount_addsub0000_xor<8>  (
    .CI(\transmit/Madd_nBaudCount_addsub0000_cy [7]),
    .LI(\transmit/Madd_nBaudCount_addsub0000_cy<8>_rt_889 ),
    .O(\transmit/nBaudCount_addsub0000 [8])
  );
  MUXCY   \transmit/Madd_nBaudCount_addsub0000_cy<8>  (
    .CI(\transmit/Madd_nBaudCount_addsub0000_cy [7]),
    .DI(LED_7_OBUF_116),
    .S(\transmit/Madd_nBaudCount_addsub0000_cy<8>_rt_889 ),
    .O(\transmit/Madd_nBaudCount_addsub0000_cy [8])
  );
  XORCY   \transmit/Madd_nBaudCount_addsub0000_xor<7>  (
    .CI(\transmit/Madd_nBaudCount_addsub0000_cy [6]),
    .LI(\transmit/Madd_nBaudCount_addsub0000_cy<7>_rt_887 ),
    .O(\transmit/nBaudCount_addsub0000 [7])
  );
  MUXCY   \transmit/Madd_nBaudCount_addsub0000_cy<7>  (
    .CI(\transmit/Madd_nBaudCount_addsub0000_cy [6]),
    .DI(LED_7_OBUF_116),
    .S(\transmit/Madd_nBaudCount_addsub0000_cy<7>_rt_887 ),
    .O(\transmit/Madd_nBaudCount_addsub0000_cy [7])
  );
  XORCY   \transmit/Madd_nBaudCount_addsub0000_xor<6>  (
    .CI(\transmit/Madd_nBaudCount_addsub0000_cy [5]),
    .LI(\transmit/Madd_nBaudCount_addsub0000_cy<6>_rt_885 ),
    .O(\transmit/nBaudCount_addsub0000 [6])
  );
  MUXCY   \transmit/Madd_nBaudCount_addsub0000_cy<6>  (
    .CI(\transmit/Madd_nBaudCount_addsub0000_cy [5]),
    .DI(LED_7_OBUF_116),
    .S(\transmit/Madd_nBaudCount_addsub0000_cy<6>_rt_885 ),
    .O(\transmit/Madd_nBaudCount_addsub0000_cy [6])
  );
  XORCY   \transmit/Madd_nBaudCount_addsub0000_xor<5>  (
    .CI(\transmit/Madd_nBaudCount_addsub0000_cy [4]),
    .LI(\transmit/Madd_nBaudCount_addsub0000_cy<5>_rt_883 ),
    .O(\transmit/nBaudCount_addsub0000 [5])
  );
  MUXCY   \transmit/Madd_nBaudCount_addsub0000_cy<5>  (
    .CI(\transmit/Madd_nBaudCount_addsub0000_cy [4]),
    .DI(LED_7_OBUF_116),
    .S(\transmit/Madd_nBaudCount_addsub0000_cy<5>_rt_883 ),
    .O(\transmit/Madd_nBaudCount_addsub0000_cy [5])
  );
  XORCY   \transmit/Madd_nBaudCount_addsub0000_xor<4>  (
    .CI(\transmit/Madd_nBaudCount_addsub0000_cy [3]),
    .LI(\transmit/Madd_nBaudCount_addsub0000_cy<4>_rt_881 ),
    .O(\transmit/nBaudCount_addsub0000 [4])
  );
  MUXCY   \transmit/Madd_nBaudCount_addsub0000_cy<4>  (
    .CI(\transmit/Madd_nBaudCount_addsub0000_cy [3]),
    .DI(LED_7_OBUF_116),
    .S(\transmit/Madd_nBaudCount_addsub0000_cy<4>_rt_881 ),
    .O(\transmit/Madd_nBaudCount_addsub0000_cy [4])
  );
  XORCY   \transmit/Madd_nBaudCount_addsub0000_xor<3>  (
    .CI(\transmit/Madd_nBaudCount_addsub0000_cy [2]),
    .LI(\transmit/Madd_nBaudCount_addsub0000_cy<3>_rt_879 ),
    .O(\transmit/nBaudCount_addsub0000 [3])
  );
  MUXCY   \transmit/Madd_nBaudCount_addsub0000_cy<3>  (
    .CI(\transmit/Madd_nBaudCount_addsub0000_cy [2]),
    .DI(LED_7_OBUF_116),
    .S(\transmit/Madd_nBaudCount_addsub0000_cy<3>_rt_879 ),
    .O(\transmit/Madd_nBaudCount_addsub0000_cy [3])
  );
  XORCY   \transmit/Madd_nBaudCount_addsub0000_xor<2>  (
    .CI(\transmit/Madd_nBaudCount_addsub0000_cy [1]),
    .LI(\transmit/Madd_nBaudCount_addsub0000_cy<2>_rt_877 ),
    .O(\transmit/nBaudCount_addsub0000 [2])
  );
  MUXCY   \transmit/Madd_nBaudCount_addsub0000_cy<2>  (
    .CI(\transmit/Madd_nBaudCount_addsub0000_cy [1]),
    .DI(LED_7_OBUF_116),
    .S(\transmit/Madd_nBaudCount_addsub0000_cy<2>_rt_877 ),
    .O(\transmit/Madd_nBaudCount_addsub0000_cy [2])
  );
  XORCY   \transmit/Madd_nBaudCount_addsub0000_xor<1>  (
    .CI(\transmit/Madd_nBaudCount_addsub0000_cy [0]),
    .LI(\transmit/Madd_nBaudCount_addsub0000_cy<1>_rt_875 ),
    .O(\transmit/nBaudCount_addsub0000 [1])
  );
  MUXCY   \transmit/Madd_nBaudCount_addsub0000_cy<1>  (
    .CI(\transmit/Madd_nBaudCount_addsub0000_cy [0]),
    .DI(LED_7_OBUF_116),
    .S(\transmit/Madd_nBaudCount_addsub0000_cy<1>_rt_875 ),
    .O(\transmit/Madd_nBaudCount_addsub0000_cy [1])
  );
  XORCY   \transmit/Madd_nBaudCount_addsub0000_xor<0>  (
    .CI(LED_7_OBUF_116),
    .LI(\transmit/Madd_nBaudCount_addsub0000_lut [0]),
    .O(\transmit/nBaudCount_addsub0000 [0])
  );
  MUXCY   \transmit/Madd_nBaudCount_addsub0000_cy<0>  (
    .CI(LED_7_OBUF_116),
    .DI(N1),
    .S(\transmit/Madd_nBaudCount_addsub0000_lut [0]),
    .O(\transmit/Madd_nBaudCount_addsub0000_cy [0])
  );
  FDC   \transmit/bitCount_3  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\transmit/nBitCount [3]),
    .Q(\transmit/bitCount [3])
  );
  FDC   \transmit/bitCount_2  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\transmit/nBitCount [2]),
    .Q(\transmit/bitCount [2])
  );
  FDC   \transmit/bitCount_1  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\transmit/nBitCount [1]),
    .Q(\transmit/bitCount [1])
  );
  FDC   \transmit/bitCount_0  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\transmit/nBitCount [0]),
    .Q(\transmit/bitCount [0])
  );
  FDC   \transmit/baudCount_17  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\transmit/nBaudCount [17]),
    .Q(\transmit/baudCount [17])
  );
  FDC   \transmit/baudCount_16  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\transmit/nBaudCount [16]),
    .Q(\transmit/baudCount [16])
  );
  FDC   \transmit/baudCount_15  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\transmit/nBaudCount [15]),
    .Q(\transmit/baudCount [15])
  );
  FDC   \transmit/baudCount_14  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\transmit/nBaudCount [14]),
    .Q(\transmit/baudCount [14])
  );
  FDC   \transmit/baudCount_13  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\transmit/nBaudCount [13]),
    .Q(\transmit/baudCount [13])
  );
  FDC   \transmit/baudCount_12  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\transmit/nBaudCount [12]),
    .Q(\transmit/baudCount [12])
  );
  FDC   \transmit/baudCount_11  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\transmit/nBaudCount [11]),
    .Q(\transmit/baudCount [11])
  );
  FDC   \transmit/baudCount_10  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\transmit/nBaudCount [10]),
    .Q(\transmit/baudCount [10])
  );
  FDC   \transmit/baudCount_9  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\transmit/nBaudCount [9]),
    .Q(\transmit/baudCount [9])
  );
  FDC   \transmit/baudCount_8  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\transmit/nBaudCount [8]),
    .Q(\transmit/baudCount [8])
  );
  FDC   \transmit/baudCount_7  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\transmit/nBaudCount [7]),
    .Q(\transmit/baudCount [7])
  );
  FDC   \transmit/baudCount_6  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\transmit/nBaudCount [6]),
    .Q(\transmit/baudCount [6])
  );
  FDC   \transmit/baudCount_5  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\transmit/nBaudCount [5]),
    .Q(\transmit/baudCount [5])
  );
  FDC   \transmit/baudCount_4  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\transmit/nBaudCount [4]),
    .Q(\transmit/baudCount [4])
  );
  FDC   \transmit/baudCount_3  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\transmit/nBaudCount [3]),
    .Q(\transmit/baudCount [3])
  );
  FDC   \transmit/baudCount_2  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\transmit/nBaudCount [2]),
    .Q(\transmit/baudCount [2])
  );
  FDC   \transmit/baudCount_1  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\transmit/nBaudCount [1]),
    .Q(\transmit/baudCount [1])
  );
  FDC   \transmit/baudCount_0  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\transmit/nBaudCount [0]),
    .Q(\transmit/baudCount [0])
  );
  FDPE   \transmit/sreg_data_0  (
    .C(clk_BUFGP_223),
    .CE(\transmit/sreg_data_10_not0001 ),
    .D(\transmit/sreg_data_0_mux0000 ),
    .PRE(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .Q(\transmit/sreg_data [0])
  );
  FDPE   \transmit/sreg_data_2  (
    .C(clk_BUFGP_223),
    .CE(\transmit/sreg_data_10_not0001 ),
    .D(\transmit/sreg_data_2_mux0000 ),
    .PRE(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .Q(\transmit/sreg_data [2])
  );
  FDPE   \transmit/sreg_data_3  (
    .C(clk_BUFGP_223),
    .CE(\transmit/sreg_data_10_not0001 ),
    .D(\transmit/sreg_data_3_mux0000 ),
    .PRE(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .Q(\transmit/sreg_data [3])
  );
  FDPE   \transmit/sreg_data_1  (
    .C(clk_BUFGP_223),
    .CE(\transmit/sreg_data_10_not0001 ),
    .D(\transmit/sreg_data_1_mux0000 ),
    .PRE(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .Q(\transmit/sreg_data [1])
  );
  FDPE   \transmit/sreg_data_4  (
    .C(clk_BUFGP_223),
    .CE(\transmit/sreg_data_10_not0001 ),
    .D(\transmit/sreg_data_4_mux0000 ),
    .PRE(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .Q(\transmit/sreg_data [4])
  );
  FDPE   \transmit/sreg_data_5  (
    .C(clk_BUFGP_223),
    .CE(\transmit/sreg_data_10_not0001 ),
    .D(\transmit/sreg_data_5_mux0000 ),
    .PRE(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .Q(\transmit/sreg_data [5])
  );
  FDPE   \transmit/sreg_data_6  (
    .C(clk_BUFGP_223),
    .CE(\transmit/sreg_data_10_not0001 ),
    .D(\transmit/sreg_data_6_mux0000 ),
    .PRE(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .Q(\transmit/sreg_data [6])
  );
  FDPE   \transmit/sreg_data_7  (
    .C(clk_BUFGP_223),
    .CE(\transmit/sreg_data_10_not0001 ),
    .D(\transmit/sreg_data_7_mux0000 ),
    .PRE(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .Q(\transmit/sreg_data [7])
  );
  FDPE   \transmit/sreg_data_9  (
    .C(clk_BUFGP_223),
    .CE(\transmit/sreg_data_10_not0001 ),
    .D(\transmit/sreg_data_9_mux0000 ),
    .PRE(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .Q(\transmit/sreg_data [9])
  );
  FDPE   \transmit/sreg_data_10  (
    .C(clk_BUFGP_223),
    .CE(\transmit/sreg_data_10_not0001 ),
    .D(\transmit/sreg_data_10_mux0000 ),
    .PRE(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .Q(\transmit/sreg_data [10])
  );
  FDPE   \transmit/sreg_data_8  (
    .C(clk_BUFGP_223),
    .CE(\transmit/sreg_data_10_not0001 ),
    .D(\transmit/sreg_data_8_mux0000 ),
    .PRE(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .Q(\transmit/sreg_data [8])
  );
  FDC   \transmit/write1Delay  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\write[1] ),
    .Q(\transmit/write1Delay_1030 )
  );
  FDCE   \transmit/data_7  (
    .C(clk_BUFGP_223),
    .CE(\write[1] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[7]),
    .Q(\transmit/data [7])
  );
  FDCE   \transmit/data_6  (
    .C(clk_BUFGP_223),
    .CE(\write[1] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[6]),
    .Q(\transmit/data [6])
  );
  FDCE   \transmit/data_5  (
    .C(clk_BUFGP_223),
    .CE(\write[1] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[5]),
    .Q(\transmit/data [5])
  );
  FDCE   \transmit/data_4  (
    .C(clk_BUFGP_223),
    .CE(\write[1] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[4]),
    .Q(\transmit/data [4])
  );
  FDCE   \transmit/data_3  (
    .C(clk_BUFGP_223),
    .CE(\write[1] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[3]),
    .Q(\transmit/data [3])
  );
  FDCE   \transmit/data_2  (
    .C(clk_BUFGP_223),
    .CE(\write[1] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[2]),
    .Q(\transmit/data [2])
  );
  FDCE   \transmit/data_1  (
    .C(clk_BUFGP_223),
    .CE(\write[1] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[1]),
    .Q(\transmit/data [1])
  );
  FDCE   \transmit/data_0  (
    .C(clk_BUFGP_223),
    .CE(\write[1] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[0]),
    .Q(\transmit/data [0])
  );
  FDCE   \transmit/start  (
    .C(clk_BUFGP_223),
    .CE(\transmit/TxRdy_not0001 ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\write[1] ),
    .Q(\transmit/start_1029 )
  );
  FDPE   \transmit/TxRdy  (
    .C(clk_BUFGP_223),
    .CE(\transmit/TxRdy_not0001 ),
    .D(\transmit/Done ),
    .PRE(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .Q(\transmit/TxRdy_930 )
  );
  FDC   \receive/present_state_FSM_FFd2  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\receive/present_state_FSM_FFd2-In ),
    .Q(\receive/present_state_FSM_FFd2_826 )
  );
  FDC   \receive/present_state_FSM_FFd1  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\receive/present_state_FSM_FFd1-In ),
    .Q(\receive/present_state_FSM_FFd1_821 )
  );
  MUXCY   \receive/Mcompar_btu_cmp_eq0000_cy<8>  (
    .CI(\receive/Mcompar_btu_cmp_eq0000_cy [7]),
    .DI(LED_7_OBUF_116),
    .S(\receive/Mcompar_btu_cmp_eq0000_lut [8]),
    .O(\receive/Mcompar_btu_cmp_eq0000_cy [8])
  );
  MUXCY   \receive/Mcompar_btu_cmp_eq0000_cy<7>  (
    .CI(\receive/Mcompar_btu_cmp_eq0000_cy [6]),
    .DI(LED_7_OBUF_116),
    .S(\receive/Mcompar_btu_cmp_eq0000_lut [7]),
    .O(\receive/Mcompar_btu_cmp_eq0000_cy [7])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \receive/Mcompar_btu_cmp_eq0000_lut<7>  (
    .I0(\receive/baudCount [14]),
    .I1(\receive/finalBaudCountNum [14]),
    .I2(\receive/baudCount [15]),
    .I3(\receive/finalBaudCountNum [15]),
    .O(\receive/Mcompar_btu_cmp_eq0000_lut [7])
  );
  MUXCY   \receive/Mcompar_btu_cmp_eq0000_cy<6>  (
    .CI(\receive/Mcompar_btu_cmp_eq0000_cy [5]),
    .DI(LED_7_OBUF_116),
    .S(\receive/Mcompar_btu_cmp_eq0000_lut [6]),
    .O(\receive/Mcompar_btu_cmp_eq0000_cy [6])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \receive/Mcompar_btu_cmp_eq0000_lut<6>  (
    .I0(\receive/baudCount [12]),
    .I1(\receive/finalBaudCountNum [12]),
    .I2(\receive/baudCount [13]),
    .I3(\receive/finalBaudCountNum [13]),
    .O(\receive/Mcompar_btu_cmp_eq0000_lut [6])
  );
  MUXCY   \receive/Mcompar_btu_cmp_eq0000_cy<5>  (
    .CI(\receive/Mcompar_btu_cmp_eq0000_cy [4]),
    .DI(LED_7_OBUF_116),
    .S(\receive/Mcompar_btu_cmp_eq0000_lut [5]),
    .O(\receive/Mcompar_btu_cmp_eq0000_cy [5])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \receive/Mcompar_btu_cmp_eq0000_lut<5>  (
    .I0(\receive/baudCount [10]),
    .I1(\receive/finalBaudCountNum [10]),
    .I2(\receive/baudCount [11]),
    .I3(\receive/finalBaudCountNum [11]),
    .O(\receive/Mcompar_btu_cmp_eq0000_lut [5])
  );
  MUXCY   \receive/Mcompar_btu_cmp_eq0000_cy<4>  (
    .CI(\receive/Mcompar_btu_cmp_eq0000_cy [3]),
    .DI(LED_7_OBUF_116),
    .S(\receive/Mcompar_btu_cmp_eq0000_lut [4]),
    .O(\receive/Mcompar_btu_cmp_eq0000_cy [4])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \receive/Mcompar_btu_cmp_eq0000_lut<4>  (
    .I0(\receive/baudCount [8]),
    .I1(\receive/finalBaudCountNum [8]),
    .I2(\receive/baudCount [9]),
    .I3(\receive/finalBaudCountNum [9]),
    .O(\receive/Mcompar_btu_cmp_eq0000_lut [4])
  );
  MUXCY   \receive/Mcompar_btu_cmp_eq0000_cy<3>  (
    .CI(\receive/Mcompar_btu_cmp_eq0000_cy [2]),
    .DI(LED_7_OBUF_116),
    .S(\receive/Mcompar_btu_cmp_eq0000_lut [3]),
    .O(\receive/Mcompar_btu_cmp_eq0000_cy [3])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \receive/Mcompar_btu_cmp_eq0000_lut<3>  (
    .I0(\receive/baudCount [6]),
    .I1(\receive/finalBaudCountNum [6]),
    .I2(\receive/baudCount [7]),
    .I3(\receive/finalBaudCountNum [7]),
    .O(\receive/Mcompar_btu_cmp_eq0000_lut [3])
  );
  MUXCY   \receive/Mcompar_btu_cmp_eq0000_cy<2>  (
    .CI(\receive/Mcompar_btu_cmp_eq0000_cy [1]),
    .DI(LED_7_OBUF_116),
    .S(\receive/Mcompar_btu_cmp_eq0000_lut [2]),
    .O(\receive/Mcompar_btu_cmp_eq0000_cy [2])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \receive/Mcompar_btu_cmp_eq0000_lut<2>  (
    .I0(\receive/baudCount [4]),
    .I1(\receive/finalBaudCountNum [4]),
    .I2(\receive/baudCount [5]),
    .I3(\receive/finalBaudCountNum [5]),
    .O(\receive/Mcompar_btu_cmp_eq0000_lut [2])
  );
  MUXCY   \receive/Mcompar_btu_cmp_eq0000_cy<1>  (
    .CI(\receive/Mcompar_btu_cmp_eq0000_cy [0]),
    .DI(LED_7_OBUF_116),
    .S(\receive/Mcompar_btu_cmp_eq0000_lut [1]),
    .O(\receive/Mcompar_btu_cmp_eq0000_cy [1])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \receive/Mcompar_btu_cmp_eq0000_lut<1>  (
    .I0(\receive/baudCount [2]),
    .I1(\receive/finalBaudCountNum [2]),
    .I2(\receive/baudCount [3]),
    .I3(\receive/finalBaudCountNum [3]),
    .O(\receive/Mcompar_btu_cmp_eq0000_lut [1])
  );
  MUXCY   \receive/Mcompar_btu_cmp_eq0000_cy<0>  (
    .CI(N1),
    .DI(LED_7_OBUF_116),
    .S(\receive/Mcompar_btu_cmp_eq0000_lut [0]),
    .O(\receive/Mcompar_btu_cmp_eq0000_cy [0])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \receive/Mcompar_btu_cmp_eq0000_lut<0>  (
    .I0(\receive/baudCount [0]),
    .I1(\receive/finalBaudCountNum [0]),
    .I2(\receive/baudCount [1]),
    .I3(\receive/finalBaudCountNum [1]),
    .O(\receive/Mcompar_btu_cmp_eq0000_lut [0])
  );
  XORCY   \receive/Madd_nBaudCount_addsub0000_xor<17>  (
    .CI(\receive/Madd_nBaudCount_addsub0000_cy [16]),
    .LI(\receive/Madd_nBaudCount_addsub0000_xor<17>_rt_689 ),
    .O(\receive/nBaudCount_addsub0000 [17])
  );
  XORCY   \receive/Madd_nBaudCount_addsub0000_xor<16>  (
    .CI(\receive/Madd_nBaudCount_addsub0000_cy [15]),
    .LI(\receive/Madd_nBaudCount_addsub0000_cy<16>_rt_669 ),
    .O(\receive/nBaudCount_addsub0000 [16])
  );
  MUXCY   \receive/Madd_nBaudCount_addsub0000_cy<16>  (
    .CI(\receive/Madd_nBaudCount_addsub0000_cy [15]),
    .DI(LED_7_OBUF_116),
    .S(\receive/Madd_nBaudCount_addsub0000_cy<16>_rt_669 ),
    .O(\receive/Madd_nBaudCount_addsub0000_cy [16])
  );
  XORCY   \receive/Madd_nBaudCount_addsub0000_xor<15>  (
    .CI(\receive/Madd_nBaudCount_addsub0000_cy [14]),
    .LI(\receive/Madd_nBaudCount_addsub0000_cy<15>_rt_667 ),
    .O(\receive/nBaudCount_addsub0000 [15])
  );
  MUXCY   \receive/Madd_nBaudCount_addsub0000_cy<15>  (
    .CI(\receive/Madd_nBaudCount_addsub0000_cy [14]),
    .DI(LED_7_OBUF_116),
    .S(\receive/Madd_nBaudCount_addsub0000_cy<15>_rt_667 ),
    .O(\receive/Madd_nBaudCount_addsub0000_cy [15])
  );
  XORCY   \receive/Madd_nBaudCount_addsub0000_xor<14>  (
    .CI(\receive/Madd_nBaudCount_addsub0000_cy [13]),
    .LI(\receive/Madd_nBaudCount_addsub0000_cy<14>_rt_665 ),
    .O(\receive/nBaudCount_addsub0000 [14])
  );
  MUXCY   \receive/Madd_nBaudCount_addsub0000_cy<14>  (
    .CI(\receive/Madd_nBaudCount_addsub0000_cy [13]),
    .DI(LED_7_OBUF_116),
    .S(\receive/Madd_nBaudCount_addsub0000_cy<14>_rt_665 ),
    .O(\receive/Madd_nBaudCount_addsub0000_cy [14])
  );
  XORCY   \receive/Madd_nBaudCount_addsub0000_xor<13>  (
    .CI(\receive/Madd_nBaudCount_addsub0000_cy [12]),
    .LI(\receive/Madd_nBaudCount_addsub0000_cy<13>_rt_663 ),
    .O(\receive/nBaudCount_addsub0000 [13])
  );
  MUXCY   \receive/Madd_nBaudCount_addsub0000_cy<13>  (
    .CI(\receive/Madd_nBaudCount_addsub0000_cy [12]),
    .DI(LED_7_OBUF_116),
    .S(\receive/Madd_nBaudCount_addsub0000_cy<13>_rt_663 ),
    .O(\receive/Madd_nBaudCount_addsub0000_cy [13])
  );
  XORCY   \receive/Madd_nBaudCount_addsub0000_xor<12>  (
    .CI(\receive/Madd_nBaudCount_addsub0000_cy [11]),
    .LI(\receive/Madd_nBaudCount_addsub0000_cy<12>_rt_661 ),
    .O(\receive/nBaudCount_addsub0000 [12])
  );
  MUXCY   \receive/Madd_nBaudCount_addsub0000_cy<12>  (
    .CI(\receive/Madd_nBaudCount_addsub0000_cy [11]),
    .DI(LED_7_OBUF_116),
    .S(\receive/Madd_nBaudCount_addsub0000_cy<12>_rt_661 ),
    .O(\receive/Madd_nBaudCount_addsub0000_cy [12])
  );
  XORCY   \receive/Madd_nBaudCount_addsub0000_xor<11>  (
    .CI(\receive/Madd_nBaudCount_addsub0000_cy [10]),
    .LI(\receive/Madd_nBaudCount_addsub0000_cy<11>_rt_659 ),
    .O(\receive/nBaudCount_addsub0000 [11])
  );
  MUXCY   \receive/Madd_nBaudCount_addsub0000_cy<11>  (
    .CI(\receive/Madd_nBaudCount_addsub0000_cy [10]),
    .DI(LED_7_OBUF_116),
    .S(\receive/Madd_nBaudCount_addsub0000_cy<11>_rt_659 ),
    .O(\receive/Madd_nBaudCount_addsub0000_cy [11])
  );
  XORCY   \receive/Madd_nBaudCount_addsub0000_xor<10>  (
    .CI(\receive/Madd_nBaudCount_addsub0000_cy [9]),
    .LI(\receive/Madd_nBaudCount_addsub0000_cy<10>_rt_657 ),
    .O(\receive/nBaudCount_addsub0000 [10])
  );
  MUXCY   \receive/Madd_nBaudCount_addsub0000_cy<10>  (
    .CI(\receive/Madd_nBaudCount_addsub0000_cy [9]),
    .DI(LED_7_OBUF_116),
    .S(\receive/Madd_nBaudCount_addsub0000_cy<10>_rt_657 ),
    .O(\receive/Madd_nBaudCount_addsub0000_cy [10])
  );
  XORCY   \receive/Madd_nBaudCount_addsub0000_xor<9>  (
    .CI(\receive/Madd_nBaudCount_addsub0000_cy [8]),
    .LI(\receive/Madd_nBaudCount_addsub0000_cy<9>_rt_687 ),
    .O(\receive/nBaudCount_addsub0000 [9])
  );
  MUXCY   \receive/Madd_nBaudCount_addsub0000_cy<9>  (
    .CI(\receive/Madd_nBaudCount_addsub0000_cy [8]),
    .DI(LED_7_OBUF_116),
    .S(\receive/Madd_nBaudCount_addsub0000_cy<9>_rt_687 ),
    .O(\receive/Madd_nBaudCount_addsub0000_cy [9])
  );
  XORCY   \receive/Madd_nBaudCount_addsub0000_xor<8>  (
    .CI(\receive/Madd_nBaudCount_addsub0000_cy [7]),
    .LI(\receive/Madd_nBaudCount_addsub0000_cy<8>_rt_685 ),
    .O(\receive/nBaudCount_addsub0000 [8])
  );
  MUXCY   \receive/Madd_nBaudCount_addsub0000_cy<8>  (
    .CI(\receive/Madd_nBaudCount_addsub0000_cy [7]),
    .DI(LED_7_OBUF_116),
    .S(\receive/Madd_nBaudCount_addsub0000_cy<8>_rt_685 ),
    .O(\receive/Madd_nBaudCount_addsub0000_cy [8])
  );
  XORCY   \receive/Madd_nBaudCount_addsub0000_xor<7>  (
    .CI(\receive/Madd_nBaudCount_addsub0000_cy [6]),
    .LI(\receive/Madd_nBaudCount_addsub0000_cy<7>_rt_683 ),
    .O(\receive/nBaudCount_addsub0000 [7])
  );
  MUXCY   \receive/Madd_nBaudCount_addsub0000_cy<7>  (
    .CI(\receive/Madd_nBaudCount_addsub0000_cy [6]),
    .DI(LED_7_OBUF_116),
    .S(\receive/Madd_nBaudCount_addsub0000_cy<7>_rt_683 ),
    .O(\receive/Madd_nBaudCount_addsub0000_cy [7])
  );
  XORCY   \receive/Madd_nBaudCount_addsub0000_xor<6>  (
    .CI(\receive/Madd_nBaudCount_addsub0000_cy [5]),
    .LI(\receive/Madd_nBaudCount_addsub0000_cy<6>_rt_681 ),
    .O(\receive/nBaudCount_addsub0000 [6])
  );
  MUXCY   \receive/Madd_nBaudCount_addsub0000_cy<6>  (
    .CI(\receive/Madd_nBaudCount_addsub0000_cy [5]),
    .DI(LED_7_OBUF_116),
    .S(\receive/Madd_nBaudCount_addsub0000_cy<6>_rt_681 ),
    .O(\receive/Madd_nBaudCount_addsub0000_cy [6])
  );
  XORCY   \receive/Madd_nBaudCount_addsub0000_xor<5>  (
    .CI(\receive/Madd_nBaudCount_addsub0000_cy [4]),
    .LI(\receive/Madd_nBaudCount_addsub0000_cy<5>_rt_679 ),
    .O(\receive/nBaudCount_addsub0000 [5])
  );
  MUXCY   \receive/Madd_nBaudCount_addsub0000_cy<5>  (
    .CI(\receive/Madd_nBaudCount_addsub0000_cy [4]),
    .DI(LED_7_OBUF_116),
    .S(\receive/Madd_nBaudCount_addsub0000_cy<5>_rt_679 ),
    .O(\receive/Madd_nBaudCount_addsub0000_cy [5])
  );
  XORCY   \receive/Madd_nBaudCount_addsub0000_xor<4>  (
    .CI(\receive/Madd_nBaudCount_addsub0000_cy [3]),
    .LI(\receive/Madd_nBaudCount_addsub0000_cy<4>_rt_677 ),
    .O(\receive/nBaudCount_addsub0000 [4])
  );
  MUXCY   \receive/Madd_nBaudCount_addsub0000_cy<4>  (
    .CI(\receive/Madd_nBaudCount_addsub0000_cy [3]),
    .DI(LED_7_OBUF_116),
    .S(\receive/Madd_nBaudCount_addsub0000_cy<4>_rt_677 ),
    .O(\receive/Madd_nBaudCount_addsub0000_cy [4])
  );
  XORCY   \receive/Madd_nBaudCount_addsub0000_xor<3>  (
    .CI(\receive/Madd_nBaudCount_addsub0000_cy [2]),
    .LI(\receive/Madd_nBaudCount_addsub0000_cy<3>_rt_675 ),
    .O(\receive/nBaudCount_addsub0000 [3])
  );
  MUXCY   \receive/Madd_nBaudCount_addsub0000_cy<3>  (
    .CI(\receive/Madd_nBaudCount_addsub0000_cy [2]),
    .DI(LED_7_OBUF_116),
    .S(\receive/Madd_nBaudCount_addsub0000_cy<3>_rt_675 ),
    .O(\receive/Madd_nBaudCount_addsub0000_cy [3])
  );
  XORCY   \receive/Madd_nBaudCount_addsub0000_xor<2>  (
    .CI(\receive/Madd_nBaudCount_addsub0000_cy [1]),
    .LI(\receive/Madd_nBaudCount_addsub0000_cy<2>_rt_673 ),
    .O(\receive/nBaudCount_addsub0000 [2])
  );
  MUXCY   \receive/Madd_nBaudCount_addsub0000_cy<2>  (
    .CI(\receive/Madd_nBaudCount_addsub0000_cy [1]),
    .DI(LED_7_OBUF_116),
    .S(\receive/Madd_nBaudCount_addsub0000_cy<2>_rt_673 ),
    .O(\receive/Madd_nBaudCount_addsub0000_cy [2])
  );
  XORCY   \receive/Madd_nBaudCount_addsub0000_xor<1>  (
    .CI(\receive/Madd_nBaudCount_addsub0000_cy [0]),
    .LI(\receive/Madd_nBaudCount_addsub0000_cy<1>_rt_671 ),
    .O(\receive/nBaudCount_addsub0000 [1])
  );
  MUXCY   \receive/Madd_nBaudCount_addsub0000_cy<1>  (
    .CI(\receive/Madd_nBaudCount_addsub0000_cy [0]),
    .DI(LED_7_OBUF_116),
    .S(\receive/Madd_nBaudCount_addsub0000_cy<1>_rt_671 ),
    .O(\receive/Madd_nBaudCount_addsub0000_cy [1])
  );
  XORCY   \receive/Madd_nBaudCount_addsub0000_xor<0>  (
    .CI(LED_7_OBUF_116),
    .LI(\receive/Madd_nBaudCount_addsub0000_lut [0]),
    .O(\receive/nBaudCount_addsub0000 [0])
  );
  MUXCY   \receive/Madd_nBaudCount_addsub0000_cy<0>  (
    .CI(LED_7_OBUF_116),
    .DI(N1),
    .S(\receive/Madd_nBaudCount_addsub0000_lut [0]),
    .O(\receive/Madd_nBaudCount_addsub0000_cy [0])
  );
  FDC   \receive/bitCount_3  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\receive/nBitCount [3]),
    .Q(\receive/bitCount [3])
  );
  FDC   \receive/bitCount_2  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\receive/nBitCount [2]),
    .Q(\receive/bitCount [2])
  );
  FDC   \receive/bitCount_1  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\receive/nBitCount [1]),
    .Q(\receive/bitCount [1])
  );
  FDC   \receive/bitCount_0  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\receive/nBitCount [0]),
    .Q(\receive/bitCount [0])
  );
  FDC   \receive/START  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\receive/nSTART ),
    .Q(\receive/START_723 )
  );
  FDC   \receive/LOAD  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\receive/nLOAD ),
    .Q(\receive/LOAD_654 )
  );
  FDC   \receive/baudCount_17  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\receive/nBaudCount [17]),
    .Q(\receive/baudCount [17])
  );
  FDC   \receive/baudCount_16  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\receive/nBaudCount [16]),
    .Q(\receive/baudCount [16])
  );
  FDC   \receive/baudCount_15  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\receive/nBaudCount [15]),
    .Q(\receive/baudCount [15])
  );
  FDC   \receive/baudCount_14  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\receive/nBaudCount [14]),
    .Q(\receive/baudCount [14])
  );
  FDC   \receive/baudCount_13  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\receive/nBaudCount [13]),
    .Q(\receive/baudCount [13])
  );
  FDC   \receive/baudCount_12  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\receive/nBaudCount [12]),
    .Q(\receive/baudCount [12])
  );
  FDC   \receive/baudCount_11  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\receive/nBaudCount [11]),
    .Q(\receive/baudCount [11])
  );
  FDC   \receive/baudCount_10  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\receive/nBaudCount [10]),
    .Q(\receive/baudCount [10])
  );
  FDC   \receive/baudCount_9  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\receive/nBaudCount [9]),
    .Q(\receive/baudCount [9])
  );
  FDC   \receive/baudCount_8  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\receive/nBaudCount [8]),
    .Q(\receive/baudCount [8])
  );
  FDC   \receive/baudCount_7  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\receive/nBaudCount [7]),
    .Q(\receive/baudCount [7])
  );
  FDC   \receive/baudCount_6  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\receive/nBaudCount [6]),
    .Q(\receive/baudCount [6])
  );
  FDC   \receive/baudCount_5  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\receive/nBaudCount [5]),
    .Q(\receive/baudCount [5])
  );
  FDC   \receive/baudCount_4  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\receive/nBaudCount [4]),
    .Q(\receive/baudCount [4])
  );
  FDC   \receive/baudCount_3  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\receive/nBaudCount [3]),
    .Q(\receive/baudCount [3])
  );
  FDC   \receive/baudCount_2  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\receive/nBaudCount [2]),
    .Q(\receive/baudCount [2])
  );
  FDC   \receive/baudCount_1  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\receive/nBaudCount [1]),
    .Q(\receive/baudCount [1])
  );
  FDC   \receive/baudCount_0  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\receive/nBaudCount [0]),
    .Q(\receive/baudCount [0])
  );
  FDCE   \receive/data_7  (
    .C(clk_BUFGP_223),
    .CE(\receive/doneDelay_756 ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\receive/b7 ),
    .Q(\receive/data [7])
  );
  FDCE   \receive/data_6  (
    .C(clk_BUFGP_223),
    .CE(\receive/doneDelay_756 ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\receive/sreg_data [6]),
    .Q(\receive/data [6])
  );
  FDCE   \receive/data_5  (
    .C(clk_BUFGP_223),
    .CE(\receive/doneDelay_756 ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\receive/sreg_data [5]),
    .Q(\receive/data [5])
  );
  FDCE   \receive/data_4  (
    .C(clk_BUFGP_223),
    .CE(\receive/doneDelay_756 ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\receive/sreg_data [4]),
    .Q(\receive/data [4])
  );
  FDCE   \receive/data_3  (
    .C(clk_BUFGP_223),
    .CE(\receive/doneDelay_756 ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\receive/sreg_data [3]),
    .Q(\receive/data [3])
  );
  FDCE   \receive/data_2  (
    .C(clk_BUFGP_223),
    .CE(\receive/doneDelay_756 ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\receive/sreg_data [2]),
    .Q(\receive/data [2])
  );
  FDCE   \receive/data_1  (
    .C(clk_BUFGP_223),
    .CE(\receive/doneDelay_756 ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\receive/sreg_data [1]),
    .Q(\receive/data [1])
  );
  FDCE   \receive/data_0  (
    .C(clk_BUFGP_223),
    .CE(\receive/doneDelay_756 ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\receive/sreg_data [0]),
    .Q(\receive/data [0])
  );
  FDC   \receive/doneDelay  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\receive/bcu ),
    .Q(\receive/doneDelay_756 )
  );
  FDCE   \receive/PARITY_ERR  (
    .C(clk_BUFGP_223),
    .CE(\receive/PARITY_ERR_not0001 ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\receive/parityResult ),
    .Q(\receive/PARITY_ERR_710 )
  );
  FDPE   \receive/sreg_data_0  (
    .C(clk_BUFGP_223),
    .CE(\receive/sreg_data_8_not0001 ),
    .D(\receive/sreg_data_0_mux0000 ),
    .PRE(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .Q(\receive/sreg_data [0])
  );
  FDPE   \receive/sreg_data_2  (
    .C(clk_BUFGP_223),
    .CE(\receive/sreg_data_8_not0001 ),
    .D(\receive/sreg_data_2_mux0000 ),
    .PRE(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .Q(\receive/sreg_data [2])
  );
  FDPE   \receive/sreg_data_3  (
    .C(clk_BUFGP_223),
    .CE(\receive/sreg_data_8_not0001 ),
    .D(\receive/sreg_data_3_mux0000 ),
    .PRE(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .Q(\receive/sreg_data [3])
  );
  FDPE   \receive/sreg_data_1  (
    .C(clk_BUFGP_223),
    .CE(\receive/sreg_data_8_not0001 ),
    .D(\receive/sreg_data_1_mux0000 ),
    .PRE(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .Q(\receive/sreg_data [1])
  );
  FDPE   \receive/sreg_data_4  (
    .C(clk_BUFGP_223),
    .CE(\receive/sreg_data_8_not0001 ),
    .D(\receive/sreg_data_4_mux0000 ),
    .PRE(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .Q(\receive/sreg_data [4])
  );
  FDPE   \receive/sreg_data_5  (
    .C(clk_BUFGP_223),
    .CE(\receive/sreg_data_8_not0001 ),
    .D(\receive/sreg_data_5_mux0000 ),
    .PRE(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .Q(\receive/sreg_data [5])
  );
  FDPE   \receive/sreg_data_6  (
    .C(clk_BUFGP_223),
    .CE(\receive/sreg_data_8_not0001 ),
    .D(\receive/sreg_data_6_mux0000 ),
    .PRE(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .Q(\receive/sreg_data [6])
  );
  FDPE   \receive/sreg_data_7  (
    .C(clk_BUFGP_223),
    .CE(\receive/sreg_data_8_not0001 ),
    .D(\receive/sreg_data_7_mux0000 ),
    .PRE(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .Q(\receive/sreg_data [7])
  );
  FDC   \receive/DOIT  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\receive/nDOIT ),
    .Q(\receive/DOIT_653 )
  );
  FDPE   \receive/sreg_data_8  (
    .C(clk_BUFGP_223),
    .CE(\receive/sreg_data_8_not0001 ),
    .D(\receive/sreg_data_8_mux0000 ),
    .PRE(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .Q(\receive/sreg_data [8])
  );
  FDCE   \receive/OVERFLOW  (
    .C(clk_BUFGP_223),
    .CE(\receive/OVERFLOW_not0001 ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\receive/sSet ),
    .Q(\receive/OVERFLOW_708 )
  );
  FDPE   \receive/RxRdy  (
    .C(clk_BUFGP_223),
    .CE(\receive/RxRdy_not0001_721 ),
    .D(\receive/RxSet ),
    .PRE(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .Q(\receive/RxRdy_720 )
  );
  XORCY   \ekcp3/processor/count_xor_4  (
    .CI(\ekcp3/processor/stack_address_carry [3]),
    .LI(\ekcp3/processor/half_stack_address [4]),
    .O(\ekcp3/processor/next_stack_address [4])
  );
  LUT4 #(
    .INIT ( 16'hA999 ))
  \ekcp3/processor/count_lut_4  (
    .I0(\ekcp3/processor/stack_address [4]),
    .I1(\ekcp3/processor/t_state ),
    .I2(\ekcp3/processor/valid_to_move ),
    .I3(\ekcp3/processor/call_type ),
    .O(\ekcp3/processor/half_stack_address [4])
  );
  XORCY   \ekcp3/processor/count_xor_3  (
    .CI(\ekcp3/processor/stack_address_carry [2]),
    .LI(\ekcp3/processor/half_stack_address [3]),
    .O(\ekcp3/processor/next_stack_address [3])
  );
  MUXCY   \ekcp3/processor/count_muxcy_3  (
    .CI(\ekcp3/processor/stack_address_carry [2]),
    .DI(\ekcp3/processor/stack_address [3]),
    .S(\ekcp3/processor/half_stack_address [3]),
    .O(\ekcp3/processor/stack_address_carry [3])
  );
  LUT4 #(
    .INIT ( 16'hA999 ))
  \ekcp3/processor/count_lut_3  (
    .I0(\ekcp3/processor/stack_address [3]),
    .I1(\ekcp3/processor/t_state ),
    .I2(\ekcp3/processor/valid_to_move ),
    .I3(\ekcp3/processor/call_type ),
    .O(\ekcp3/processor/half_stack_address [3])
  );
  XORCY   \ekcp3/processor/count_xor_2  (
    .CI(\ekcp3/processor/stack_address_carry [1]),
    .LI(\ekcp3/processor/half_stack_address [2]),
    .O(\ekcp3/processor/next_stack_address [2])
  );
  MUXCY   \ekcp3/processor/count_muxcy_2  (
    .CI(\ekcp3/processor/stack_address_carry [1]),
    .DI(\ekcp3/processor/stack_address [2]),
    .S(\ekcp3/processor/half_stack_address [2]),
    .O(\ekcp3/processor/stack_address_carry [2])
  );
  LUT4 #(
    .INIT ( 16'hA999 ))
  \ekcp3/processor/count_lut_2  (
    .I0(\ekcp3/processor/stack_address [2]),
    .I1(\ekcp3/processor/t_state ),
    .I2(\ekcp3/processor/valid_to_move ),
    .I3(\ekcp3/processor/call_type ),
    .O(\ekcp3/processor/half_stack_address [2])
  );
  XORCY   \ekcp3/processor/count_xor_1  (
    .CI(\ekcp3/processor/stack_address_carry [0]),
    .LI(\ekcp3/processor/half_stack_address [1]),
    .O(\ekcp3/processor/next_stack_address [1])
  );
  MUXCY   \ekcp3/processor/count_muxcy_1  (
    .CI(\ekcp3/processor/stack_address_carry [0]),
    .DI(\ekcp3/processor/stack_address [1]),
    .S(\ekcp3/processor/half_stack_address [1]),
    .O(\ekcp3/processor/stack_address_carry [1])
  );
  LUT4 #(
    .INIT ( 16'hA999 ))
  \ekcp3/processor/count_lut_1  (
    .I0(\ekcp3/processor/stack_address [1]),
    .I1(\ekcp3/processor/t_state ),
    .I2(\ekcp3/processor/valid_to_move ),
    .I3(\ekcp3/processor/call_type ),
    .O(\ekcp3/processor/half_stack_address [1])
  );
  XORCY   \ekcp3/processor/count_xor_0  (
    .CI(LED_7_OBUF_116),
    .LI(\ekcp3/processor/half_stack_address [0]),
    .O(\ekcp3/processor/next_stack_address [0])
  );
  MUXCY   \ekcp3/processor/count_muxcy_0  (
    .CI(LED_7_OBUF_116),
    .DI(\ekcp3/processor/stack_address [0]),
    .S(\ekcp3/processor/half_stack_address [0]),
    .O(\ekcp3/processor/stack_address_carry [0])
  );
  LUT4 #(
    .INIT ( 16'h6555 ))
  \ekcp3/processor/count_lut_0  (
    .I0(\ekcp3/processor/stack_address [0]),
    .I1(\ekcp3/processor/t_state ),
    .I2(\ekcp3/processor/valid_to_move ),
    .I3(\ekcp3/processor/push_or_pop_type ),
    .O(\ekcp3/processor/half_stack_address [0])
  );
  INV   \ekcp3/processor/stack_count_inv  (
    .I(\ekcp3/processor/active_interrupt ),
    .O(\ekcp3/processor/not_active_interrupt )
  );
  RAM32X1S #(
    .INIT ( 32'h00000000 ))
  \ekcp3/processor/stack_bit_9  (
    .A0(\ekcp3/processor/stack_address [0]),
    .A1(\ekcp3/processor/stack_address [1]),
    .A2(\ekcp3/processor/stack_address [2]),
    .A3(\ekcp3/processor/stack_address [3]),
    .A4(\ekcp3/processor/stack_address [4]),
    .D(\ekcp3/address [9]),
    .WCLK(clk_BUFGP_223),
    .WE(\ekcp3/processor/stack_write_enable ),
    .O(\ekcp3/processor/stack_ram_data [9])
  );
  RAM32X1S #(
    .INIT ( 32'h00000000 ))
  \ekcp3/processor/stack_bit_8  (
    .A0(\ekcp3/processor/stack_address [0]),
    .A1(\ekcp3/processor/stack_address [1]),
    .A2(\ekcp3/processor/stack_address [2]),
    .A3(\ekcp3/processor/stack_address [3]),
    .A4(\ekcp3/processor/stack_address [4]),
    .D(\ekcp3/address [8]),
    .WCLK(clk_BUFGP_223),
    .WE(\ekcp3/processor/stack_write_enable ),
    .O(\ekcp3/processor/stack_ram_data [8])
  );
  RAM32X1S #(
    .INIT ( 32'h00000000 ))
  \ekcp3/processor/stack_bit_7  (
    .A0(\ekcp3/processor/stack_address [0]),
    .A1(\ekcp3/processor/stack_address [1]),
    .A2(\ekcp3/processor/stack_address [2]),
    .A3(\ekcp3/processor/stack_address [3]),
    .A4(\ekcp3/processor/stack_address [4]),
    .D(\ekcp3/address [7]),
    .WCLK(clk_BUFGP_223),
    .WE(\ekcp3/processor/stack_write_enable ),
    .O(\ekcp3/processor/stack_ram_data [7])
  );
  RAM32X1S #(
    .INIT ( 32'h00000000 ))
  \ekcp3/processor/stack_bit_6  (
    .A0(\ekcp3/processor/stack_address [0]),
    .A1(\ekcp3/processor/stack_address [1]),
    .A2(\ekcp3/processor/stack_address [2]),
    .A3(\ekcp3/processor/stack_address [3]),
    .A4(\ekcp3/processor/stack_address [4]),
    .D(\ekcp3/address [6]),
    .WCLK(clk_BUFGP_223),
    .WE(\ekcp3/processor/stack_write_enable ),
    .O(\ekcp3/processor/stack_ram_data [6])
  );
  RAM32X1S #(
    .INIT ( 32'h00000000 ))
  \ekcp3/processor/stack_bit_5  (
    .A0(\ekcp3/processor/stack_address [0]),
    .A1(\ekcp3/processor/stack_address [1]),
    .A2(\ekcp3/processor/stack_address [2]),
    .A3(\ekcp3/processor/stack_address [3]),
    .A4(\ekcp3/processor/stack_address [4]),
    .D(\ekcp3/address [5]),
    .WCLK(clk_BUFGP_223),
    .WE(\ekcp3/processor/stack_write_enable ),
    .O(\ekcp3/processor/stack_ram_data [5])
  );
  RAM32X1S #(
    .INIT ( 32'h00000000 ))
  \ekcp3/processor/stack_bit_4  (
    .A0(\ekcp3/processor/stack_address [0]),
    .A1(\ekcp3/processor/stack_address [1]),
    .A2(\ekcp3/processor/stack_address [2]),
    .A3(\ekcp3/processor/stack_address [3]),
    .A4(\ekcp3/processor/stack_address [4]),
    .D(\ekcp3/address [4]),
    .WCLK(clk_BUFGP_223),
    .WE(\ekcp3/processor/stack_write_enable ),
    .O(\ekcp3/processor/stack_ram_data [4])
  );
  RAM32X1S #(
    .INIT ( 32'h00000000 ))
  \ekcp3/processor/stack_bit_3  (
    .A0(\ekcp3/processor/stack_address [0]),
    .A1(\ekcp3/processor/stack_address [1]),
    .A2(\ekcp3/processor/stack_address [2]),
    .A3(\ekcp3/processor/stack_address [3]),
    .A4(\ekcp3/processor/stack_address [4]),
    .D(\ekcp3/address [3]),
    .WCLK(clk_BUFGP_223),
    .WE(\ekcp3/processor/stack_write_enable ),
    .O(\ekcp3/processor/stack_ram_data [3])
  );
  RAM32X1S #(
    .INIT ( 32'h00000000 ))
  \ekcp3/processor/stack_bit_2  (
    .A0(\ekcp3/processor/stack_address [0]),
    .A1(\ekcp3/processor/stack_address [1]),
    .A2(\ekcp3/processor/stack_address [2]),
    .A3(\ekcp3/processor/stack_address [3]),
    .A4(\ekcp3/processor/stack_address [4]),
    .D(\ekcp3/address [2]),
    .WCLK(clk_BUFGP_223),
    .WE(\ekcp3/processor/stack_write_enable ),
    .O(\ekcp3/processor/stack_ram_data [2])
  );
  RAM32X1S #(
    .INIT ( 32'h00000000 ))
  \ekcp3/processor/stack_bit_1  (
    .A0(\ekcp3/processor/stack_address [0]),
    .A1(\ekcp3/processor/stack_address [1]),
    .A2(\ekcp3/processor/stack_address [2]),
    .A3(\ekcp3/processor/stack_address [3]),
    .A4(\ekcp3/processor/stack_address [4]),
    .D(\ekcp3/address [1]),
    .WCLK(clk_BUFGP_223),
    .WE(\ekcp3/processor/stack_write_enable ),
    .O(\ekcp3/processor/stack_ram_data [1])
  );
  RAM32X1S #(
    .INIT ( 32'h00000000 ))
  \ekcp3/processor/stack_bit_0  (
    .A0(\ekcp3/processor/stack_address [0]),
    .A1(\ekcp3/processor/stack_address [1]),
    .A2(\ekcp3/processor/stack_address [2]),
    .A3(\ekcp3/processor/stack_address [3]),
    .A4(\ekcp3/processor/stack_address [4]),
    .D(\ekcp3/address [0]),
    .WCLK(clk_BUFGP_223),
    .WE(\ekcp3/processor/stack_write_enable ),
    .O(\ekcp3/processor/stack_ram_data [0])
  );
  INV   \ekcp3/processor/stack_ram_inv  (
    .I(\ekcp3/processor/t_state ),
    .O(\ekcp3/processor/stack_write_enable )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \ekcp3/processor/read_active_lut  (
    .I0(\ekcp3/processor/t_state ),
    .I1(\ekcp3/instruction [15]),
    .I2(\ekcp3/instruction [17]),
    .I3(\ekcp3/processor/io_initial_decode ),
    .O(\ekcp3/processor/read_active )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \ekcp3/processor/write_active_lut  (
    .I0(\ekcp3/processor/t_state ),
    .I1(\ekcp3/instruction [15]),
    .I2(\ekcp3/instruction [17]),
    .I3(\ekcp3/processor/io_initial_decode ),
    .O(\ekcp3/processor/write_active )
  );
  LUT4 #(
    .INIT ( 16'h0010 ))
  \ekcp3/processor/io_decode_lut  (
    .I0(\ekcp3/processor/active_interrupt ),
    .I1(\ekcp3/instruction [13]),
    .I2(\ekcp3/instruction [14]),
    .I3(\ekcp3/instruction [16]),
    .O(\ekcp3/processor/io_initial_decode )
  );
  MUXF5   \ekcp3/processor/shift_in_muxf5_7  (
    .I0(\ekcp3/processor/alu_group [7]),
    .I1(\ekcp3/processor/input_group [7]),
    .S(\ekcp3/processor/sel_group ),
    .O(\ekcp3/processor/alu_result [7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ekcp3/processor/mux_lut_7  (
    .I0(\ekcp3/instruction [13]),
    .I1(in_port[7]),
    .I2(\ekcp3/processor/store_data [7]),
    .O(\ekcp3/processor/input_group [7])
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \ekcp3/processor/or_lut_7  (
    .I0(\ekcp3/processor/logical_result [7]),
    .I1(\ekcp3/processor/arith_result [7]),
    .I2(\ekcp3/processor/shift_result [7]),
    .O(\ekcp3/processor/alu_group [7])
  );
  MUXF5   \ekcp3/processor/shift_in_muxf5_6  (
    .I0(\ekcp3/processor/alu_group [6]),
    .I1(\ekcp3/processor/input_group [6]),
    .S(\ekcp3/processor/sel_group ),
    .O(\ekcp3/processor/alu_result [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ekcp3/processor/mux_lut_6  (
    .I0(\ekcp3/instruction [13]),
    .I1(in_port[6]),
    .I2(\ekcp3/processor/store_data [6]),
    .O(\ekcp3/processor/input_group [6])
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \ekcp3/processor/or_lut_6  (
    .I0(\ekcp3/processor/logical_result [6]),
    .I1(\ekcp3/processor/arith_result [6]),
    .I2(\ekcp3/processor/shift_result [6]),
    .O(\ekcp3/processor/alu_group [6])
  );
  MUXF5   \ekcp3/processor/shift_in_muxf5_5  (
    .I0(\ekcp3/processor/alu_group [5]),
    .I1(\ekcp3/processor/input_group [5]),
    .S(\ekcp3/processor/sel_group ),
    .O(\ekcp3/processor/alu_result [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ekcp3/processor/mux_lut_5  (
    .I0(\ekcp3/instruction [13]),
    .I1(in_port[5]),
    .I2(\ekcp3/processor/store_data [5]),
    .O(\ekcp3/processor/input_group [5])
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \ekcp3/processor/or_lut_5  (
    .I0(\ekcp3/processor/logical_result [5]),
    .I1(\ekcp3/processor/arith_result [5]),
    .I2(\ekcp3/processor/shift_result [5]),
    .O(\ekcp3/processor/alu_group [5])
  );
  MUXF5   \ekcp3/processor/shift_in_muxf5_4  (
    .I0(\ekcp3/processor/alu_group [4]),
    .I1(\ekcp3/processor/input_group [4]),
    .S(\ekcp3/processor/sel_group ),
    .O(\ekcp3/processor/alu_result [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ekcp3/processor/mux_lut_4  (
    .I0(\ekcp3/instruction [13]),
    .I1(in_port[4]),
    .I2(\ekcp3/processor/store_data [4]),
    .O(\ekcp3/processor/input_group [4])
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \ekcp3/processor/or_lut_4  (
    .I0(\ekcp3/processor/logical_result [4]),
    .I1(\ekcp3/processor/arith_result [4]),
    .I2(\ekcp3/processor/shift_result [4]),
    .O(\ekcp3/processor/alu_group [4])
  );
  MUXF5   \ekcp3/processor/shift_in_muxf5_3  (
    .I0(\ekcp3/processor/alu_group [3]),
    .I1(\ekcp3/processor/input_group [3]),
    .S(\ekcp3/processor/sel_group ),
    .O(\ekcp3/processor/alu_result [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ekcp3/processor/mux_lut_3  (
    .I0(\ekcp3/instruction [13]),
    .I1(in_port[3]),
    .I2(\ekcp3/processor/store_data [3]),
    .O(\ekcp3/processor/input_group [3])
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \ekcp3/processor/or_lut_3  (
    .I0(\ekcp3/processor/logical_result [3]),
    .I1(\ekcp3/processor/arith_result [3]),
    .I2(\ekcp3/processor/shift_result [3]),
    .O(\ekcp3/processor/alu_group [3])
  );
  MUXF5   \ekcp3/processor/shift_in_muxf5_2  (
    .I0(\ekcp3/processor/alu_group [2]),
    .I1(\ekcp3/processor/input_group [2]),
    .S(\ekcp3/processor/sel_group ),
    .O(\ekcp3/processor/alu_result [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ekcp3/processor/mux_lut_2  (
    .I0(\ekcp3/instruction [13]),
    .I1(in_port[2]),
    .I2(\ekcp3/processor/store_data [2]),
    .O(\ekcp3/processor/input_group [2])
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \ekcp3/processor/or_lut_2  (
    .I0(\ekcp3/processor/logical_result [2]),
    .I1(\ekcp3/processor/arith_result [2]),
    .I2(\ekcp3/processor/shift_result [2]),
    .O(\ekcp3/processor/alu_group [2])
  );
  MUXF5   \ekcp3/processor/shift_in_muxf5_1  (
    .I0(\ekcp3/processor/alu_group [1]),
    .I1(\ekcp3/processor/input_group [1]),
    .S(\ekcp3/processor/sel_group ),
    .O(\ekcp3/processor/alu_result [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ekcp3/processor/mux_lut_1  (
    .I0(\ekcp3/instruction [13]),
    .I1(in_port[1]),
    .I2(\ekcp3/processor/store_data [1]),
    .O(\ekcp3/processor/input_group [1])
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \ekcp3/processor/or_lut_1  (
    .I0(\ekcp3/processor/logical_result [1]),
    .I1(\ekcp3/processor/arith_result [1]),
    .I2(\ekcp3/processor/shift_result [1]),
    .O(\ekcp3/processor/alu_group [1])
  );
  MUXF5   \ekcp3/processor/shift_in_muxf5_0  (
    .I0(\ekcp3/processor/alu_group [0]),
    .I1(\ekcp3/processor/input_group [0]),
    .S(\ekcp3/processor/sel_group ),
    .O(\ekcp3/processor/alu_result [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ekcp3/processor/mux_lut_0  (
    .I0(\ekcp3/instruction [13]),
    .I1(in_port[0]),
    .I2(\ekcp3/processor/store_data [0]),
    .O(\ekcp3/processor/input_group [0])
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \ekcp3/processor/or_lut_0  (
    .I0(\ekcp3/processor/logical_result [0]),
    .I1(\ekcp3/processor/arith_result [0]),
    .I2(\ekcp3/processor/shift_result [0]),
    .O(\ekcp3/processor/alu_group [0])
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \ekcp3/processor/input_fetch_type_lut  (
    .I0(\ekcp3/instruction [14]),
    .I1(\ekcp3/instruction [15]),
    .I2(\ekcp3/instruction [16]),
    .I3(\ekcp3/instruction [17]),
    .O(\ekcp3/processor/input_fetch_type )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \ekcp3/processor/arith_lut_7  (
    .I0(out_port[7]),
    .I1(port_id[7]),
    .I2(\ekcp3/instruction [14]),
    .O(\ekcp3/processor/half_arith [7])
  );
  XORCY   \ekcp3/processor/arith_carry_out_xor  (
    .CI(\ekcp3/processor/arith_internal_carry [7]),
    .LI(\ekcp3/processor/invert_arith_carry ),
    .O(\ekcp3/processor/arith_carry_out )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ekcp3/processor/arith_carry_out_lut  (
    .I0(\ekcp3/instruction [14]),
    .O(\ekcp3/processor/invert_arith_carry )
  );
  XORCY   \ekcp3/processor/arith_xor_7  (
    .CI(\ekcp3/processor/arith_internal_carry [6]),
    .LI(\ekcp3/processor/half_arith [7]),
    .O(\ekcp3/processor/arith_value [7])
  );
  MUXCY   \ekcp3/processor/arith_muxcy_7  (
    .CI(\ekcp3/processor/arith_internal_carry [6]),
    .DI(out_port[7]),
    .S(\ekcp3/processor/half_arith [7]),
    .O(\ekcp3/processor/arith_internal_carry [7])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \ekcp3/processor/arith_lut_6  (
    .I0(out_port[6]),
    .I1(port_id[6]),
    .I2(\ekcp3/instruction [14]),
    .O(\ekcp3/processor/half_arith [6])
  );
  XORCY   \ekcp3/processor/arith_xor_6  (
    .CI(\ekcp3/processor/arith_internal_carry [5]),
    .LI(\ekcp3/processor/half_arith [6]),
    .O(\ekcp3/processor/arith_value [6])
  );
  MUXCY   \ekcp3/processor/arith_muxcy_6  (
    .CI(\ekcp3/processor/arith_internal_carry [5]),
    .DI(out_port[6]),
    .S(\ekcp3/processor/half_arith [6]),
    .O(\ekcp3/processor/arith_internal_carry [6])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \ekcp3/processor/arith_lut_5  (
    .I0(out_port[5]),
    .I1(port_id[5]),
    .I2(\ekcp3/instruction [14]),
    .O(\ekcp3/processor/half_arith [5])
  );
  XORCY   \ekcp3/processor/arith_xor_5  (
    .CI(\ekcp3/processor/arith_internal_carry [4]),
    .LI(\ekcp3/processor/half_arith [5]),
    .O(\ekcp3/processor/arith_value [5])
  );
  MUXCY   \ekcp3/processor/arith_muxcy_5  (
    .CI(\ekcp3/processor/arith_internal_carry [4]),
    .DI(out_port[5]),
    .S(\ekcp3/processor/half_arith [5]),
    .O(\ekcp3/processor/arith_internal_carry [5])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \ekcp3/processor/arith_lut_4  (
    .I0(out_port[4]),
    .I1(port_id[4]),
    .I2(\ekcp3/instruction [14]),
    .O(\ekcp3/processor/half_arith [4])
  );
  XORCY   \ekcp3/processor/arith_xor_4  (
    .CI(\ekcp3/processor/arith_internal_carry [3]),
    .LI(\ekcp3/processor/half_arith [4]),
    .O(\ekcp3/processor/arith_value [4])
  );
  MUXCY   \ekcp3/processor/arith_muxcy_4  (
    .CI(\ekcp3/processor/arith_internal_carry [3]),
    .DI(out_port[4]),
    .S(\ekcp3/processor/half_arith [4]),
    .O(\ekcp3/processor/arith_internal_carry [4])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \ekcp3/processor/arith_lut_3  (
    .I0(out_port[3]),
    .I1(port_id[3]),
    .I2(\ekcp3/instruction [14]),
    .O(\ekcp3/processor/half_arith [3])
  );
  XORCY   \ekcp3/processor/arith_xor_3  (
    .CI(\ekcp3/processor/arith_internal_carry [2]),
    .LI(\ekcp3/processor/half_arith [3]),
    .O(\ekcp3/processor/arith_value [3])
  );
  MUXCY   \ekcp3/processor/arith_muxcy_3  (
    .CI(\ekcp3/processor/arith_internal_carry [2]),
    .DI(out_port[3]),
    .S(\ekcp3/processor/half_arith [3]),
    .O(\ekcp3/processor/arith_internal_carry [3])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \ekcp3/processor/arith_lut_2  (
    .I0(out_port[2]),
    .I1(port_id[2]),
    .I2(\ekcp3/instruction [14]),
    .O(\ekcp3/processor/half_arith [2])
  );
  XORCY   \ekcp3/processor/arith_xor_2  (
    .CI(\ekcp3/processor/arith_internal_carry [1]),
    .LI(\ekcp3/processor/half_arith [2]),
    .O(\ekcp3/processor/arith_value [2])
  );
  MUXCY   \ekcp3/processor/arith_muxcy_2  (
    .CI(\ekcp3/processor/arith_internal_carry [1]),
    .DI(out_port[2]),
    .S(\ekcp3/processor/half_arith [2]),
    .O(\ekcp3/processor/arith_internal_carry [2])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \ekcp3/processor/arith_lut_1  (
    .I0(out_port[1]),
    .I1(port_id[1]),
    .I2(\ekcp3/instruction [14]),
    .O(\ekcp3/processor/half_arith [1])
  );
  XORCY   \ekcp3/processor/arith_xor_1  (
    .CI(\ekcp3/processor/arith_internal_carry [0]),
    .LI(\ekcp3/processor/half_arith [1]),
    .O(\ekcp3/processor/arith_value [1])
  );
  MUXCY   \ekcp3/processor/arith_muxcy_1  (
    .CI(\ekcp3/processor/arith_internal_carry [0]),
    .DI(out_port[1]),
    .S(\ekcp3/processor/half_arith [1]),
    .O(\ekcp3/processor/arith_internal_carry [1])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \ekcp3/processor/arith_lut_0  (
    .I0(out_port[0]),
    .I1(port_id[0]),
    .I2(\ekcp3/instruction [14]),
    .O(\ekcp3/processor/half_arith [0])
  );
  XORCY   \ekcp3/processor/arith_xor_0  (
    .CI(\ekcp3/processor/arith_carry_in ),
    .LI(\ekcp3/processor/half_arith [0]),
    .O(\ekcp3/processor/arith_value [0])
  );
  MUXCY   \ekcp3/processor/arith_muxcy_0  (
    .CI(\ekcp3/processor/arith_carry_in ),
    .DI(out_port[0]),
    .S(\ekcp3/processor/half_arith [0]),
    .O(\ekcp3/processor/arith_internal_carry [0])
  );
  MUXCY   \ekcp3/processor/arith_carry_in_muxcy  (
    .CI(N1),
    .DI(LED_7_OBUF_116),
    .S(\ekcp3/processor/sel_arith_carry_in ),
    .O(\ekcp3/processor/arith_carry_in )
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \ekcp3/processor/arith_carry_in_lut  (
    .I0(\ekcp3/instruction [13]),
    .I1(\ekcp3/instruction [14]),
    .I2(\ekcp3/processor/carry_flag ),
    .O(\ekcp3/processor/sel_arith_carry_in )
  );
  LUT3 #(
    .INIT ( 8'h1F ))
  \ekcp3/processor/sel_arith_lut  (
    .I0(\ekcp3/instruction [14]),
    .I1(\ekcp3/instruction [15]),
    .I2(\ekcp3/instruction [16]),
    .O(\ekcp3/processor/sel_arith )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ekcp3/processor/shift_mux_lut_7  (
    .I0(\ekcp3/instruction [3]),
    .I1(out_port[6]),
    .I2(\ekcp3/processor/shift_in ),
    .O(\ekcp3/processor/shift_value [7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ekcp3/processor/shift_mux_lut_6  (
    .I0(\ekcp3/instruction [3]),
    .I1(out_port[5]),
    .I2(out_port[7]),
    .O(\ekcp3/processor/shift_value [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ekcp3/processor/shift_mux_lut_5  (
    .I0(\ekcp3/instruction [3]),
    .I1(out_port[4]),
    .I2(out_port[6]),
    .O(\ekcp3/processor/shift_value [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ekcp3/processor/shift_mux_lut_4  (
    .I0(\ekcp3/instruction [3]),
    .I1(out_port[3]),
    .I2(out_port[5]),
    .O(\ekcp3/processor/shift_value [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ekcp3/processor/shift_mux_lut_3  (
    .I0(\ekcp3/instruction [3]),
    .I1(out_port[2]),
    .I2(out_port[4]),
    .O(\ekcp3/processor/shift_value [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ekcp3/processor/shift_mux_lut_2  (
    .I0(\ekcp3/instruction [3]),
    .I1(out_port[1]),
    .I2(out_port[3]),
    .O(\ekcp3/processor/shift_value [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ekcp3/processor/shift_mux_lut_1  (
    .I0(\ekcp3/instruction [3]),
    .I1(out_port[0]),
    .I2(out_port[2]),
    .O(\ekcp3/processor/shift_value [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ekcp3/processor/shift_mux_lut_0  (
    .I0(\ekcp3/instruction [3]),
    .I1(\ekcp3/processor/shift_in ),
    .I2(out_port[1]),
    .O(\ekcp3/processor/shift_value [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ekcp3/processor/shift_carry_lut  (
    .I0(\ekcp3/instruction [3]),
    .I1(out_port[7]),
    .I2(out_port[0]),
    .O(\ekcp3/processor/shift_carry_value )
  );
  MUXF5   \ekcp3/processor/shift_in_muxf5  (
    .I0(\ekcp3/processor/low_shift_in ),
    .I1(\ekcp3/processor/high_shift_in ),
    .S(\ekcp3/instruction [2]),
    .O(\ekcp3/processor/shift_in )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ekcp3/processor/low_shift_in_lut  (
    .I0(\ekcp3/instruction [1]),
    .I1(\ekcp3/processor/carry_flag ),
    .I2(out_port[7]),
    .O(\ekcp3/processor/low_shift_in )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ekcp3/processor/high_shift_in_lut  (
    .I0(\ekcp3/instruction [1]),
    .I1(out_port[0]),
    .I2(\ekcp3/instruction [0]),
    .O(\ekcp3/processor/high_shift_in )
  );
  INV   \ekcp3/processor/sel_shift_inv  (
    .I(\ekcp3/instruction [17]),
    .O(\ekcp3/processor/sel_shift )
  );
  LUT4 #(
    .INIT ( 16'h6E8A ))
  \ekcp3/processor/logical_lut_7  (
    .I0(port_id[7]),
    .I1(out_port[7]),
    .I2(\ekcp3/instruction [13]),
    .I3(\ekcp3/instruction [14]),
    .O(\ekcp3/processor/logical_value [7])
  );
  LUT4 #(
    .INIT ( 16'h6E8A ))
  \ekcp3/processor/logical_lut_6  (
    .I0(port_id[6]),
    .I1(out_port[6]),
    .I2(\ekcp3/instruction [13]),
    .I3(\ekcp3/instruction [14]),
    .O(\ekcp3/processor/logical_value [6])
  );
  LUT4 #(
    .INIT ( 16'h6E8A ))
  \ekcp3/processor/logical_lut_5  (
    .I0(port_id[5]),
    .I1(out_port[5]),
    .I2(\ekcp3/instruction [13]),
    .I3(\ekcp3/instruction [14]),
    .O(\ekcp3/processor/logical_value [5])
  );
  LUT4 #(
    .INIT ( 16'h6E8A ))
  \ekcp3/processor/logical_lut_4  (
    .I0(port_id[4]),
    .I1(out_port[4]),
    .I2(\ekcp3/instruction [13]),
    .I3(\ekcp3/instruction [14]),
    .O(\ekcp3/processor/logical_value [4])
  );
  LUT4 #(
    .INIT ( 16'h6E8A ))
  \ekcp3/processor/logical_lut_3  (
    .I0(port_id[3]),
    .I1(out_port[3]),
    .I2(\ekcp3/instruction [13]),
    .I3(\ekcp3/instruction [14]),
    .O(\ekcp3/processor/logical_value [3])
  );
  LUT4 #(
    .INIT ( 16'h6E8A ))
  \ekcp3/processor/logical_lut_2  (
    .I0(port_id[2]),
    .I1(out_port[2]),
    .I2(\ekcp3/instruction [13]),
    .I3(\ekcp3/instruction [14]),
    .O(\ekcp3/processor/logical_value [2])
  );
  LUT4 #(
    .INIT ( 16'h6E8A ))
  \ekcp3/processor/logical_lut_1  (
    .I0(port_id[1]),
    .I1(out_port[1]),
    .I2(\ekcp3/instruction [13]),
    .I3(\ekcp3/instruction [14]),
    .O(\ekcp3/processor/logical_value [1])
  );
  LUT4 #(
    .INIT ( 16'h6E8A ))
  \ekcp3/processor/logical_lut_0  (
    .I0(port_id[0]),
    .I1(out_port[0]),
    .I2(\ekcp3/instruction [13]),
    .I3(\ekcp3/instruction [14]),
    .O(\ekcp3/processor/logical_value [0])
  );
  LUT4 #(
    .INIT ( 16'hFFE2 ))
  \ekcp3/processor/sel_logical_lut  (
    .I0(\ekcp3/instruction [14]),
    .I1(\ekcp3/instruction [15]),
    .I2(\ekcp3/instruction [16]),
    .I3(\ekcp3/instruction [17]),
    .O(\ekcp3/processor/sel_logical )
  );
  RAM64X1S #(
    .INIT ( 64'h0000000000000000 ))
  \ekcp3/processor/memory_bit_7  (
    .A0(port_id[0]),
    .A1(port_id[1]),
    .A2(port_id[2]),
    .A3(port_id[3]),
    .A4(port_id[4]),
    .A5(port_id[5]),
    .D(out_port[7]),
    .WCLK(clk_BUFGP_223),
    .WE(\ekcp3/processor/memory_enable ),
    .O(\ekcp3/processor/memory_data [7])
  );
  RAM64X1S #(
    .INIT ( 64'h0000000000000000 ))
  \ekcp3/processor/memory_bit_6  (
    .A0(port_id[0]),
    .A1(port_id[1]),
    .A2(port_id[2]),
    .A3(port_id[3]),
    .A4(port_id[4]),
    .A5(port_id[5]),
    .D(out_port[6]),
    .WCLK(clk_BUFGP_223),
    .WE(\ekcp3/processor/memory_enable ),
    .O(\ekcp3/processor/memory_data [6])
  );
  RAM64X1S #(
    .INIT ( 64'h0000000000000000 ))
  \ekcp3/processor/memory_bit_5  (
    .A0(port_id[0]),
    .A1(port_id[1]),
    .A2(port_id[2]),
    .A3(port_id[3]),
    .A4(port_id[4]),
    .A5(port_id[5]),
    .D(out_port[5]),
    .WCLK(clk_BUFGP_223),
    .WE(\ekcp3/processor/memory_enable ),
    .O(\ekcp3/processor/memory_data [5])
  );
  RAM64X1S #(
    .INIT ( 64'h0000000000000000 ))
  \ekcp3/processor/memory_bit_4  (
    .A0(port_id[0]),
    .A1(port_id[1]),
    .A2(port_id[2]),
    .A3(port_id[3]),
    .A4(port_id[4]),
    .A5(port_id[5]),
    .D(out_port[4]),
    .WCLK(clk_BUFGP_223),
    .WE(\ekcp3/processor/memory_enable ),
    .O(\ekcp3/processor/memory_data [4])
  );
  RAM64X1S #(
    .INIT ( 64'h0000000000000000 ))
  \ekcp3/processor/memory_bit_3  (
    .A0(port_id[0]),
    .A1(port_id[1]),
    .A2(port_id[2]),
    .A3(port_id[3]),
    .A4(port_id[4]),
    .A5(port_id[5]),
    .D(out_port[3]),
    .WCLK(clk_BUFGP_223),
    .WE(\ekcp3/processor/memory_enable ),
    .O(\ekcp3/processor/memory_data [3])
  );
  RAM64X1S #(
    .INIT ( 64'h0000000000000000 ))
  \ekcp3/processor/memory_bit_2  (
    .A0(port_id[0]),
    .A1(port_id[1]),
    .A2(port_id[2]),
    .A3(port_id[3]),
    .A4(port_id[4]),
    .A5(port_id[5]),
    .D(out_port[2]),
    .WCLK(clk_BUFGP_223),
    .WE(\ekcp3/processor/memory_enable ),
    .O(\ekcp3/processor/memory_data [2])
  );
  RAM64X1S #(
    .INIT ( 64'h0000000000000000 ))
  \ekcp3/processor/memory_bit_1  (
    .A0(port_id[0]),
    .A1(port_id[1]),
    .A2(port_id[2]),
    .A3(port_id[3]),
    .A4(port_id[4]),
    .A5(port_id[5]),
    .D(out_port[1]),
    .WCLK(clk_BUFGP_223),
    .WE(\ekcp3/processor/memory_enable ),
    .O(\ekcp3/processor/memory_data [1])
  );
  RAM64X1S #(
    .INIT ( 64'h0000000000000000 ))
  \ekcp3/processor/memory_bit_0  (
    .A0(port_id[0]),
    .A1(port_id[1]),
    .A2(port_id[2]),
    .A3(port_id[3]),
    .A4(port_id[4]),
    .A5(port_id[5]),
    .D(out_port[0]),
    .WCLK(clk_BUFGP_223),
    .WE(\ekcp3/processor/memory_enable ),
    .O(\ekcp3/processor/memory_data [0])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \ekcp3/processor/memory_enable_lut  (
    .I0(\ekcp3/processor/t_state ),
    .I1(\ekcp3/instruction [13]),
    .I2(\ekcp3/instruction [14]),
    .I3(\ekcp3/processor/memory_write ),
    .O(\ekcp3/processor/memory_enable )
  );
  LUT4 #(
    .INIT ( 16'h0400 ))
  \ekcp3/processor/memory_type_lut  (
    .I0(\ekcp3/processor/active_interrupt ),
    .I1(\ekcp3/instruction [15]),
    .I2(\ekcp3/instruction [16]),
    .I3(\ekcp3/instruction [17]),
    .O(\ekcp3/processor/memory_type )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ekcp3/processor/operand_select_mux_7  (
    .I0(\ekcp3/instruction [12]),
    .I1(\ekcp3/instruction [7]),
    .I2(\ekcp3/processor/sy [7]),
    .O(port_id[7])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \ekcp3/processor/reg_loop_register_bit_7  (
    .A0(\ekcp3/instruction [8]),
    .A1(\ekcp3/instruction [9]),
    .A2(\ekcp3/instruction [10]),
    .A3(\ekcp3/instruction [11]),
    .D(\ekcp3/processor/alu_result [7]),
    .DPRA0(\ekcp3/instruction [4]),
    .DPRA1(\ekcp3/instruction [5]),
    .DPRA2(\ekcp3/instruction [6]),
    .DPRA3(\ekcp3/instruction [7]),
    .WCLK(clk_BUFGP_223),
    .WE(\ekcp3/processor/register_enable ),
    .SPO(out_port[7]),
    .DPO(\ekcp3/processor/sy [7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ekcp3/processor/operand_select_mux_6  (
    .I0(\ekcp3/instruction [12]),
    .I1(\ekcp3/instruction [6]),
    .I2(\ekcp3/processor/sy [6]),
    .O(port_id[6])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \ekcp3/processor/reg_loop_register_bit_6  (
    .A0(\ekcp3/instruction [8]),
    .A1(\ekcp3/instruction [9]),
    .A2(\ekcp3/instruction [10]),
    .A3(\ekcp3/instruction [11]),
    .D(\ekcp3/processor/alu_result [6]),
    .DPRA0(\ekcp3/instruction [4]),
    .DPRA1(\ekcp3/instruction [5]),
    .DPRA2(\ekcp3/instruction [6]),
    .DPRA3(\ekcp3/instruction [7]),
    .WCLK(clk_BUFGP_223),
    .WE(\ekcp3/processor/register_enable ),
    .SPO(out_port[6]),
    .DPO(\ekcp3/processor/sy [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ekcp3/processor/operand_select_mux_5  (
    .I0(\ekcp3/instruction [12]),
    .I1(\ekcp3/instruction [5]),
    .I2(\ekcp3/processor/sy [5]),
    .O(port_id[5])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \ekcp3/processor/reg_loop_register_bit_5  (
    .A0(\ekcp3/instruction [8]),
    .A1(\ekcp3/instruction [9]),
    .A2(\ekcp3/instruction [10]),
    .A3(\ekcp3/instruction [11]),
    .D(\ekcp3/processor/alu_result [5]),
    .DPRA0(\ekcp3/instruction [4]),
    .DPRA1(\ekcp3/instruction [5]),
    .DPRA2(\ekcp3/instruction [6]),
    .DPRA3(\ekcp3/instruction [7]),
    .WCLK(clk_BUFGP_223),
    .WE(\ekcp3/processor/register_enable ),
    .SPO(out_port[5]),
    .DPO(\ekcp3/processor/sy [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ekcp3/processor/operand_select_mux_4  (
    .I0(\ekcp3/instruction [12]),
    .I1(\ekcp3/instruction [4]),
    .I2(\ekcp3/processor/sy [4]),
    .O(port_id[4])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \ekcp3/processor/reg_loop_register_bit_4  (
    .A0(\ekcp3/instruction [8]),
    .A1(\ekcp3/instruction [9]),
    .A2(\ekcp3/instruction [10]),
    .A3(\ekcp3/instruction [11]),
    .D(\ekcp3/processor/alu_result [4]),
    .DPRA0(\ekcp3/instruction [4]),
    .DPRA1(\ekcp3/instruction [5]),
    .DPRA2(\ekcp3/instruction [6]),
    .DPRA3(\ekcp3/instruction [7]),
    .WCLK(clk_BUFGP_223),
    .WE(\ekcp3/processor/register_enable ),
    .SPO(out_port[4]),
    .DPO(\ekcp3/processor/sy [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ekcp3/processor/operand_select_mux_3  (
    .I0(\ekcp3/instruction [12]),
    .I1(\ekcp3/instruction [3]),
    .I2(\ekcp3/processor/sy [3]),
    .O(port_id[3])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \ekcp3/processor/reg_loop_register_bit_3  (
    .A0(\ekcp3/instruction [8]),
    .A1(\ekcp3/instruction [9]),
    .A2(\ekcp3/instruction [10]),
    .A3(\ekcp3/instruction [11]),
    .D(\ekcp3/processor/alu_result [3]),
    .DPRA0(\ekcp3/instruction [4]),
    .DPRA1(\ekcp3/instruction [5]),
    .DPRA2(\ekcp3/instruction [6]),
    .DPRA3(\ekcp3/instruction [7]),
    .WCLK(clk_BUFGP_223),
    .WE(\ekcp3/processor/register_enable ),
    .SPO(out_port[3]),
    .DPO(\ekcp3/processor/sy [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ekcp3/processor/operand_select_mux_2  (
    .I0(\ekcp3/instruction [12]),
    .I1(\ekcp3/instruction [2]),
    .I2(\ekcp3/processor/sy [2]),
    .O(port_id[2])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \ekcp3/processor/reg_loop_register_bit_2  (
    .A0(\ekcp3/instruction [8]),
    .A1(\ekcp3/instruction [9]),
    .A2(\ekcp3/instruction [10]),
    .A3(\ekcp3/instruction [11]),
    .D(\ekcp3/processor/alu_result [2]),
    .DPRA0(\ekcp3/instruction [4]),
    .DPRA1(\ekcp3/instruction [5]),
    .DPRA2(\ekcp3/instruction [6]),
    .DPRA3(\ekcp3/instruction [7]),
    .WCLK(clk_BUFGP_223),
    .WE(\ekcp3/processor/register_enable ),
    .SPO(out_port[2]),
    .DPO(\ekcp3/processor/sy [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ekcp3/processor/operand_select_mux_1  (
    .I0(\ekcp3/instruction [12]),
    .I1(\ekcp3/instruction [1]),
    .I2(\ekcp3/processor/sy [1]),
    .O(port_id[1])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \ekcp3/processor/reg_loop_register_bit_1  (
    .A0(\ekcp3/instruction [8]),
    .A1(\ekcp3/instruction [9]),
    .A2(\ekcp3/instruction [10]),
    .A3(\ekcp3/instruction [11]),
    .D(\ekcp3/processor/alu_result [1]),
    .DPRA0(\ekcp3/instruction [4]),
    .DPRA1(\ekcp3/instruction [5]),
    .DPRA2(\ekcp3/instruction [6]),
    .DPRA3(\ekcp3/instruction [7]),
    .WCLK(clk_BUFGP_223),
    .WE(\ekcp3/processor/register_enable ),
    .SPO(out_port[1]),
    .DPO(\ekcp3/processor/sy [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ekcp3/processor/operand_select_mux_0  (
    .I0(\ekcp3/instruction [12]),
    .I1(\ekcp3/instruction [0]),
    .I2(\ekcp3/processor/sy [0]),
    .O(port_id[0])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \ekcp3/processor/reg_loop_register_bit_0  (
    .A0(\ekcp3/instruction [8]),
    .A1(\ekcp3/instruction [9]),
    .A2(\ekcp3/instruction [10]),
    .A3(\ekcp3/instruction [11]),
    .D(\ekcp3/processor/alu_result [0]),
    .DPRA0(\ekcp3/instruction [4]),
    .DPRA1(\ekcp3/instruction [5]),
    .DPRA2(\ekcp3/instruction [6]),
    .DPRA3(\ekcp3/instruction [7]),
    .WCLK(clk_BUFGP_223),
    .WE(\ekcp3/processor/register_enable ),
    .SPO(out_port[0]),
    .DPO(\ekcp3/processor/sy [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ekcp3/processor/register_enable_lut  (
    .I0(\ekcp3/processor/t_state ),
    .I1(\ekcp3/processor/register_write ),
    .O(\ekcp3/processor/register_enable )
  );
  LUT4 #(
    .INIT ( 16'h0145 ))
  \ekcp3/processor/register_type_lut  (
    .I0(\ekcp3/processor/active_interrupt ),
    .I1(\ekcp3/instruction [15]),
    .I2(\ekcp3/instruction [16]),
    .I3(\ekcp3/instruction [17]),
    .O(\ekcp3/processor/register_type )
  );
  XORCY   \ekcp3/processor/pc_value_xor_high  (
    .CI(\ekcp3/processor/pc_value_carry [8]),
    .LI(\ekcp3/processor/pc_value [9]),
    .O(\ekcp3/processor/inc_pc_value [9])
  );
  XORCY   \ekcp3/processor/pc_vector_xor_high  (
    .CI(\ekcp3/processor/pc_vector_carry [8]),
    .LI(\ekcp3/processor/pc_vector [9]),
    .O(\ekcp3/processor/inc_pc_vector [9])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ekcp3/processor/value_select_mux_9  (
    .I0(\ekcp3/processor/normal_count ),
    .I1(\ekcp3/processor/inc_pc_vector [9]),
    .I2(\ekcp3/address [9]),
    .O(\ekcp3/processor/pc_value [9])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ekcp3/processor/vector_select_mux_9  (
    .I0(\ekcp3/instruction [15]),
    .I1(\ekcp3/instruction [9]),
    .I2(\ekcp3/processor/stack_pop_data [9]),
    .O(\ekcp3/processor/pc_vector [9])
  );
  XORCY   \ekcp3/processor/pc_value_xor_8  (
    .CI(\ekcp3/processor/pc_value_carry [7]),
    .LI(\ekcp3/processor/pc_value [8]),
    .O(\ekcp3/processor/inc_pc_value [8])
  );
  MUXCY   \ekcp3/processor/pc_value_muxcy_8  (
    .CI(\ekcp3/processor/pc_value_carry [7]),
    .DI(LED_7_OBUF_116),
    .S(\ekcp3/processor/pc_value [8]),
    .O(\ekcp3/processor/pc_value_carry [8])
  );
  XORCY   \ekcp3/processor/pc_vector_xor_8  (
    .CI(\ekcp3/processor/pc_vector_carry [7]),
    .LI(\ekcp3/processor/pc_vector [8]),
    .O(\ekcp3/processor/inc_pc_vector [8])
  );
  MUXCY   \ekcp3/processor/pc_vector_muxcy_8  (
    .CI(\ekcp3/processor/pc_vector_carry [7]),
    .DI(LED_7_OBUF_116),
    .S(\ekcp3/processor/pc_vector [8]),
    .O(\ekcp3/processor/pc_vector_carry [8])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ekcp3/processor/value_select_mux_8  (
    .I0(\ekcp3/processor/normal_count ),
    .I1(\ekcp3/processor/inc_pc_vector [8]),
    .I2(\ekcp3/address [8]),
    .O(\ekcp3/processor/pc_value [8])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ekcp3/processor/vector_select_mux_8  (
    .I0(\ekcp3/instruction [15]),
    .I1(\ekcp3/instruction [8]),
    .I2(\ekcp3/processor/stack_pop_data [8]),
    .O(\ekcp3/processor/pc_vector [8])
  );
  XORCY   \ekcp3/processor/pc_value_xor_7  (
    .CI(\ekcp3/processor/pc_value_carry [6]),
    .LI(\ekcp3/processor/pc_value [7]),
    .O(\ekcp3/processor/inc_pc_value [7])
  );
  MUXCY   \ekcp3/processor/pc_value_muxcy_7  (
    .CI(\ekcp3/processor/pc_value_carry [6]),
    .DI(LED_7_OBUF_116),
    .S(\ekcp3/processor/pc_value [7]),
    .O(\ekcp3/processor/pc_value_carry [7])
  );
  XORCY   \ekcp3/processor/pc_vector_xor_7  (
    .CI(\ekcp3/processor/pc_vector_carry [6]),
    .LI(\ekcp3/processor/pc_vector [7]),
    .O(\ekcp3/processor/inc_pc_vector [7])
  );
  MUXCY   \ekcp3/processor/pc_vector_muxcy_7  (
    .CI(\ekcp3/processor/pc_vector_carry [6]),
    .DI(LED_7_OBUF_116),
    .S(\ekcp3/processor/pc_vector [7]),
    .O(\ekcp3/processor/pc_vector_carry [7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ekcp3/processor/value_select_mux_7  (
    .I0(\ekcp3/processor/normal_count ),
    .I1(\ekcp3/processor/inc_pc_vector [7]),
    .I2(\ekcp3/address [7]),
    .O(\ekcp3/processor/pc_value [7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ekcp3/processor/vector_select_mux_7  (
    .I0(\ekcp3/instruction [15]),
    .I1(\ekcp3/instruction [7]),
    .I2(\ekcp3/processor/stack_pop_data [7]),
    .O(\ekcp3/processor/pc_vector [7])
  );
  XORCY   \ekcp3/processor/pc_value_xor_6  (
    .CI(\ekcp3/processor/pc_value_carry [5]),
    .LI(\ekcp3/processor/pc_value [6]),
    .O(\ekcp3/processor/inc_pc_value [6])
  );
  MUXCY   \ekcp3/processor/pc_value_muxcy_6  (
    .CI(\ekcp3/processor/pc_value_carry [5]),
    .DI(LED_7_OBUF_116),
    .S(\ekcp3/processor/pc_value [6]),
    .O(\ekcp3/processor/pc_value_carry [6])
  );
  XORCY   \ekcp3/processor/pc_vector_xor_6  (
    .CI(\ekcp3/processor/pc_vector_carry [5]),
    .LI(\ekcp3/processor/pc_vector [6]),
    .O(\ekcp3/processor/inc_pc_vector [6])
  );
  MUXCY   \ekcp3/processor/pc_vector_muxcy_6  (
    .CI(\ekcp3/processor/pc_vector_carry [5]),
    .DI(LED_7_OBUF_116),
    .S(\ekcp3/processor/pc_vector [6]),
    .O(\ekcp3/processor/pc_vector_carry [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ekcp3/processor/value_select_mux_6  (
    .I0(\ekcp3/processor/normal_count ),
    .I1(\ekcp3/processor/inc_pc_vector [6]),
    .I2(\ekcp3/address [6]),
    .O(\ekcp3/processor/pc_value [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ekcp3/processor/vector_select_mux_6  (
    .I0(\ekcp3/instruction [15]),
    .I1(\ekcp3/instruction [6]),
    .I2(\ekcp3/processor/stack_pop_data [6]),
    .O(\ekcp3/processor/pc_vector [6])
  );
  XORCY   \ekcp3/processor/pc_value_xor_5  (
    .CI(\ekcp3/processor/pc_value_carry [4]),
    .LI(\ekcp3/processor/pc_value [5]),
    .O(\ekcp3/processor/inc_pc_value [5])
  );
  MUXCY   \ekcp3/processor/pc_value_muxcy_5  (
    .CI(\ekcp3/processor/pc_value_carry [4]),
    .DI(LED_7_OBUF_116),
    .S(\ekcp3/processor/pc_value [5]),
    .O(\ekcp3/processor/pc_value_carry [5])
  );
  XORCY   \ekcp3/processor/pc_vector_xor_5  (
    .CI(\ekcp3/processor/pc_vector_carry [4]),
    .LI(\ekcp3/processor/pc_vector [5]),
    .O(\ekcp3/processor/inc_pc_vector [5])
  );
  MUXCY   \ekcp3/processor/pc_vector_muxcy_5  (
    .CI(\ekcp3/processor/pc_vector_carry [4]),
    .DI(LED_7_OBUF_116),
    .S(\ekcp3/processor/pc_vector [5]),
    .O(\ekcp3/processor/pc_vector_carry [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ekcp3/processor/value_select_mux_5  (
    .I0(\ekcp3/processor/normal_count ),
    .I1(\ekcp3/processor/inc_pc_vector [5]),
    .I2(\ekcp3/address [5]),
    .O(\ekcp3/processor/pc_value [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ekcp3/processor/vector_select_mux_5  (
    .I0(\ekcp3/instruction [15]),
    .I1(\ekcp3/instruction [5]),
    .I2(\ekcp3/processor/stack_pop_data [5]),
    .O(\ekcp3/processor/pc_vector [5])
  );
  XORCY   \ekcp3/processor/pc_value_xor_4  (
    .CI(\ekcp3/processor/pc_value_carry [3]),
    .LI(\ekcp3/processor/pc_value [4]),
    .O(\ekcp3/processor/inc_pc_value [4])
  );
  MUXCY   \ekcp3/processor/pc_value_muxcy_4  (
    .CI(\ekcp3/processor/pc_value_carry [3]),
    .DI(LED_7_OBUF_116),
    .S(\ekcp3/processor/pc_value [4]),
    .O(\ekcp3/processor/pc_value_carry [4])
  );
  XORCY   \ekcp3/processor/pc_vector_xor_4  (
    .CI(\ekcp3/processor/pc_vector_carry [3]),
    .LI(\ekcp3/processor/pc_vector [4]),
    .O(\ekcp3/processor/inc_pc_vector [4])
  );
  MUXCY   \ekcp3/processor/pc_vector_muxcy_4  (
    .CI(\ekcp3/processor/pc_vector_carry [3]),
    .DI(LED_7_OBUF_116),
    .S(\ekcp3/processor/pc_vector [4]),
    .O(\ekcp3/processor/pc_vector_carry [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ekcp3/processor/value_select_mux_4  (
    .I0(\ekcp3/processor/normal_count ),
    .I1(\ekcp3/processor/inc_pc_vector [4]),
    .I2(\ekcp3/address [4]),
    .O(\ekcp3/processor/pc_value [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ekcp3/processor/vector_select_mux_4  (
    .I0(\ekcp3/instruction [15]),
    .I1(\ekcp3/instruction [4]),
    .I2(\ekcp3/processor/stack_pop_data [4]),
    .O(\ekcp3/processor/pc_vector [4])
  );
  XORCY   \ekcp3/processor/pc_value_xor_3  (
    .CI(\ekcp3/processor/pc_value_carry [2]),
    .LI(\ekcp3/processor/pc_value [3]),
    .O(\ekcp3/processor/inc_pc_value [3])
  );
  MUXCY   \ekcp3/processor/pc_value_muxcy_3  (
    .CI(\ekcp3/processor/pc_value_carry [2]),
    .DI(LED_7_OBUF_116),
    .S(\ekcp3/processor/pc_value [3]),
    .O(\ekcp3/processor/pc_value_carry [3])
  );
  XORCY   \ekcp3/processor/pc_vector_xor_3  (
    .CI(\ekcp3/processor/pc_vector_carry [2]),
    .LI(\ekcp3/processor/pc_vector [3]),
    .O(\ekcp3/processor/inc_pc_vector [3])
  );
  MUXCY   \ekcp3/processor/pc_vector_muxcy_3  (
    .CI(\ekcp3/processor/pc_vector_carry [2]),
    .DI(LED_7_OBUF_116),
    .S(\ekcp3/processor/pc_vector [3]),
    .O(\ekcp3/processor/pc_vector_carry [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ekcp3/processor/value_select_mux_3  (
    .I0(\ekcp3/processor/normal_count ),
    .I1(\ekcp3/processor/inc_pc_vector [3]),
    .I2(\ekcp3/address [3]),
    .O(\ekcp3/processor/pc_value [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ekcp3/processor/vector_select_mux_3  (
    .I0(\ekcp3/instruction [15]),
    .I1(\ekcp3/instruction [3]),
    .I2(\ekcp3/processor/stack_pop_data [3]),
    .O(\ekcp3/processor/pc_vector [3])
  );
  XORCY   \ekcp3/processor/pc_value_xor_2  (
    .CI(\ekcp3/processor/pc_value_carry [1]),
    .LI(\ekcp3/processor/pc_value [2]),
    .O(\ekcp3/processor/inc_pc_value [2])
  );
  MUXCY   \ekcp3/processor/pc_value_muxcy_2  (
    .CI(\ekcp3/processor/pc_value_carry [1]),
    .DI(LED_7_OBUF_116),
    .S(\ekcp3/processor/pc_value [2]),
    .O(\ekcp3/processor/pc_value_carry [2])
  );
  XORCY   \ekcp3/processor/pc_vector_xor_2  (
    .CI(\ekcp3/processor/pc_vector_carry [1]),
    .LI(\ekcp3/processor/pc_vector [2]),
    .O(\ekcp3/processor/inc_pc_vector [2])
  );
  MUXCY   \ekcp3/processor/pc_vector_muxcy_2  (
    .CI(\ekcp3/processor/pc_vector_carry [1]),
    .DI(LED_7_OBUF_116),
    .S(\ekcp3/processor/pc_vector [2]),
    .O(\ekcp3/processor/pc_vector_carry [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ekcp3/processor/value_select_mux_2  (
    .I0(\ekcp3/processor/normal_count ),
    .I1(\ekcp3/processor/inc_pc_vector [2]),
    .I2(\ekcp3/address [2]),
    .O(\ekcp3/processor/pc_value [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ekcp3/processor/vector_select_mux_2  (
    .I0(\ekcp3/instruction [15]),
    .I1(\ekcp3/instruction [2]),
    .I2(\ekcp3/processor/stack_pop_data [2]),
    .O(\ekcp3/processor/pc_vector [2])
  );
  XORCY   \ekcp3/processor/pc_value_xor_1  (
    .CI(\ekcp3/processor/pc_value_carry [0]),
    .LI(\ekcp3/processor/pc_value [1]),
    .O(\ekcp3/processor/inc_pc_value [1])
  );
  MUXCY   \ekcp3/processor/pc_value_muxcy_1  (
    .CI(\ekcp3/processor/pc_value_carry [0]),
    .DI(LED_7_OBUF_116),
    .S(\ekcp3/processor/pc_value [1]),
    .O(\ekcp3/processor/pc_value_carry [1])
  );
  XORCY   \ekcp3/processor/pc_vector_xor_1  (
    .CI(\ekcp3/processor/pc_vector_carry [0]),
    .LI(\ekcp3/processor/pc_vector [1]),
    .O(\ekcp3/processor/inc_pc_vector [1])
  );
  MUXCY   \ekcp3/processor/pc_vector_muxcy_1  (
    .CI(\ekcp3/processor/pc_vector_carry [0]),
    .DI(LED_7_OBUF_116),
    .S(\ekcp3/processor/pc_vector [1]),
    .O(\ekcp3/processor/pc_vector_carry [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ekcp3/processor/value_select_mux_1  (
    .I0(\ekcp3/processor/normal_count ),
    .I1(\ekcp3/processor/inc_pc_vector [1]),
    .I2(\ekcp3/address [1]),
    .O(\ekcp3/processor/pc_value [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ekcp3/processor/vector_select_mux_1  (
    .I0(\ekcp3/instruction [15]),
    .I1(\ekcp3/instruction [1]),
    .I2(\ekcp3/processor/stack_pop_data [1]),
    .O(\ekcp3/processor/pc_vector [1])
  );
  XORCY   \ekcp3/processor/pc_value_xor_0  (
    .CI(\ekcp3/processor/normal_count ),
    .LI(\ekcp3/processor/pc_value [0]),
    .O(\ekcp3/processor/inc_pc_value [0])
  );
  MUXCY   \ekcp3/processor/pc_value_muxcy_0  (
    .CI(\ekcp3/processor/normal_count ),
    .DI(LED_7_OBUF_116),
    .S(\ekcp3/processor/pc_value [0]),
    .O(\ekcp3/processor/pc_value_carry [0])
  );
  XORCY   \ekcp3/processor/pc_vector_xor_0  (
    .CI(\ekcp3/instruction [13]),
    .LI(\ekcp3/processor/pc_vector [0]),
    .O(\ekcp3/processor/inc_pc_vector [0])
  );
  MUXCY   \ekcp3/processor/pc_vector_muxcy_0  (
    .CI(\ekcp3/instruction [13]),
    .DI(LED_7_OBUF_116),
    .S(\ekcp3/processor/pc_vector [0]),
    .O(\ekcp3/processor/pc_vector_carry [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ekcp3/processor/value_select_mux_0  (
    .I0(\ekcp3/processor/normal_count ),
    .I1(\ekcp3/processor/inc_pc_vector [0]),
    .I2(\ekcp3/address [0]),
    .O(\ekcp3/processor/pc_value [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ekcp3/processor/vector_select_mux_0  (
    .I0(\ekcp3/instruction [15]),
    .I1(\ekcp3/instruction [0]),
    .I2(\ekcp3/processor/stack_pop_data [0]),
    .O(\ekcp3/processor/pc_vector [0])
  );
  INV   \ekcp3/processor/invert_enable  (
    .I(\ekcp3/processor/t_state ),
    .O(\ekcp3/processor/pc_enable )
  );
  XORCY   \ekcp3/processor/carry_xor  (
    .CI(\ekcp3/processor/sel_carry [3]),
    .LI(LED_7_OBUF_116),
    .O(\ekcp3/processor/carry_fast_route )
  );
  MUXCY   \ekcp3/processor/sel_parity_muxcy  (
    .CI(\ekcp3/processor/sel_carry [2]),
    .DI(\ekcp3/processor/parity ),
    .S(\ekcp3/processor/sel_parity ),
    .O(\ekcp3/processor/sel_carry [3])
  );
  MUXCY   \ekcp3/processor/sel_arith_muxcy  (
    .CI(\ekcp3/processor/sel_carry [1]),
    .DI(\ekcp3/processor/arith_carry ),
    .S(\ekcp3/processor/sel_arith_carry ),
    .O(\ekcp3/processor/sel_carry [2])
  );
  MUXCY   \ekcp3/processor/sel_shift_muxcy  (
    .CI(\ekcp3/processor/sel_carry [0]),
    .DI(\ekcp3/processor/shift_carry ),
    .S(\ekcp3/processor/sel_shift_carry ),
    .O(\ekcp3/processor/sel_carry [1])
  );
  MUXCY   \ekcp3/processor/sel_shadow_muxcy  (
    .CI(LED_7_OBUF_116),
    .DI(\ekcp3/processor/shadow_carry ),
    .S(\ekcp3/processor/sel_shadow_carry ),
    .O(\ekcp3/processor/sel_carry [0])
  );
  LUT2 #(
    .INIT ( 4'h3 ))
  \ekcp3/processor/sel_shadow_carry_lut  (
    .I0(\ekcp3/processor/shadow_carry ),
    .I1(\ekcp3/instruction [17]),
    .O(\ekcp3/processor/sel_shadow_carry )
  );
  LUT2 #(
    .INIT ( 4'hC ))
  \ekcp3/processor/sel_shift_carry_lut  (
    .I0(\ekcp3/processor/shift_carry ),
    .I1(\ekcp3/instruction [15]),
    .O(\ekcp3/processor/sel_shift_carry )
  );
  LUT3 #(
    .INIT ( 8'hF3 ))
  \ekcp3/processor/sel_arith_carry_lut  (
    .I0(\ekcp3/processor/arith_carry ),
    .I1(\ekcp3/instruction [16]),
    .I2(\ekcp3/instruction [17]),
    .O(\ekcp3/processor/sel_arith_carry )
  );
  LUT4 #(
    .INIT ( 16'hF3FF ))
  \ekcp3/processor/sel_parity_lut  (
    .I0(\ekcp3/processor/parity ),
    .I1(\ekcp3/instruction [13]),
    .I2(\ekcp3/instruction [15]),
    .I3(\ekcp3/instruction [16]),
    .O(\ekcp3/processor/sel_parity )
  );
  XORCY   \ekcp3/processor/parity_xor  (
    .CI(\ekcp3/processor/parity_carry ),
    .LI(\ekcp3/processor/high_parity ),
    .O(\ekcp3/processor/parity )
  );
  MUXCY   \ekcp3/processor/parity_muxcy  (
    .CI(N1),
    .DI(LED_7_OBUF_116),
    .S(\ekcp3/processor/low_parity ),
    .O(\ekcp3/processor/parity_carry )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \ekcp3/processor/high_parity_lut  (
    .I0(\ekcp3/processor/logical_result [4]),
    .I1(\ekcp3/processor/logical_result [5]),
    .I2(\ekcp3/processor/logical_result [6]),
    .I3(\ekcp3/processor/logical_result [7]),
    .O(\ekcp3/processor/high_parity )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \ekcp3/processor/low_parity_lut  (
    .I0(\ekcp3/processor/logical_result [0]),
    .I1(\ekcp3/processor/logical_result [1]),
    .I2(\ekcp3/processor/logical_result [2]),
    .I3(\ekcp3/processor/logical_result [3]),
    .O(\ekcp3/processor/low_parity )
  );
  XORCY   \ekcp3/processor/zero_xor  (
    .CI(\ekcp3/processor/zero_carry ),
    .LI(LED_7_OBUF_116),
    .O(\ekcp3/processor/zero_fast_route )
  );
  MUXCY   \ekcp3/processor/zero_cymux  (
    .CI(\ekcp3/processor/high_zero_carry ),
    .DI(\ekcp3/processor/shadow_zero ),
    .S(\ekcp3/processor/sel_shadow_zero ),
    .O(\ekcp3/processor/zero_carry )
  );
  LUT3 #(
    .INIT ( 8'h3F ))
  \ekcp3/processor/sel_shadow_zero_lut  (
    .I0(\ekcp3/processor/shadow_zero ),
    .I1(\ekcp3/instruction [16]),
    .I2(\ekcp3/instruction [17]),
    .O(\ekcp3/processor/sel_shadow_zero )
  );
  MUXCY   \ekcp3/processor/high_zero_cymux  (
    .CI(\ekcp3/processor/low_zero_carry ),
    .DI(LED_7_OBUF_116),
    .S(\ekcp3/processor/high_zero ),
    .O(\ekcp3/processor/high_zero_carry )
  );
  MUXCY   \ekcp3/processor/low_zero_muxcy  (
    .CI(N1),
    .DI(LED_7_OBUF_116),
    .S(\ekcp3/processor/low_zero ),
    .O(\ekcp3/processor/low_zero_carry )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \ekcp3/processor/high_zero_lut  (
    .I0(\ekcp3/processor/alu_result [4]),
    .I1(\ekcp3/processor/alu_result [5]),
    .I2(\ekcp3/processor/alu_result [6]),
    .I3(\ekcp3/processor/alu_result [7]),
    .O(\ekcp3/processor/high_zero )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \ekcp3/processor/low_zero_lut  (
    .I0(\ekcp3/processor/alu_result [0]),
    .I1(\ekcp3/processor/alu_result [1]),
    .I2(\ekcp3/processor/alu_result [2]),
    .I3(\ekcp3/processor/alu_result [3]),
    .O(\ekcp3/processor/low_zero )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ekcp3/processor/flag_enable_lut  (
    .I0(\ekcp3/processor/t_state ),
    .I1(\ekcp3/processor/flag_write ),
    .O(\ekcp3/processor/flag_enable )
  );
  LUT4 #(
    .INIT ( 16'h41FC ))
  \ekcp3/processor/flag_type_lut  (
    .I0(\ekcp3/instruction [14]),
    .I1(\ekcp3/instruction [15]),
    .I2(\ekcp3/instruction [16]),
    .I3(\ekcp3/instruction [17]),
    .O(\ekcp3/processor/flag_type )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \ekcp3/processor/valid_move_lut  (
    .I0(\ekcp3/instruction [12]),
    .I1(\ekcp3/processor/condition_met ),
    .O(\ekcp3/processor/valid_to_move )
  );
  LUT4 #(
    .INIT ( 16'h5400 ))
  \ekcp3/processor/push_pop_lut  (
    .I0(\ekcp3/instruction [14]),
    .I1(\ekcp3/instruction [15]),
    .I2(\ekcp3/instruction [16]),
    .I3(\ekcp3/instruction [17]),
    .O(\ekcp3/processor/push_or_pop_type )
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \ekcp3/processor/call_type_lut  (
    .I0(\ekcp3/instruction [14]),
    .I1(\ekcp3/instruction [15]),
    .I2(\ekcp3/instruction [16]),
    .I3(\ekcp3/instruction [17]),
    .O(\ekcp3/processor/call_type )
  );
  LUT3 #(
    .INIT ( 8'h2F ))
  \ekcp3/processor/normal_count_lut  (
    .I0(\ekcp3/instruction [12]),
    .I1(\ekcp3/processor/condition_met ),
    .I2(\ekcp3/processor/move_group ),
    .O(\ekcp3/processor/normal_count )
  );
  LUT4 #(
    .INIT ( 16'h5A3C ))
  \ekcp3/processor/condition_met_lut  (
    .I0(\ekcp3/processor/carry_flag ),
    .I1(\ekcp3/processor/zero_flag ),
    .I2(\ekcp3/instruction [10]),
    .I3(\ekcp3/instruction [11]),
    .O(\ekcp3/processor/condition_met )
  );
  LUT4 #(
    .INIT ( 16'h7400 ))
  \ekcp3/processor/move_group_lut  (
    .I0(\ekcp3/instruction [14]),
    .I1(\ekcp3/instruction [15]),
    .I2(\ekcp3/instruction [16]),
    .I3(\ekcp3/instruction [17]),
    .O(\ekcp3/processor/move_group )
  );
  LUT3 #(
    .INIT ( 8'h04 ))
  \ekcp3/processor/int_value_lut  (
    .I0(\ekcp3/processor/active_interrupt ),
    .I1(\ekcp3/instruction [0]),
    .I2(\ekcp3/processor/interrupt_ack_internal ),
    .O(\ekcp3/processor/int_enable_value )
  );
  LUT4 #(
    .INIT ( 16'hEAAA ))
  \ekcp3/processor/int_update_lut  (
    .I0(\ekcp3/processor/active_interrupt ),
    .I1(\ekcp3/instruction [15]),
    .I2(\ekcp3/instruction [16]),
    .I3(\ekcp3/instruction [17]),
    .O(\ekcp3/processor/int_update_enable )
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \ekcp3/processor/int_pulse_lut  (
    .I0(\ekcp3/processor/t_state ),
    .I1(\ekcp3/processor/clean_int ),
    .I2(\ekcp3/processor/int_enable ),
    .I3(\ekcp3/processor/active_interrupt ),
    .O(\ekcp3/processor/int_pulse )
  );
  LUT1 #(
    .INIT ( 2'h1 ))
  \ekcp3/processor/t_state_lut  (
    .I0(\ekcp3/processor/t_state ),
    .O(\ekcp3/processor/not_t_state )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/stack_count_loop_register_bit_4  (
    .C(clk_BUFGP_223),
    .CE(\ekcp3/processor/not_active_interrupt ),
    .D(\ekcp3/processor/next_stack_address [4]),
    .R(\ekcp3/processor/internal_reset ),
    .Q(\ekcp3/processor/stack_address [4])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/stack_count_loop_register_bit_3  (
    .C(clk_BUFGP_223),
    .CE(\ekcp3/processor/not_active_interrupt ),
    .D(\ekcp3/processor/next_stack_address [3]),
    .R(\ekcp3/processor/internal_reset ),
    .Q(\ekcp3/processor/stack_address [3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/stack_count_loop_register_bit_2  (
    .C(clk_BUFGP_223),
    .CE(\ekcp3/processor/not_active_interrupt ),
    .D(\ekcp3/processor/next_stack_address [2]),
    .R(\ekcp3/processor/internal_reset ),
    .Q(\ekcp3/processor/stack_address [2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/stack_count_loop_register_bit_1  (
    .C(clk_BUFGP_223),
    .CE(\ekcp3/processor/not_active_interrupt ),
    .D(\ekcp3/processor/next_stack_address [1]),
    .R(\ekcp3/processor/internal_reset ),
    .Q(\ekcp3/processor/stack_address [1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/stack_count_loop_register_bit_0  (
    .C(clk_BUFGP_223),
    .CE(\ekcp3/processor/not_active_interrupt ),
    .D(\ekcp3/processor/next_stack_address [0]),
    .R(\ekcp3/processor/internal_reset ),
    .Q(\ekcp3/processor/stack_address [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/stack_flop_9  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/stack_ram_data [9]),
    .Q(\ekcp3/processor/stack_pop_data [9])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/stack_flop_8  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/stack_ram_data [8]),
    .Q(\ekcp3/processor/stack_pop_data [8])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/stack_flop_7  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/stack_ram_data [7]),
    .Q(\ekcp3/processor/stack_pop_data [7])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/stack_flop_6  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/stack_ram_data [6]),
    .Q(\ekcp3/processor/stack_pop_data [6])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/stack_flop_5  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/stack_ram_data [5]),
    .Q(\ekcp3/processor/stack_pop_data [5])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/stack_flop_4  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/stack_ram_data [4]),
    .Q(\ekcp3/processor/stack_pop_data [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/stack_flop_3  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/stack_ram_data [3]),
    .Q(\ekcp3/processor/stack_pop_data [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/stack_flop_2  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/stack_ram_data [2]),
    .Q(\ekcp3/processor/stack_pop_data [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/stack_flop_1  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/stack_ram_data [1]),
    .Q(\ekcp3/processor/stack_pop_data [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/stack_flop_0  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/stack_ram_data [0]),
    .Q(\ekcp3/processor/stack_pop_data [0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/read_strobe_flop  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/read_active ),
    .R(\ekcp3/processor/internal_reset ),
    .Q(read_strobe)
  );
  FDR #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/write_strobe_flop  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/write_active ),
    .R(\ekcp3/processor/internal_reset ),
    .Q(write_strobe)
  );
  FD #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/sel_group_flop  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/input_fetch_type ),
    .Q(\ekcp3/processor/sel_group )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/arith_carry_flop  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/arith_carry_out ),
    .R(\ekcp3/processor/sel_arith ),
    .Q(\ekcp3/processor/arith_carry )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/arith_flop_7  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/arith_value [7]),
    .R(\ekcp3/processor/sel_arith ),
    .Q(\ekcp3/processor/arith_result [7])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/arith_flop_6  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/arith_value [6]),
    .R(\ekcp3/processor/sel_arith ),
    .Q(\ekcp3/processor/arith_result [6])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/arith_flop_5  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/arith_value [5]),
    .R(\ekcp3/processor/sel_arith ),
    .Q(\ekcp3/processor/arith_result [5])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/arith_flop_4  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/arith_value [4]),
    .R(\ekcp3/processor/sel_arith ),
    .Q(\ekcp3/processor/arith_result [4])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/arith_flop_3  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/arith_value [3]),
    .R(\ekcp3/processor/sel_arith ),
    .Q(\ekcp3/processor/arith_result [3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/arith_flop_2  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/arith_value [2]),
    .R(\ekcp3/processor/sel_arith ),
    .Q(\ekcp3/processor/arith_result [2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/arith_flop_1  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/arith_value [1]),
    .R(\ekcp3/processor/sel_arith ),
    .Q(\ekcp3/processor/arith_result [1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/arith_flop_0  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/arith_value [0]),
    .R(\ekcp3/processor/sel_arith ),
    .Q(\ekcp3/processor/arith_result [0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/shift_flop_7  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/shift_value [7]),
    .R(\ekcp3/processor/sel_shift ),
    .Q(\ekcp3/processor/shift_result [7])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/shift_flop_6  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/shift_value [6]),
    .R(\ekcp3/processor/sel_shift ),
    .Q(\ekcp3/processor/shift_result [6])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/shift_flop_5  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/shift_value [5]),
    .R(\ekcp3/processor/sel_shift ),
    .Q(\ekcp3/processor/shift_result [5])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/shift_flop_4  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/shift_value [4]),
    .R(\ekcp3/processor/sel_shift ),
    .Q(\ekcp3/processor/shift_result [4])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/shift_flop_3  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/shift_value [3]),
    .R(\ekcp3/processor/sel_shift ),
    .Q(\ekcp3/processor/shift_result [3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/shift_flop_2  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/shift_value [2]),
    .R(\ekcp3/processor/sel_shift ),
    .Q(\ekcp3/processor/shift_result [2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/shift_flop_1  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/shift_value [1]),
    .R(\ekcp3/processor/sel_shift ),
    .Q(\ekcp3/processor/shift_result [1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/shift_flop_0  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/shift_value [0]),
    .R(\ekcp3/processor/sel_shift ),
    .Q(\ekcp3/processor/shift_result [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/pipeline_bit  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/shift_carry_value ),
    .Q(\ekcp3/processor/shift_carry )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/logical_flop_7  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/logical_value [7]),
    .R(\ekcp3/processor/sel_logical ),
    .Q(\ekcp3/processor/logical_result [7])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/logical_flop_6  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/logical_value [6]),
    .R(\ekcp3/processor/sel_logical ),
    .Q(\ekcp3/processor/logical_result [6])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/logical_flop_5  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/logical_value [5]),
    .R(\ekcp3/processor/sel_logical ),
    .Q(\ekcp3/processor/logical_result [5])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/logical_flop_4  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/logical_value [4]),
    .R(\ekcp3/processor/sel_logical ),
    .Q(\ekcp3/processor/logical_result [4])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/logical_flop_3  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/logical_value [3]),
    .R(\ekcp3/processor/sel_logical ),
    .Q(\ekcp3/processor/logical_result [3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/logical_flop_2  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/logical_value [2]),
    .R(\ekcp3/processor/sel_logical ),
    .Q(\ekcp3/processor/logical_result [2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/logical_flop_1  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/logical_value [1]),
    .R(\ekcp3/processor/sel_logical ),
    .Q(\ekcp3/processor/logical_result [1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/logical_flop_0  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/logical_value [0]),
    .R(\ekcp3/processor/sel_logical ),
    .Q(\ekcp3/processor/logical_result [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/store_flop_7  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/memory_data [7]),
    .Q(\ekcp3/processor/store_data [7])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/store_flop_6  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/memory_data [6]),
    .Q(\ekcp3/processor/store_data [6])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/store_flop_5  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/memory_data [5]),
    .Q(\ekcp3/processor/store_data [5])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/store_flop_4  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/memory_data [4]),
    .Q(\ekcp3/processor/store_data [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/store_flop_3  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/memory_data [3]),
    .Q(\ekcp3/processor/store_data [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/store_flop_2  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/memory_data [2]),
    .Q(\ekcp3/processor/store_data [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/store_flop_1  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/memory_data [1]),
    .Q(\ekcp3/processor/store_data [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/store_flop_0  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/memory_data [0]),
    .Q(\ekcp3/processor/store_data [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/memory_write_flop  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/memory_type ),
    .Q(\ekcp3/processor/memory_write )
  );
  FD #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/register_write_flop  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/register_type ),
    .Q(\ekcp3/processor/register_write )
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/pc_loop_register_bit_9  (
    .C(clk_BUFGP_223),
    .CE(\ekcp3/processor/pc_enable ),
    .D(\ekcp3/processor/inc_pc_value [9]),
    .R(\ekcp3/processor/internal_reset ),
    .S(\ekcp3/processor/active_interrupt ),
    .Q(\ekcp3/address [9])
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/pc_loop_register_bit_8  (
    .C(clk_BUFGP_223),
    .CE(\ekcp3/processor/pc_enable ),
    .D(\ekcp3/processor/inc_pc_value [8]),
    .R(\ekcp3/processor/internal_reset ),
    .S(\ekcp3/processor/active_interrupt ),
    .Q(\ekcp3/address [8])
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/pc_loop_register_bit_7  (
    .C(clk_BUFGP_223),
    .CE(\ekcp3/processor/pc_enable ),
    .D(\ekcp3/processor/inc_pc_value [7]),
    .R(\ekcp3/processor/internal_reset ),
    .S(\ekcp3/processor/active_interrupt ),
    .Q(\ekcp3/address [7])
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/pc_loop_register_bit_6  (
    .C(clk_BUFGP_223),
    .CE(\ekcp3/processor/pc_enable ),
    .D(\ekcp3/processor/inc_pc_value [6]),
    .R(\ekcp3/processor/internal_reset ),
    .S(\ekcp3/processor/active_interrupt ),
    .Q(\ekcp3/address [6])
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/pc_loop_register_bit_5  (
    .C(clk_BUFGP_223),
    .CE(\ekcp3/processor/pc_enable ),
    .D(\ekcp3/processor/inc_pc_value [5]),
    .R(\ekcp3/processor/internal_reset ),
    .S(\ekcp3/processor/active_interrupt ),
    .Q(\ekcp3/address [5])
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/pc_loop_register_bit_4  (
    .C(clk_BUFGP_223),
    .CE(\ekcp3/processor/pc_enable ),
    .D(\ekcp3/processor/inc_pc_value [4]),
    .R(\ekcp3/processor/internal_reset ),
    .S(\ekcp3/processor/active_interrupt ),
    .Q(\ekcp3/address [4])
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/pc_loop_register_bit_3  (
    .C(clk_BUFGP_223),
    .CE(\ekcp3/processor/pc_enable ),
    .D(\ekcp3/processor/inc_pc_value [3]),
    .R(\ekcp3/processor/internal_reset ),
    .S(\ekcp3/processor/active_interrupt ),
    .Q(\ekcp3/address [3])
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/pc_loop_register_bit_2  (
    .C(clk_BUFGP_223),
    .CE(\ekcp3/processor/pc_enable ),
    .D(\ekcp3/processor/inc_pc_value [2]),
    .R(\ekcp3/processor/internal_reset ),
    .S(\ekcp3/processor/active_interrupt ),
    .Q(\ekcp3/address [2])
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/pc_loop_register_bit_1  (
    .C(clk_BUFGP_223),
    .CE(\ekcp3/processor/pc_enable ),
    .D(\ekcp3/processor/inc_pc_value [1]),
    .R(\ekcp3/processor/internal_reset ),
    .S(\ekcp3/processor/active_interrupt ),
    .Q(\ekcp3/address [1])
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/pc_loop_register_bit_0  (
    .C(clk_BUFGP_223),
    .CE(\ekcp3/processor/pc_enable ),
    .D(\ekcp3/processor/inc_pc_value [0]),
    .R(\ekcp3/processor/internal_reset ),
    .S(\ekcp3/processor/active_interrupt ),
    .Q(\ekcp3/address [0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/carry_flag_flop  (
    .C(clk_BUFGP_223),
    .CE(\ekcp3/processor/flag_enable ),
    .D(\ekcp3/processor/carry_fast_route ),
    .R(\ekcp3/processor/internal_reset ),
    .Q(\ekcp3/processor/carry_flag )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/zero_flag_flop  (
    .C(clk_BUFGP_223),
    .CE(\ekcp3/processor/flag_enable ),
    .D(\ekcp3/processor/zero_fast_route ),
    .R(\ekcp3/processor/internal_reset ),
    .Q(\ekcp3/processor/zero_flag )
  );
  FD #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/flag_write_flop  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/flag_type ),
    .Q(\ekcp3/processor/flag_write )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/int_enable_flop  (
    .C(clk_BUFGP_223),
    .CE(\ekcp3/processor/int_update_enable ),
    .D(\ekcp3/processor/int_enable_value ),
    .R(\ekcp3/processor/internal_reset ),
    .Q(\ekcp3/processor/int_enable )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/shadow_zero_flop  (
    .C(clk_BUFGP_223),
    .CE(\ekcp3/processor/active_interrupt ),
    .D(\ekcp3/processor/zero_flag ),
    .Q(\ekcp3/processor/shadow_zero )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/shadow_carry_flop  (
    .C(clk_BUFGP_223),
    .CE(\ekcp3/processor/active_interrupt ),
    .D(\ekcp3/processor/carry_flag ),
    .Q(\ekcp3/processor/shadow_carry )
  );
  FD #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/ack_flop  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/active_interrupt ),
    .Q(\ekcp3/processor/interrupt_ack_internal )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/int_flop  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/int_pulse ),
    .R(\ekcp3/processor/internal_reset ),
    .Q(\ekcp3/processor/active_interrupt )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/int_capture_flop  (
    .C(clk_BUFGP_223),
    .D(LED_7_OBUF_116),
    .R(\ekcp3/processor/internal_reset ),
    .Q(\ekcp3/processor/clean_int )
  );
  FDS #(
    .INIT ( 1'b1 ))
  \ekcp3/processor/reset_flop2  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/reset_delay ),
    .S(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .Q(\ekcp3/processor/internal_reset )
  );
  FDS #(
    .INIT ( 1'b1 ))
  \ekcp3/processor/reset_flop1  (
    .C(clk_BUFGP_223),
    .D(LED_7_OBUF_116),
    .S(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .Q(\ekcp3/processor/reset_delay )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \ekcp3/processor/toggle_flop  (
    .C(clk_BUFGP_223),
    .D(\ekcp3/processor/not_t_state ),
    .R(\ekcp3/processor/internal_reset ),
    .Q(\ekcp3/processor/t_state )
  );
  FDC   \Display_Controller/LED_contr/present_state_FSM_FFd1  (
    .C(\Display_Controller/clk_250_80 ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\Display_Controller/LED_contr/present_state_FSM_FFd2_3 ),
    .Q(\Display_Controller/LED_contr/present_state_FSM_FFd1_2 )
  );
  FDC   \Display_Controller/LED_contr/present_state_FSM_FFd2  (
    .C(\Display_Controller/clk_250_80 ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\Display_Controller/LED_contr/present_state_FSM_FFd3_4 ),
    .Q(\Display_Controller/LED_contr/present_state_FSM_FFd2_3 )
  );
  FDC   \Display_Controller/LED_contr/present_state_FSM_FFd3  (
    .C(\Display_Controller/clk_250_80 ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\Display_Controller/LED_contr/present_state_FSM_FFd4_5 ),
    .Q(\Display_Controller/LED_contr/present_state_FSM_FFd3_4 )
  );
  FDP   \Display_Controller/LED_contr/present_state_FSM_FFd4  (
    .C(\Display_Controller/clk_250_80 ),
    .D(\Display_Controller/LED_contr/present_state_FSM_FFd1_2 ),
    .PRE(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .Q(\Display_Controller/LED_contr/present_state_FSM_FFd4_5 )
  );
  MUXF5   \Display_Controller/Mmux_ad_out_2_f5  (
    .I0(\Display_Controller/Mmux_ad_out_4_72 ),
    .I1(\Display_Controller/Mmux_ad_out_3_68 ),
    .S(\Display_Controller/seg_sel [1]),
    .O(\Display_Controller/ad_out [0])
  );
  MUXF5   \Display_Controller/Mmux_ad_out_2_f5_0  (
    .I0(\Display_Controller/Mmux_ad_out_41_73 ),
    .I1(\Display_Controller/Mmux_ad_out_31_69 ),
    .S(\Display_Controller/seg_sel [1]),
    .O(\Display_Controller/ad_out [1])
  );
  MUXF5   \Display_Controller/Mmux_ad_out_2_f5_1  (
    .I0(\Display_Controller/Mmux_ad_out_42_74 ),
    .I1(\Display_Controller/Mmux_ad_out_32_70 ),
    .S(\Display_Controller/seg_sel [1]),
    .O(\Display_Controller/ad_out [2])
  );
  MUXF5   \Display_Controller/Mmux_ad_out_2_f5_2  (
    .I0(\Display_Controller/Mmux_ad_out_43_75 ),
    .I1(\Display_Controller/Mmux_ad_out_33_71 ),
    .S(\Display_Controller/seg_sel [1]),
    .O(\Display_Controller/ad_out [3])
  );
  MUXCY   \Display_Controller/Mcompar_count_cmp_ge0000_cy<7>  (
    .CI(\Display_Controller/Mcompar_count_cmp_ge0000_cy [6]),
    .DI(N1),
    .S(\Display_Controller/Mcompar_count_cmp_ge0000_lut[7] ),
    .O(\Display_Controller/count_cmp_ge0000 )
  );
  MUXCY   \Display_Controller/Mcompar_count_cmp_ge0000_cy<6>  (
    .CI(\Display_Controller/Mcompar_count_cmp_ge0000_cy [5]),
    .DI(LED_7_OBUF_116),
    .S(\Display_Controller/Mcompar_count_cmp_ge0000_lut[6] ),
    .O(\Display_Controller/Mcompar_count_cmp_ge0000_cy [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Display_Controller/Mcompar_count_cmp_ge0000_lut<6>  (
    .I0(\Display_Controller/count [13]),
    .I1(\Display_Controller/count [14]),
    .O(\Display_Controller/Mcompar_count_cmp_ge0000_lut[6] )
  );
  MUXCY   \Display_Controller/Mcompar_count_cmp_ge0000_cy<5>  (
    .CI(\Display_Controller/Mcompar_count_cmp_ge0000_cy [4]),
    .DI(N1),
    .S(\Display_Controller/Mcompar_count_cmp_ge0000_lut[5] ),
    .O(\Display_Controller/Mcompar_count_cmp_ge0000_cy [5])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \Display_Controller/Mcompar_count_cmp_ge0000_lut<5>  (
    .I0(\Display_Controller/count [9]),
    .I1(\Display_Controller/count [10]),
    .I2(\Display_Controller/count [11]),
    .I3(\Display_Controller/count [12]),
    .O(\Display_Controller/Mcompar_count_cmp_ge0000_lut[5] )
  );
  MUXCY   \Display_Controller/Mcompar_count_cmp_ge0000_cy<4>  (
    .CI(\Display_Controller/Mcompar_count_cmp_ge0000_cy [3]),
    .DI(LED_7_OBUF_116),
    .S(\Display_Controller/Mcompar_count_cmp_ge0000_lut[4] ),
    .O(\Display_Controller/Mcompar_count_cmp_ge0000_cy [4])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Display_Controller/Mcompar_count_cmp_ge0000_lut<4>  (
    .I0(\Display_Controller/count [7]),
    .I1(\Display_Controller/count [8]),
    .O(\Display_Controller/Mcompar_count_cmp_ge0000_lut[4] )
  );
  MUXCY   \Display_Controller/Mcompar_count_cmp_ge0000_cy<3>  (
    .CI(\Display_Controller/Mcompar_count_cmp_ge0000_cy [2]),
    .DI(N1),
    .S(\Display_Controller/Mcompar_count_cmp_ge0000_lut[3] ),
    .O(\Display_Controller/Mcompar_count_cmp_ge0000_cy [3])
  );
  MUXCY   \Display_Controller/Mcompar_count_cmp_ge0000_cy<2>  (
    .CI(\Display_Controller/Mcompar_count_cmp_ge0000_cy [1]),
    .DI(LED_7_OBUF_116),
    .S(\Display_Controller/Mcompar_count_cmp_ge0000_cy<2>_rt_10 ),
    .O(\Display_Controller/Mcompar_count_cmp_ge0000_cy [2])
  );
  MUXCY   \Display_Controller/Mcompar_count_cmp_ge0000_cy<1>  (
    .CI(\Display_Controller/Mcompar_count_cmp_ge0000_cy [0]),
    .DI(N1),
    .S(\Display_Controller/Mcompar_count_cmp_ge0000_lut[1] ),
    .O(\Display_Controller/Mcompar_count_cmp_ge0000_cy [1])
  );
  MUXCY   \Display_Controller/Mcompar_count_cmp_ge0000_cy<0>  (
    .CI(N1),
    .DI(LED_7_OBUF_116),
    .S(\Display_Controller/Mcompar_count_cmp_ge0000_cy<0>_rt_7 ),
    .O(\Display_Controller/Mcompar_count_cmp_ge0000_cy [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \Display_Controller/count_15  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\Display_Controller/Mcount_count15 ),
    .Q(\Display_Controller/count [15])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \Display_Controller/count_14  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\Display_Controller/Mcount_count14 ),
    .Q(\Display_Controller/count [14])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \Display_Controller/count_13  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\Display_Controller/Mcount_count13 ),
    .Q(\Display_Controller/count [13])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \Display_Controller/count_12  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\Display_Controller/Mcount_count12 ),
    .Q(\Display_Controller/count [12])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \Display_Controller/count_11  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\Display_Controller/Mcount_count11 ),
    .Q(\Display_Controller/count [11])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \Display_Controller/count_10  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\Display_Controller/Mcount_count10 ),
    .Q(\Display_Controller/count [10])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \Display_Controller/count_9  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\Display_Controller/Mcount_count9 ),
    .Q(\Display_Controller/count [9])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \Display_Controller/count_8  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\Display_Controller/Mcount_count8 ),
    .Q(\Display_Controller/count [8])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \Display_Controller/count_7  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\Display_Controller/Mcount_count7 ),
    .Q(\Display_Controller/count [7])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \Display_Controller/count_6  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\Display_Controller/Mcount_count6 ),
    .Q(\Display_Controller/count [6])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \Display_Controller/count_5  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\Display_Controller/Mcount_count5 ),
    .Q(\Display_Controller/count [5])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \Display_Controller/count_4  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\Display_Controller/Mcount_count4 ),
    .Q(\Display_Controller/count [4])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \Display_Controller/count_3  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\Display_Controller/Mcount_count3 ),
    .Q(\Display_Controller/count [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \Display_Controller/count_2  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\Display_Controller/Mcount_count2 ),
    .Q(\Display_Controller/count [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \Display_Controller/count_1  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\Display_Controller/Mcount_count1 ),
    .Q(\Display_Controller/count [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \Display_Controller/count_0  (
    .C(clk_BUFGP_223),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\Display_Controller/Mcount_count ),
    .Q(\Display_Controller/count [0])
  );
  XORCY   \Display_Controller/Mcount_count_xor<15>  (
    .CI(\Display_Controller/Mcount_count_cy [14]),
    .LI(\Display_Controller/Mcount_count_lut [15]),
    .O(\Display_Controller/Mcount_count15 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Display_Controller/Mcount_count_lut<15>  (
    .I0(\Display_Controller/count_cmp_ge0000 ),
    .I1(\Display_Controller/count [15]),
    .I2(LED_7_OBUF_116),
    .O(\Display_Controller/Mcount_count_lut [15])
  );
  XORCY   \Display_Controller/Mcount_count_xor<14>  (
    .CI(\Display_Controller/Mcount_count_cy [13]),
    .LI(\Display_Controller/Mcount_count_lut [14]),
    .O(\Display_Controller/Mcount_count14 )
  );
  MUXCY   \Display_Controller/Mcount_count_cy<14>  (
    .CI(\Display_Controller/Mcount_count_cy [13]),
    .DI(LED_7_OBUF_116),
    .S(\Display_Controller/Mcount_count_lut [14]),
    .O(\Display_Controller/Mcount_count_cy [14])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Display_Controller/Mcount_count_lut<14>  (
    .I0(\Display_Controller/count_cmp_ge0000 ),
    .I1(\Display_Controller/count [14]),
    .I2(LED_7_OBUF_116),
    .O(\Display_Controller/Mcount_count_lut [14])
  );
  XORCY   \Display_Controller/Mcount_count_xor<13>  (
    .CI(\Display_Controller/Mcount_count_cy [12]),
    .LI(\Display_Controller/Mcount_count_lut [13]),
    .O(\Display_Controller/Mcount_count13 )
  );
  MUXCY   \Display_Controller/Mcount_count_cy<13>  (
    .CI(\Display_Controller/Mcount_count_cy [12]),
    .DI(LED_7_OBUF_116),
    .S(\Display_Controller/Mcount_count_lut [13]),
    .O(\Display_Controller/Mcount_count_cy [13])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Display_Controller/Mcount_count_lut<13>  (
    .I0(\Display_Controller/count_cmp_ge0000 ),
    .I1(\Display_Controller/count [13]),
    .I2(LED_7_OBUF_116),
    .O(\Display_Controller/Mcount_count_lut [13])
  );
  XORCY   \Display_Controller/Mcount_count_xor<12>  (
    .CI(\Display_Controller/Mcount_count_cy [11]),
    .LI(\Display_Controller/Mcount_count_lut [12]),
    .O(\Display_Controller/Mcount_count12 )
  );
  MUXCY   \Display_Controller/Mcount_count_cy<12>  (
    .CI(\Display_Controller/Mcount_count_cy [11]),
    .DI(LED_7_OBUF_116),
    .S(\Display_Controller/Mcount_count_lut [12]),
    .O(\Display_Controller/Mcount_count_cy [12])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Display_Controller/Mcount_count_lut<12>  (
    .I0(\Display_Controller/count_cmp_ge0000 ),
    .I1(\Display_Controller/count [12]),
    .I2(LED_7_OBUF_116),
    .O(\Display_Controller/Mcount_count_lut [12])
  );
  XORCY   \Display_Controller/Mcount_count_xor<11>  (
    .CI(\Display_Controller/Mcount_count_cy [10]),
    .LI(\Display_Controller/Mcount_count_lut [11]),
    .O(\Display_Controller/Mcount_count11 )
  );
  MUXCY   \Display_Controller/Mcount_count_cy<11>  (
    .CI(\Display_Controller/Mcount_count_cy [10]),
    .DI(LED_7_OBUF_116),
    .S(\Display_Controller/Mcount_count_lut [11]),
    .O(\Display_Controller/Mcount_count_cy [11])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Display_Controller/Mcount_count_lut<11>  (
    .I0(\Display_Controller/count_cmp_ge0000 ),
    .I1(\Display_Controller/count [11]),
    .I2(LED_7_OBUF_116),
    .O(\Display_Controller/Mcount_count_lut [11])
  );
  XORCY   \Display_Controller/Mcount_count_xor<10>  (
    .CI(\Display_Controller/Mcount_count_cy [9]),
    .LI(\Display_Controller/Mcount_count_lut [10]),
    .O(\Display_Controller/Mcount_count10 )
  );
  MUXCY   \Display_Controller/Mcount_count_cy<10>  (
    .CI(\Display_Controller/Mcount_count_cy [9]),
    .DI(LED_7_OBUF_116),
    .S(\Display_Controller/Mcount_count_lut [10]),
    .O(\Display_Controller/Mcount_count_cy [10])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Display_Controller/Mcount_count_lut<10>  (
    .I0(\Display_Controller/count_cmp_ge0000 ),
    .I1(\Display_Controller/count [10]),
    .I2(LED_7_OBUF_116),
    .O(\Display_Controller/Mcount_count_lut [10])
  );
  XORCY   \Display_Controller/Mcount_count_xor<9>  (
    .CI(\Display_Controller/Mcount_count_cy [8]),
    .LI(\Display_Controller/Mcount_count_lut [9]),
    .O(\Display_Controller/Mcount_count9 )
  );
  MUXCY   \Display_Controller/Mcount_count_cy<9>  (
    .CI(\Display_Controller/Mcount_count_cy [8]),
    .DI(LED_7_OBUF_116),
    .S(\Display_Controller/Mcount_count_lut [9]),
    .O(\Display_Controller/Mcount_count_cy [9])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Display_Controller/Mcount_count_lut<9>  (
    .I0(\Display_Controller/count_cmp_ge0000 ),
    .I1(\Display_Controller/count [9]),
    .I2(LED_7_OBUF_116),
    .O(\Display_Controller/Mcount_count_lut [9])
  );
  XORCY   \Display_Controller/Mcount_count_xor<8>  (
    .CI(\Display_Controller/Mcount_count_cy [7]),
    .LI(\Display_Controller/Mcount_count_lut [8]),
    .O(\Display_Controller/Mcount_count8 )
  );
  MUXCY   \Display_Controller/Mcount_count_cy<8>  (
    .CI(\Display_Controller/Mcount_count_cy [7]),
    .DI(LED_7_OBUF_116),
    .S(\Display_Controller/Mcount_count_lut [8]),
    .O(\Display_Controller/Mcount_count_cy [8])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Display_Controller/Mcount_count_lut<8>  (
    .I0(\Display_Controller/count_cmp_ge0000 ),
    .I1(\Display_Controller/count [8]),
    .I2(LED_7_OBUF_116),
    .O(\Display_Controller/Mcount_count_lut [8])
  );
  XORCY   \Display_Controller/Mcount_count_xor<7>  (
    .CI(\Display_Controller/Mcount_count_cy [6]),
    .LI(\Display_Controller/Mcount_count_lut [7]),
    .O(\Display_Controller/Mcount_count7 )
  );
  MUXCY   \Display_Controller/Mcount_count_cy<7>  (
    .CI(\Display_Controller/Mcount_count_cy [6]),
    .DI(LED_7_OBUF_116),
    .S(\Display_Controller/Mcount_count_lut [7]),
    .O(\Display_Controller/Mcount_count_cy [7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Display_Controller/Mcount_count_lut<7>  (
    .I0(\Display_Controller/count_cmp_ge0000 ),
    .I1(\Display_Controller/count [7]),
    .I2(LED_7_OBUF_116),
    .O(\Display_Controller/Mcount_count_lut [7])
  );
  XORCY   \Display_Controller/Mcount_count_xor<6>  (
    .CI(\Display_Controller/Mcount_count_cy [5]),
    .LI(\Display_Controller/Mcount_count_lut [6]),
    .O(\Display_Controller/Mcount_count6 )
  );
  MUXCY   \Display_Controller/Mcount_count_cy<6>  (
    .CI(\Display_Controller/Mcount_count_cy [5]),
    .DI(LED_7_OBUF_116),
    .S(\Display_Controller/Mcount_count_lut [6]),
    .O(\Display_Controller/Mcount_count_cy [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Display_Controller/Mcount_count_lut<6>  (
    .I0(\Display_Controller/count_cmp_ge0000 ),
    .I1(\Display_Controller/count [6]),
    .I2(LED_7_OBUF_116),
    .O(\Display_Controller/Mcount_count_lut [6])
  );
  XORCY   \Display_Controller/Mcount_count_xor<5>  (
    .CI(\Display_Controller/Mcount_count_cy [4]),
    .LI(\Display_Controller/Mcount_count_lut [5]),
    .O(\Display_Controller/Mcount_count5 )
  );
  MUXCY   \Display_Controller/Mcount_count_cy<5>  (
    .CI(\Display_Controller/Mcount_count_cy [4]),
    .DI(LED_7_OBUF_116),
    .S(\Display_Controller/Mcount_count_lut [5]),
    .O(\Display_Controller/Mcount_count_cy [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Display_Controller/Mcount_count_lut<5>  (
    .I0(\Display_Controller/count_cmp_ge0000 ),
    .I1(\Display_Controller/count [5]),
    .I2(LED_7_OBUF_116),
    .O(\Display_Controller/Mcount_count_lut [5])
  );
  XORCY   \Display_Controller/Mcount_count_xor<4>  (
    .CI(\Display_Controller/Mcount_count_cy [3]),
    .LI(\Display_Controller/Mcount_count_lut [4]),
    .O(\Display_Controller/Mcount_count4 )
  );
  MUXCY   \Display_Controller/Mcount_count_cy<4>  (
    .CI(\Display_Controller/Mcount_count_cy [3]),
    .DI(LED_7_OBUF_116),
    .S(\Display_Controller/Mcount_count_lut [4]),
    .O(\Display_Controller/Mcount_count_cy [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Display_Controller/Mcount_count_lut<4>  (
    .I0(\Display_Controller/count_cmp_ge0000 ),
    .I1(\Display_Controller/count [4]),
    .I2(LED_7_OBUF_116),
    .O(\Display_Controller/Mcount_count_lut [4])
  );
  XORCY   \Display_Controller/Mcount_count_xor<3>  (
    .CI(\Display_Controller/Mcount_count_cy [2]),
    .LI(\Display_Controller/Mcount_count_lut [3]),
    .O(\Display_Controller/Mcount_count3 )
  );
  MUXCY   \Display_Controller/Mcount_count_cy<3>  (
    .CI(\Display_Controller/Mcount_count_cy [2]),
    .DI(LED_7_OBUF_116),
    .S(\Display_Controller/Mcount_count_lut [3]),
    .O(\Display_Controller/Mcount_count_cy [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Display_Controller/Mcount_count_lut<3>  (
    .I0(\Display_Controller/count_cmp_ge0000 ),
    .I1(\Display_Controller/count [3]),
    .I2(LED_7_OBUF_116),
    .O(\Display_Controller/Mcount_count_lut [3])
  );
  XORCY   \Display_Controller/Mcount_count_xor<2>  (
    .CI(\Display_Controller/Mcount_count_cy [1]),
    .LI(\Display_Controller/Mcount_count_lut [2]),
    .O(\Display_Controller/Mcount_count2 )
  );
  MUXCY   \Display_Controller/Mcount_count_cy<2>  (
    .CI(\Display_Controller/Mcount_count_cy [1]),
    .DI(LED_7_OBUF_116),
    .S(\Display_Controller/Mcount_count_lut [2]),
    .O(\Display_Controller/Mcount_count_cy [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Display_Controller/Mcount_count_lut<2>  (
    .I0(\Display_Controller/count_cmp_ge0000 ),
    .I1(\Display_Controller/count [2]),
    .I2(LED_7_OBUF_116),
    .O(\Display_Controller/Mcount_count_lut [2])
  );
  XORCY   \Display_Controller/Mcount_count_xor<1>  (
    .CI(\Display_Controller/Mcount_count_cy [0]),
    .LI(\Display_Controller/Mcount_count_lut [1]),
    .O(\Display_Controller/Mcount_count1 )
  );
  MUXCY   \Display_Controller/Mcount_count_cy<1>  (
    .CI(\Display_Controller/Mcount_count_cy [0]),
    .DI(LED_7_OBUF_116),
    .S(\Display_Controller/Mcount_count_lut [1]),
    .O(\Display_Controller/Mcount_count_cy [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Display_Controller/Mcount_count_lut<1>  (
    .I0(\Display_Controller/count_cmp_ge0000 ),
    .I1(\Display_Controller/count [1]),
    .I2(LED_7_OBUF_116),
    .O(\Display_Controller/Mcount_count_lut [1])
  );
  XORCY   \Display_Controller/Mcount_count_xor<0>  (
    .CI(\Display_Controller/count_cmp_ge0000_inv ),
    .LI(\Display_Controller/Mcount_count_lut [0]),
    .O(\Display_Controller/Mcount_count )
  );
  MUXCY   \Display_Controller/Mcount_count_cy<0>  (
    .CI(\Display_Controller/count_cmp_ge0000_inv ),
    .DI(LED_7_OBUF_116),
    .S(\Display_Controller/Mcount_count_lut [0]),
    .O(\Display_Controller/Mcount_count_cy [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Display_Controller/Mcount_count_lut<0>  (
    .I0(\Display_Controller/count_cmp_ge0000 ),
    .I1(\Display_Controller/count [0]),
    .I2(LED_7_OBUF_116),
    .O(\Display_Controller/Mcount_count_lut [0])
  );
  FDCE   \Display_Controller/clk_250  (
    .C(clk_BUFGP_223),
    .CE(\Display_Controller/count_cmp_ge0000 ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(\Display_Controller/clk_250_not0001 ),
    .Q(\Display_Controller/clk_250_80 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \transmit/sreg_data_1_mux00001  (
    .I0(\transmit/write1Delay_1030 ),
    .I1(\transmit/sreg_data [2]),
    .O(\transmit/sreg_data_1_mux0000 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \transmit/sreg_data_0_mux00001  (
    .I0(\transmit/write1Delay_1030 ),
    .I1(\transmit/sreg_data [1]),
    .O(\transmit/sreg_data_0_mux0000 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \sm_clk_counter_mux0000<2>1  (
    .I0(sm_clk_counter[0]),
    .I1(ChipEnable_0),
    .O(sm_clk_counter_mux0000[2])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \receive/sSet1  (
    .I0(\receive/LOAD_654 ),
    .I1(\receive/RxRdy_720 ),
    .O(\receive/sSet )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \receive/present_state_FSM_Out21  (
    .I0(\receive/present_state_FSM_FFd2_826 ),
    .I1(\receive/present_state_FSM_FFd1_821 ),
    .O(\receive/nDOIT )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \receive/present_state_FSM_Out11  (
    .I0(\receive/present_state_FSM_FFd2_826 ),
    .I1(\receive/present_state_FSM_FFd1_821 ),
    .O(\receive/nLOAD )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \receive/present_state_FSM_Out01  (
    .I0(\receive/present_state_FSM_FFd1_821 ),
    .I1(\receive/present_state_FSM_FFd2_826 ),
    .O(\receive/nSTART )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \receive/b711  (
    .I0(LED_6_OBUF_115),
    .I1(\receive/sreg_data [7]),
    .O(\receive/b7 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \receive/RxSet1  (
    .I0(\receive/RxRdy_720 ),
    .I1(\receive/doneDelay_756 ),
    .O(\receive/RxSet )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  present_state_FSM_Out31 (
    .I0(present_state_FSM_FFd2_617),
    .I1(present_state_FSM_FFd1_615),
    .O(nRDY)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \transmit/sreg_data_8_mux00001  (
    .I0(\transmit/write1Delay_1030 ),
    .I1(\transmit/sreg_data [9]),
    .I2(\transmit/data [6]),
    .O(\transmit/sreg_data_8_mux0000 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \transmit/sreg_data_7_mux00001  (
    .I0(\transmit/write1Delay_1030 ),
    .I1(\transmit/sreg_data [8]),
    .I2(\transmit/data [5]),
    .O(\transmit/sreg_data_7_mux0000 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \transmit/sreg_data_6_mux00001  (
    .I0(\transmit/write1Delay_1030 ),
    .I1(\transmit/sreg_data [7]),
    .I2(\transmit/data [4]),
    .O(\transmit/sreg_data_6_mux0000 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \transmit/sreg_data_5_mux00001  (
    .I0(\transmit/write1Delay_1030 ),
    .I1(\transmit/sreg_data [6]),
    .I2(\transmit/data [3]),
    .O(\transmit/sreg_data_5_mux0000 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \transmit/sreg_data_4_mux00001  (
    .I0(\transmit/write1Delay_1030 ),
    .I1(\transmit/sreg_data [5]),
    .I2(\transmit/data [2]),
    .O(\transmit/sreg_data_4_mux0000 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \transmit/sreg_data_3_mux00001  (
    .I0(\transmit/write1Delay_1030 ),
    .I1(\transmit/sreg_data [4]),
    .I2(\transmit/data [1]),
    .O(\transmit/sreg_data_3_mux0000 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \transmit/sreg_data_2_mux00001  (
    .I0(\transmit/write1Delay_1030 ),
    .I1(\transmit/sreg_data [3]),
    .I2(\transmit/data [0]),
    .O(\transmit/sreg_data_2_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  nReadLd1 (
    .I0(sm_clk_counter[0]),
    .I1(present_state_FSM_FFd2_617),
    .I2(sm_clk_counter[2]),
    .I3(sm_clk_counter[1]),
    .O(nReadLd)
  );
  LUT4 #(
    .INIT ( 16'h1014 ))
  \sm_clk_counter_mux0000<1>1  (
    .I0(ChipEnable_0),
    .I1(sm_clk_counter[0]),
    .I2(sm_clk_counter[1]),
    .I3(sm_clk_counter[2]),
    .O(sm_clk_counter_mux0000[1])
  );
  LUT4 #(
    .INIT ( 16'h0058 ))
  \sm_clk_counter_mux0000<0>1  (
    .I0(sm_clk_counter[0]),
    .I1(sm_clk_counter[1]),
    .I2(sm_clk_counter[2]),
    .I3(ChipEnable_0),
    .O(sm_clk_counter_mux0000[0])
  );
  LUT3 #(
    .INIT ( 8'h51 ))
  \receive/sreg_data_8_not00011  (
    .I0(\receive/START_723 ),
    .I1(\receive/DOIT_653 ),
    .I2(\receive/LOAD_654 ),
    .O(\receive/sreg_data_8_not0001 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \Display_Controller/LED_contr/present_state_FSM_Out01  (
    .I0(\Display_Controller/LED_contr/present_state_FSM_FFd1_2 ),
    .I1(\Display_Controller/LED_contr/present_state_FSM_FFd2_3 ),
    .O(\Display_Controller/seg_sel [1])
  );
  LUT4 #(
    .INIT ( 16'h445C ))
  \Display_Controller/Mrom_ad_out_rom000041  (
    .I0(\Display_Controller/ad_out [3]),
    .I1(\Display_Controller/ad_out [0]),
    .I2(\Display_Controller/ad_out [2]),
    .I3(\Display_Controller/ad_out [1]),
    .O(e_OBUF_227)
  );
  LUT4 #(
    .INIT ( 16'h80C2 ))
  \Display_Controller/Mrom_ad_out_rom000021  (
    .I0(\Display_Controller/ad_out [1]),
    .I1(\Display_Controller/ad_out [2]),
    .I2(\Display_Controller/ad_out [3]),
    .I3(\Display_Controller/ad_out [0]),
    .O(c_OBUF_213)
  );
  LUT4 #(
    .INIT ( 16'h2141 ))
  \Display_Controller/Mrom_ad_out_rom000061  (
    .I0(\Display_Controller/ad_out [1]),
    .I1(\Display_Controller/ad_out [3]),
    .I2(\Display_Controller/ad_out [2]),
    .I3(\Display_Controller/ad_out [0]),
    .O(g_OBUF_539)
  );
  LUT4 #(
    .INIT ( 16'h6054 ))
  \Display_Controller/Mrom_ad_out_rom000051  (
    .I0(\Display_Controller/ad_out [3]),
    .I1(\Display_Controller/ad_out [1]),
    .I2(\Display_Controller/ad_out [0]),
    .I3(\Display_Controller/ad_out [2]),
    .O(f_OBUF_537)
  );
  LUT4 #(
    .INIT ( 16'hAC48 ))
  \Display_Controller/Mrom_ad_out_rom0000111  (
    .I0(\Display_Controller/ad_out [3]),
    .I1(\Display_Controller/ad_out [2]),
    .I2(\Display_Controller/ad_out [0]),
    .I3(\Display_Controller/ad_out [1]),
    .O(b_OBUF_206)
  );
  LUT4 #(
    .INIT ( 16'h8692 ))
  \Display_Controller/Mrom_ad_out_rom000031  (
    .I0(\Display_Controller/ad_out [0]),
    .I1(\Display_Controller/ad_out [1]),
    .I2(\Display_Controller/ad_out [2]),
    .I3(\Display_Controller/ad_out [3]),
    .O(d_OBUF_225)
  );
  LUT4 #(
    .INIT ( 16'h4184 ))
  \Display_Controller/Mrom_ad_out_rom000011  (
    .I0(\Display_Controller/ad_out [1]),
    .I1(\Display_Controller/ad_out [0]),
    .I2(\Display_Controller/ad_out [3]),
    .I3(\Display_Controller/ad_out [2]),
    .O(a_OBUF_204)
  );
  LUT4 #(
    .INIT ( 16'h2028 ))
  \transmit/Mmux_nBitCount12  (
    .I0(\transmit/start_1029 ),
    .I1(\transmit/bitCount [0]),
    .I2(\transmit/Mcompar_btu_cmp_eq0000_cy [9]),
    .I3(\transmit/Done ),
    .O(\transmit/nBitCount [0])
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \transmit/Done_cmp_eq00001  (
    .I0(\transmit/bitCount [1]),
    .I1(\transmit/bitCount [0]),
    .I2(\transmit/bitCount [3]),
    .I3(\transmit/bitCount [2]),
    .O(\transmit/Done )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \transmit/sreg_data_10_not00011  (
    .I0(\transmit/Mcompar_btu_cmp_eq0000_cy [9]),
    .I1(\transmit/write1Delay_1030 ),
    .O(\transmit/sreg_data_10_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h8040 ))
  \receive/parityResult1  (
    .I0(LED_4_OBUF_113),
    .I1(LED_5_OBUF_114),
    .I2(\receive/doneDelay_756 ),
    .I3(\receive/PARITY_ERR_not0001_bdd2 ),
    .O(\receive/parityResult )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \transmit/sreg_data_10_mux0000312  (
    .I0(\transmit/data [2]),
    .I1(\transmit/data [1]),
    .I2(\transmit/data [0]),
    .I3(LED_4_OBUF_113),
    .O(\transmit/sreg_data_10_mux0000312_1007 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \transmit/sreg_data_10_mux0000325  (
    .I0(\transmit/data [6]),
    .I1(\transmit/data [5]),
    .I2(\transmit/data [4]),
    .I3(\transmit/data [3]),
    .O(\transmit/sreg_data_10_mux0000325_1008 )
  );
  LUT3 #(
    .INIT ( 8'h89 ))
  \transmit/Mrom_baudCountNum151  (
    .I0(LED_2_OBUF_111),
    .I1(LED_3_OBUF_112),
    .I2(LED_1_OBUF_110),
    .O(\transmit/Mrom_baudCountNum15 )
  );
  LUT4 #(
    .INIT ( 16'h8889 ))
  \transmit/Mrom_baudCountNum171  (
    .I0(LED_2_OBUF_111),
    .I1(LED_3_OBUF_112),
    .I2(LED_1_OBUF_110),
    .I3(LED_0_OBUF_109),
    .O(\receive/finalBaudCountNum<16>_bdd0 )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \transmit/Mrom_baudCountNum131  (
    .I0(LED_3_OBUF_112),
    .I1(LED_2_OBUF_111),
    .I2(LED_0_OBUF_109),
    .O(\transmit/Mrom_baudCountNum13 )
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \transmit/Mrom_baudCountNum141  (
    .I0(LED_2_OBUF_111),
    .I1(LED_1_OBUF_110),
    .I2(LED_3_OBUF_112),
    .I3(LED_0_OBUF_109),
    .O(\transmit/Mrom_baudCountNum14 )
  );
  LUT4 #(
    .INIT ( 16'hF209 ))
  \transmit/Mrom_baudCountNum1111  (
    .I0(LED_0_OBUF_109),
    .I1(LED_1_OBUF_110),
    .I2(LED_3_OBUF_112),
    .I3(LED_2_OBUF_111),
    .O(\transmit/Mrom_baudCountNum11_918 )
  );
  LUT4 #(
    .INIT ( 16'h0006 ))
  \transmit/Mrom_baudCountNum121  (
    .I0(LED_1_OBUF_110),
    .I1(LED_2_OBUF_111),
    .I2(LED_3_OBUF_112),
    .I3(LED_0_OBUF_109),
    .O(\transmit/Mrom_baudCountNum12 )
  );
  LUT4 #(
    .INIT ( 16'hA8AD ))
  \transmit/Mrom_baudCountNum91  (
    .I0(LED_2_OBUF_111),
    .I1(LED_0_OBUF_109),
    .I2(LED_3_OBUF_112),
    .I3(LED_1_OBUF_110),
    .O(\receive/finalBaudCountNum<8>_bdd0 )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \transmit/Mrom_baudCountNum101  (
    .I0(LED_0_OBUF_109),
    .I1(LED_3_OBUF_112),
    .I2(LED_2_OBUF_111),
    .O(\transmit/Mrom_baudCountNum10 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \receive/PARITY_ERR_not0001432  (
    .I0(\receive/sreg_data [4]),
    .I1(\receive/sreg_data [5]),
    .I2(\receive/sreg_data [6]),
    .I3(\receive/sreg_data [7]),
    .O(\receive/PARITY_ERR_not0001432_715 )
  );
  LUT4 #(
    .INIT ( 16'h9669 ))
  \receive/PARITY_ERR_not0001473  (
    .I0(\receive/sreg_data [7]),
    .I1(\receive/sreg_data [0]),
    .I2(\receive/sreg_data [1]),
    .I3(\receive/sreg_data [2]),
    .O(\receive/PARITY_ERR_not0001473_716 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \receive/PARITY_ERR_not0001486  (
    .I0(\receive/sreg_data [3]),
    .I1(\receive/sreg_data [4]),
    .I2(\receive/sreg_data [5]),
    .I3(\receive/sreg_data [6]),
    .O(\receive/PARITY_ERR_not0001486_717 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \receive/PARITY_ERR_not0001487  (
    .I0(\receive/PARITY_ERR_not0001473_716 ),
    .I1(\receive/PARITY_ERR_not0001486_717 ),
    .O(\receive/PARITY_ERR_not0001487_718 )
  );
  LUT4 #(
    .INIT ( 16'h7D28 ))
  \receive/PARITY_ERR_not00014114  (
    .I0(LED_6_OBUF_115),
    .I1(\receive/PARITY_ERR_not0001432_715 ),
    .I2(\receive/PARITY_ERR_not0001417 ),
    .I3(\receive/PARITY_ERR_not0001487_718 ),
    .O(\receive/PARITY_ERR_not0001_bdd2 )
  );
  LUT4 #(
    .INIT ( 16'h4041 ))
  \receive/finalBaudCountNum<15>11  (
    .I0(\receive/START_723 ),
    .I1(LED_2_OBUF_111),
    .I2(LED_3_OBUF_112),
    .I3(LED_1_OBUF_110),
    .O(\receive/finalBaudCountNum [15])
  );
  LUT4 #(
    .INIT ( 16'h1504 ))
  \transmit/Mrom_baudCountNum71  (
    .I0(LED_2_OBUF_111),
    .I1(LED_3_OBUF_112),
    .I2(LED_1_OBUF_110),
    .I3(LED_0_OBUF_109),
    .O(\transmit/Mrom_baudCountNum7 )
  );
  LUT4 #(
    .INIT ( 16'hF1C5 ))
  \transmit/Mrom_baudCountNum81  (
    .I0(LED_0_OBUF_109),
    .I1(LED_1_OBUF_110),
    .I2(LED_2_OBUF_111),
    .I3(LED_3_OBUF_112),
    .O(\transmit/Mrom_baudCountNum8 )
  );
  LUT4 #(
    .INIT ( 16'h4E54 ))
  \transmit/Mrom_baudCountNum51  (
    .I0(LED_2_OBUF_111),
    .I1(LED_1_OBUF_110),
    .I2(LED_3_OBUF_112),
    .I3(LED_0_OBUF_109),
    .O(\transmit/Mrom_baudCountNum5 )
  );
  LUT4 #(
    .INIT ( 16'h0966 ))
  \transmit/Mrom_baudCountNum61  (
    .I0(LED_0_OBUF_109),
    .I1(LED_1_OBUF_110),
    .I2(LED_3_OBUF_112),
    .I3(LED_2_OBUF_111),
    .O(\transmit/Mrom_baudCountNum6 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \receive/present_state_FSM_FFd1-In28  (
    .I0(Rx_IBUF_191),
    .I1(\receive/present_state_FSM_FFd2_826 ),
    .O(\receive/present_state_FSM_FFd1-In28_825 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \receive/present_state_FSM_FFd1-In34  (
    .I0(\receive/present_state_FSM_FFd1_821 ),
    .I1(\receive/present_state_FSM_FFd1-In15 ),
    .I2(\receive/Mcompar_btu_cmp_eq0000_cy [8]),
    .I3(\receive/present_state_FSM_FFd1-In28_825 ),
    .O(\receive/present_state_FSM_FFd1-In )
  );
  LUT4 #(
    .INIT ( 16'hBE09 ))
  \transmit/Mrom_baudCountNum31  (
    .I0(LED_2_OBUF_111),
    .I1(LED_0_OBUF_109),
    .I2(LED_1_OBUF_110),
    .I3(LED_3_OBUF_112),
    .O(\transmit/Mrom_baudCountNum3 )
  );
  LUT4 #(
    .INIT ( 16'h5426 ))
  \transmit/Mrom_baudCountNum411  (
    .I0(LED_2_OBUF_111),
    .I1(LED_3_OBUF_112),
    .I2(LED_1_OBUF_110),
    .I3(LED_0_OBUF_109),
    .O(\transmit/Mrom_baudCountNum4 )
  );
  LUT4 #(
    .INIT ( 16'hA8AF ))
  \transmit/Mrom_baudCountNum111  (
    .I0(LED_2_OBUF_111),
    .I1(LED_0_OBUF_109),
    .I2(LED_3_OBUF_112),
    .I3(LED_1_OBUF_110),
    .O(\transmit/Mrom_baudCountNum1 )
  );
  LUT4 #(
    .INIT ( 16'h4602 ))
  \transmit/Mrom_baudCountNum211  (
    .I0(LED_2_OBUF_111),
    .I1(LED_3_OBUF_112),
    .I2(LED_0_OBUF_109),
    .I3(LED_1_OBUF_110),
    .O(\transmit/Mrom_baudCountNum2 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \receive/finalBaudCountNum<9>1_SW0  (
    .I0(LED_2_OBUF_111),
    .I1(LED_0_OBUF_109),
    .O(N33)
  );
  LUT4 #(
    .INIT ( 16'h5702 ))
  \receive/finalBaudCountNum<9>1  (
    .I0(\receive/START_723 ),
    .I1(LED_3_OBUF_112),
    .I2(N33),
    .I3(\receive/finalBaudCountNum<8>_bdd0 ),
    .O(\receive/finalBaudCountNum [9])
  );
  LUT4 #(
    .INIT ( 16'hAB01 ))
  \receive/finalBaudCountNum<10>  (
    .I0(\receive/START_723 ),
    .I1(LED_3_OBUF_112),
    .I2(N33),
    .I3(\transmit/Mrom_baudCountNum11_918 ),
    .O(\receive/finalBaudCountNum [10])
  );
  LUT4 #(
    .INIT ( 16'h6226 ))
  \transmit/Mrom_baudCountNum11  (
    .I0(LED_2_OBUF_111),
    .I1(LED_3_OBUF_112),
    .I2(LED_0_OBUF_109),
    .I3(LED_1_OBUF_110),
    .O(\transmit/Mrom_baudCountNum )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \receive/finalBaudCountNum<13>_SW0  (
    .I0(LED_3_OBUF_112),
    .I1(LED_2_OBUF_111),
    .O(N37)
  );
  LUT4 #(
    .INIT ( 16'h0058 ))
  \receive/finalBaudCountNum<13>  (
    .I0(\receive/START_723 ),
    .I1(LED_1_OBUF_110),
    .I2(LED_0_OBUF_109),
    .I3(N37),
    .O(\receive/finalBaudCountNum [13])
  );
  LUT3 #(
    .INIT ( 8'hEB ))
  \receive/finalBaudCountNum<11>_SW0  (
    .I0(LED_0_OBUF_109),
    .I1(LED_2_OBUF_111),
    .I2(LED_1_OBUF_110),
    .O(N39)
  );
  LUT4 #(
    .INIT ( 16'h5702 ))
  \receive/finalBaudCountNum<11>  (
    .I0(\receive/START_723 ),
    .I1(LED_3_OBUF_112),
    .I2(N39),
    .I3(\transmit/Mrom_baudCountNum11_918 ),
    .O(\receive/finalBaudCountNum [11])
  );
  LUT3 #(
    .INIT ( 8'hDF ))
  \receive/Mmux_nBitCount1_SW0  (
    .I0(\receive/bitCount [1]),
    .I1(\receive/bitCount [2]),
    .I2(\receive/bitCount [3]),
    .O(N41)
  );
  LUT4 #(
    .INIT ( 16'h6020 ))
  \receive/Mmux_nBitCount1  (
    .I0(\receive/Mcompar_btu_cmp_eq0000_cy [8]),
    .I1(\receive/bitCount [0]),
    .I2(\receive/DOIT_653 ),
    .I3(N41),
    .O(\receive/nBitCount [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \receive/finalBaudCountNum<2>  (
    .I0(\receive/START_723 ),
    .I1(\transmit/Mrom_baudCountNum2 ),
    .I2(\transmit/Mrom_baudCountNum3 ),
    .O(\receive/finalBaudCountNum [2])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \receive/Mmux_nBitCount3_SW0  (
    .I0(\receive/bitCount [0]),
    .I1(\receive/bitCount [1]),
    .O(N51)
  );
  LUT4 #(
    .INIT ( 16'h2888 ))
  \receive/Mmux_nBitCount3  (
    .I0(\receive/DOIT_653 ),
    .I1(\receive/bitCount [2]),
    .I2(\receive/Mcompar_btu_cmp_eq0000_cy [8]),
    .I3(N51),
    .O(\receive/nBitCount [2])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \receive/RxRdy_not0001_SW0  (
    .I0(\receive/doneDelay_756 ),
    .I1(\receive/RxRdy_720 ),
    .O(N61)
  );
  LUT4 #(
    .INIT ( 16'h20FF ))
  \receive/RxRdy_not0001  (
    .I0(port_id[0]),
    .I1(port_id[4]),
    .I2(N10),
    .I3(N61),
    .O(\receive/RxRdy_not0001_721 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \receive/finalBaudCountNum<0>  (
    .I0(\receive/START_723 ),
    .I1(\transmit/Mrom_baudCountNum ),
    .I2(\transmit/Mrom_baudCountNum1 ),
    .O(\receive/finalBaudCountNum [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \receive/finalBaudCountNum<7>  (
    .I0(\receive/START_723 ),
    .I1(\transmit/Mrom_baudCountNum7 ),
    .I2(\transmit/Mrom_baudCountNum8 ),
    .O(\receive/finalBaudCountNum [7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \receive/finalBaudCountNum<8>1  (
    .I0(\receive/START_723 ),
    .I1(\transmit/Mrom_baudCountNum8 ),
    .I2(\receive/finalBaudCountNum<8>_bdd0 ),
    .O(\receive/finalBaudCountNum [8])
  );
  LUT4 #(
    .INIT ( 16'h8AAA ))
  \present_state_FSM_FFd2-In_SW0  (
    .I0(present_state_FSM_FFd2_617),
    .I1(sm_clk_counter[1]),
    .I2(sm_clk_counter[2]),
    .I3(sm_clk_counter[0]),
    .O(N76)
  );
  LUT4 #(
    .INIT ( 16'hFF20 ))
  \present_state_FSM_FFd2-In  (
    .I0(N194),
    .I1(port_id[0]),
    .I2(read_strobe),
    .I3(N76),
    .O(\present_state_FSM_FFd2-In_618 )
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  \present_state_FSM_FFd1-In2_SW0  (
    .I0(port_id[2]),
    .I1(port_id[1]),
    .I2(present_state_FSM_FFd1_615),
    .I3(present_state_FSM_FFd2_617),
    .O(N78)
  );
  LUT4 #(
    .INIT ( 16'h8AAA ))
  \present_state_FSM_FFd1-In_SW0  (
    .I0(present_state_FSM_FFd1_615),
    .I1(sm_clk_counter[1]),
    .I2(sm_clk_counter[2]),
    .I3(sm_clk_counter[0]),
    .O(N80)
  );
  LUT4 #(
    .INIT ( 16'hEAAA ))
  \present_state_FSM_FFd1-In  (
    .I0(N80),
    .I1(port_id[0]),
    .I2(write_strobe),
    .I3(N12),
    .O(\present_state_FSM_FFd1-In_616 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \receive/PARITY_ERR_not00011_SW0  (
    .I0(\receive/doneDelay_756 ),
    .I1(LED_5_OBUF_114),
    .O(N85)
  );
  LUT4 #(
    .INIT ( 16'hFF09 ))
  \receive/PARITY_ERR_not00011  (
    .I0(\receive/PARITY_ERR_not0001_bdd2 ),
    .I1(LED_4_OBUF_113),
    .I2(N85),
    .I3(read[0]),
    .O(\receive/PARITY_ERR_not0001 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \receive/OVERFLOW_not00011  (
    .I0(\receive/LOAD_654 ),
    .I1(\receive/RxRdy_720 ),
    .I2(N195),
    .O(\receive/OVERFLOW_not0001 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  write_5_mux00001 (
    .I0(port_id[2]),
    .I1(N20),
    .O(\write[5] )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  write_15_mux00001 (
    .I0(port_id[0]),
    .I1(port_id[1]),
    .I2(N196),
    .O(\write[15] )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  write_14_mux00001 (
    .I0(port_id[1]),
    .I1(port_id[0]),
    .I2(N15),
    .O(\write[14] )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  write_13_mux00001 (
    .I0(port_id[1]),
    .I1(port_id[0]),
    .I2(N15),
    .O(\write[13] )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  write_12_mux00001 (
    .I0(port_id[0]),
    .I1(port_id[1]),
    .I2(N15),
    .O(\write[12] )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  write_1_mux00002 (
    .I0(port_id[2]),
    .I1(N197),
    .O(\write[1] )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  write_11_mux000011 (
    .I0(write_strobe),
    .I1(port_id[4]),
    .I2(N14),
    .O(N111)
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \present_state_FSM_FFd1-In211  (
    .I0(port_id[7]),
    .I1(port_id[6]),
    .I2(port_id[5]),
    .O(N14)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \in_port<5>_SW0  (
    .I0(\receive/OVERFLOW_708 ),
    .I1(\receive/data [5]),
    .I2(port_id[0]),
    .O(N104)
  );
  LUT4 #(
    .INIT ( 16'hD800 ))
  \in_port<5>  (
    .I0(port_id[4]),
    .I1(N105),
    .I2(N104),
    .I3(N10),
    .O(in_port[5])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \in_port<1>_SW0  (
    .I0(\transmit/TxRdy_930 ),
    .I1(\receive/data [1]),
    .I2(port_id[0]),
    .O(N110)
  );
  LUT4 #(
    .INIT ( 16'hD800 ))
  \in_port<1>  (
    .I0(port_id[4]),
    .I1(N1111),
    .I2(N110),
    .I3(N10),
    .O(in_port[1])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \in_port<4>_SW0  (
    .I0(\receive/PARITY_ERR_710 ),
    .I1(\receive/data [4]),
    .I2(port_id[0]),
    .O(N113)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \in_port<4>_SW1  (
    .I0(rdDataInReg1[4]),
    .I1(rdDataInReg0[4]),
    .I2(port_id[0]),
    .O(N114)
  );
  LUT4 #(
    .INIT ( 16'hD800 ))
  \in_port<4>  (
    .I0(port_id[4]),
    .I1(N114),
    .I2(N113),
    .I3(N199),
    .O(in_port[4])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \in_port<0>60  (
    .I0(OutputEnable_188),
    .I1(port_id[3]),
    .O(\in_port<0>60_542 )
  );
  IBUF   rstb_IBUF (
    .I(rstb),
    .O(rstb_IBUF_851)
  );
  IBUF   parity_en_IBUF (
    .I(parity_en),
    .O(LED_5_OBUF_114)
  );
  IBUF   Rx_IBUF (
    .I(Rx),
    .O(Rx_IBUF_191)
  );
  IBUF   bit8_IBUF (
    .I(bit8),
    .O(LED_6_OBUF_115)
  );
  IBUF   odd_n_even_IBUF (
    .I(odd_n_even),
    .O(LED_4_OBUF_113)
  );
  IBUF   baud_val_3_IBUF (
    .I(baud_val[3]),
    .O(LED_3_OBUF_112)
  );
  IBUF   baud_val_2_IBUF (
    .I(baud_val[2]),
    .O(LED_2_OBUF_111)
  );
  IBUF   baud_val_1_IBUF (
    .I(baud_val[1]),
    .O(LED_1_OBUF_110)
  );
  IBUF   baud_val_0_IBUF (
    .I(baud_val[0]),
    .O(LED_0_OBUF_109)
  );
  OBUF   MT_CE_OBUF (
    .I(ChipEnable_0),
    .O(MT_CE)
  );
  OBUF   a_OBUF (
    .I(a_OBUF_204),
    .O(a)
  );
  OBUF   b_OBUF (
    .I(b_OBUF_206),
    .O(b)
  );
  OBUF   MT_CLK_OBUF (
    .I(LED_7_OBUF_116),
    .O(MT_CLK)
  );
  OBUF   c_OBUF (
    .I(c_OBUF_213),
    .O(c)
  );
  OBUF   d_OBUF (
    .I(d_OBUF_225),
    .O(d)
  );
  OBUF   e_OBUF (
    .I(e_OBUF_227),
    .O(e)
  );
  OBUF   f_OBUF (
    .I(f_OBUF_537),
    .O(f)
  );
  OBUF   g_OBUF (
    .I(g_OBUF_539),
    .O(g)
  );
  OBUF   MT_LB_OBUF (
    .I(LED_7_OBUF_116),
    .O(MT_LB)
  );
  OBUF   MT_OE_OBUF (
    .I(OutputEnable_188),
    .O(MT_OE)
  );
  OBUF   MT_CRE_OBUF (
    .I(LED_7_OBUF_116),
    .O(MT_CRE)
  );
  OBUF   MT_UB_OBUF (
    .I(LED_7_OBUF_116),
    .O(MT_UB)
  );
  OBUF   tx_OBUF (
    .I(\transmit/sreg_data [0]),
    .O(tx)
  );
  OBUF   MT_WAIT_OBUF (
    .I(LED_7_OBUF_116),
    .O(MT_WAIT)
  );
  OBUF   MT_WE_OBUF (
    .I(WriteEnable_194),
    .O(MT_WE)
  );
  OBUF   a0_OBUF (
    .I(a0_OBUF_197),
    .O(a0)
  );
  OBUF   MT_ADV_OBUF (
    .I(LED_7_OBUF_116),
    .O(MT_ADV)
  );
  OBUF   a1_OBUF (
    .I(a1_OBUF_199),
    .O(a1)
  );
  OBUF   a2_OBUF (
    .I(a2_OBUF_201),
    .O(a2)
  );
  OBUF   a3_OBUF (
    .I(a3_OBUF_203),
    .O(a3)
  );
  OBUF   LED_7_OBUF (
    .I(LED_7_OBUF_116),
    .O(LED[7])
  );
  OBUF   LED_6_OBUF (
    .I(LED_6_OBUF_115),
    .O(LED[6])
  );
  OBUF   LED_5_OBUF (
    .I(LED_5_OBUF_114),
    .O(LED[5])
  );
  OBUF   LED_4_OBUF (
    .I(LED_4_OBUF_113),
    .O(LED[4])
  );
  OBUF   LED_3_OBUF (
    .I(LED_3_OBUF_112),
    .O(LED[3])
  );
  OBUF   LED_2_OBUF (
    .I(LED_2_OBUF_111),
    .O(LED[2])
  );
  OBUF   LED_1_OBUF (
    .I(LED_1_OBUF_110),
    .O(LED[1])
  );
  OBUF   LED_0_OBUF (
    .I(LED_0_OBUF_109),
    .O(LED[0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \transmit/Madd_nBaudCount_addsub0000_cy<16>_rt  (
    .I0(\transmit/baudCount [16]),
    .O(\transmit/Madd_nBaudCount_addsub0000_cy<16>_rt_873 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \transmit/Madd_nBaudCount_addsub0000_cy<15>_rt  (
    .I0(\transmit/baudCount [15]),
    .O(\transmit/Madd_nBaudCount_addsub0000_cy<15>_rt_871 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \transmit/Madd_nBaudCount_addsub0000_cy<14>_rt  (
    .I0(\transmit/baudCount [14]),
    .O(\transmit/Madd_nBaudCount_addsub0000_cy<14>_rt_869 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \transmit/Madd_nBaudCount_addsub0000_cy<13>_rt  (
    .I0(\transmit/baudCount [13]),
    .O(\transmit/Madd_nBaudCount_addsub0000_cy<13>_rt_867 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \transmit/Madd_nBaudCount_addsub0000_cy<12>_rt  (
    .I0(\transmit/baudCount [12]),
    .O(\transmit/Madd_nBaudCount_addsub0000_cy<12>_rt_865 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \transmit/Madd_nBaudCount_addsub0000_cy<11>_rt  (
    .I0(\transmit/baudCount [11]),
    .O(\transmit/Madd_nBaudCount_addsub0000_cy<11>_rt_863 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \transmit/Madd_nBaudCount_addsub0000_cy<10>_rt  (
    .I0(\transmit/baudCount [10]),
    .O(\transmit/Madd_nBaudCount_addsub0000_cy<10>_rt_861 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \transmit/Madd_nBaudCount_addsub0000_cy<9>_rt  (
    .I0(\transmit/baudCount [9]),
    .O(\transmit/Madd_nBaudCount_addsub0000_cy<9>_rt_891 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \transmit/Madd_nBaudCount_addsub0000_cy<8>_rt  (
    .I0(\transmit/baudCount [8]),
    .O(\transmit/Madd_nBaudCount_addsub0000_cy<8>_rt_889 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \transmit/Madd_nBaudCount_addsub0000_cy<7>_rt  (
    .I0(\transmit/baudCount [7]),
    .O(\transmit/Madd_nBaudCount_addsub0000_cy<7>_rt_887 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \transmit/Madd_nBaudCount_addsub0000_cy<6>_rt  (
    .I0(\transmit/baudCount [6]),
    .O(\transmit/Madd_nBaudCount_addsub0000_cy<6>_rt_885 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \transmit/Madd_nBaudCount_addsub0000_cy<5>_rt  (
    .I0(\transmit/baudCount [5]),
    .O(\transmit/Madd_nBaudCount_addsub0000_cy<5>_rt_883 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \transmit/Madd_nBaudCount_addsub0000_cy<4>_rt  (
    .I0(\transmit/baudCount [4]),
    .O(\transmit/Madd_nBaudCount_addsub0000_cy<4>_rt_881 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \transmit/Madd_nBaudCount_addsub0000_cy<3>_rt  (
    .I0(\transmit/baudCount [3]),
    .O(\transmit/Madd_nBaudCount_addsub0000_cy<3>_rt_879 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \transmit/Madd_nBaudCount_addsub0000_cy<2>_rt  (
    .I0(\transmit/baudCount [2]),
    .O(\transmit/Madd_nBaudCount_addsub0000_cy<2>_rt_877 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \transmit/Madd_nBaudCount_addsub0000_cy<1>_rt  (
    .I0(\transmit/baudCount [1]),
    .O(\transmit/Madd_nBaudCount_addsub0000_cy<1>_rt_875 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \receive/Madd_nBaudCount_addsub0000_cy<16>_rt  (
    .I0(\receive/baudCount [16]),
    .O(\receive/Madd_nBaudCount_addsub0000_cy<16>_rt_669 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \receive/Madd_nBaudCount_addsub0000_cy<15>_rt  (
    .I0(\receive/baudCount [15]),
    .O(\receive/Madd_nBaudCount_addsub0000_cy<15>_rt_667 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \receive/Madd_nBaudCount_addsub0000_cy<14>_rt  (
    .I0(\receive/baudCount [14]),
    .O(\receive/Madd_nBaudCount_addsub0000_cy<14>_rt_665 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \receive/Madd_nBaudCount_addsub0000_cy<13>_rt  (
    .I0(\receive/baudCount [13]),
    .O(\receive/Madd_nBaudCount_addsub0000_cy<13>_rt_663 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \receive/Madd_nBaudCount_addsub0000_cy<12>_rt  (
    .I0(\receive/baudCount [12]),
    .O(\receive/Madd_nBaudCount_addsub0000_cy<12>_rt_661 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \receive/Madd_nBaudCount_addsub0000_cy<11>_rt  (
    .I0(\receive/baudCount [11]),
    .O(\receive/Madd_nBaudCount_addsub0000_cy<11>_rt_659 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \receive/Madd_nBaudCount_addsub0000_cy<10>_rt  (
    .I0(\receive/baudCount [10]),
    .O(\receive/Madd_nBaudCount_addsub0000_cy<10>_rt_657 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \receive/Madd_nBaudCount_addsub0000_cy<9>_rt  (
    .I0(\receive/baudCount [9]),
    .O(\receive/Madd_nBaudCount_addsub0000_cy<9>_rt_687 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \receive/Madd_nBaudCount_addsub0000_cy<8>_rt  (
    .I0(\receive/baudCount [8]),
    .O(\receive/Madd_nBaudCount_addsub0000_cy<8>_rt_685 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \receive/Madd_nBaudCount_addsub0000_cy<7>_rt  (
    .I0(\receive/baudCount [7]),
    .O(\receive/Madd_nBaudCount_addsub0000_cy<7>_rt_683 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \receive/Madd_nBaudCount_addsub0000_cy<6>_rt  (
    .I0(\receive/baudCount [6]),
    .O(\receive/Madd_nBaudCount_addsub0000_cy<6>_rt_681 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \receive/Madd_nBaudCount_addsub0000_cy<5>_rt  (
    .I0(\receive/baudCount [5]),
    .O(\receive/Madd_nBaudCount_addsub0000_cy<5>_rt_679 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \receive/Madd_nBaudCount_addsub0000_cy<4>_rt  (
    .I0(\receive/baudCount [4]),
    .O(\receive/Madd_nBaudCount_addsub0000_cy<4>_rt_677 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \receive/Madd_nBaudCount_addsub0000_cy<3>_rt  (
    .I0(\receive/baudCount [3]),
    .O(\receive/Madd_nBaudCount_addsub0000_cy<3>_rt_675 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \receive/Madd_nBaudCount_addsub0000_cy<2>_rt  (
    .I0(\receive/baudCount [2]),
    .O(\receive/Madd_nBaudCount_addsub0000_cy<2>_rt_673 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \receive/Madd_nBaudCount_addsub0000_cy<1>_rt  (
    .I0(\receive/baudCount [1]),
    .O(\receive/Madd_nBaudCount_addsub0000_cy<1>_rt_671 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Display_Controller/Mcompar_count_cmp_ge0000_cy<2>_rt  (
    .I0(\Display_Controller/count [5]),
    .O(\Display_Controller/Mcompar_count_cmp_ge0000_cy<2>_rt_10 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Display_Controller/Mcompar_count_cmp_ge0000_cy<0>_rt  (
    .I0(\Display_Controller/count [3]),
    .O(\Display_Controller/Mcompar_count_cmp_ge0000_cy<0>_rt_7 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \transmit/Madd_nBaudCount_addsub0000_xor<17>_rt  (
    .I0(\transmit/baudCount [17]),
    .O(\transmit/Madd_nBaudCount_addsub0000_xor<17>_rt_893 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \receive/Madd_nBaudCount_addsub0000_xor<17>_rt  (
    .I0(\receive/baudCount [17]),
    .O(\receive/Madd_nBaudCount_addsub0000_xor<17>_rt_689 )
  );
  LUT4 #(
    .INIT ( 16'hF5F3 ))
  \in_port<0>48_SW1  (
    .I0(rdDataInReg1[0]),
    .I1(rdDataInReg0[0]),
    .I2(port_id[1]),
    .I3(port_id[0]),
    .O(N133)
  );
  LUT4 #(
    .INIT ( 16'h0213 ))
  \in_port<0>48  (
    .I0(port_id[4]),
    .I1(port_id[3]),
    .I2(N133),
    .I3(N132),
    .O(\in_port<0>48_541 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \in_port<2>_SW0  (
    .I0(\receive/data [2]),
    .I1(port_id[0]),
    .O(N141)
  );
  LUT4 #(
    .INIT ( 16'hD800 ))
  \in_port<2>  (
    .I0(port_id[4]),
    .I1(N142),
    .I2(N141),
    .I3(N10),
    .O(in_port[2])
  );
  LUT4 #(
    .INIT ( 16'h2220 ))
  \in_port<0>91  (
    .I0(N14),
    .I1(N93),
    .I2(\in_port<0>68_543 ),
    .I3(\in_port<0>48_541 ),
    .O(in_port[0])
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \in_port<3>  (
    .I0(N198),
    .I1(N14),
    .I2(port_id[3]),
    .I3(N148),
    .O(in_port[3])
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \in_port<6>  (
    .I0(N93),
    .I1(N14),
    .I2(port_id[3]),
    .I3(N150),
    .O(in_port[6])
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \in_port<7>  (
    .I0(N93),
    .I1(N14),
    .I2(port_id[3]),
    .I3(N152),
    .O(in_port[7])
  );
  LUT4 #(
    .INIT ( 16'hFFFD ))
  read_0_mux00001_SW5 (
    .I0(read_strobe),
    .I1(port_id[6]),
    .I2(port_id[5]),
    .I3(port_id[2]),
    .O(N154)
  );
  LUT3 #(
    .INIT ( 8'hBA ))
  \transmit/TxRdy_not00011  (
    .I0(\transmit/Done ),
    .I1(port_id[2]),
    .I2(N20),
    .O(\transmit/TxRdy_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h2141 ))
  \receive/Mcompar_btu_cmp_eq0000_lut<8>  (
    .I0(\receive/baudCount [16]),
    .I1(\receive/baudCount [17]),
    .I2(\receive/finalBaudCountNum<16>_bdd0 ),
    .I3(\receive/START_723 ),
    .O(\receive/Mcompar_btu_cmp_eq0000_lut [8])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \transmit/sreg_data_9_mux00001  (
    .I0(\transmit/write1Delay_1030 ),
    .I1(\transmit/sreg_data [10]),
    .I2(N156),
    .O(\transmit/sreg_data_9_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'hAA75 ))
  \transmit/Mmux_nBitCount2_SW2  (
    .I0(\transmit/bitCount [1]),
    .I1(\transmit/bitCount [2]),
    .I2(\transmit/bitCount [3]),
    .I3(\transmit/Mcompar_btu_cmp_eq0000_cy [9]),
    .O(N158)
  );
  LUT4 #(
    .INIT ( 16'h20A8 ))
  \transmit/Mmux_nBitCount2  (
    .I0(\transmit/start_1029 ),
    .I1(\transmit/bitCount [0]),
    .I2(\transmit/bitCount [1]),
    .I3(N158),
    .O(\transmit/nBitCount [1])
  );
  LUT4 #(
    .INIT ( 16'h20A8 ))
  \receive/Mmux_nBitCount2  (
    .I0(\receive/DOIT_653 ),
    .I1(\receive/bitCount [0]),
    .I2(\receive/bitCount [1]),
    .I3(N160),
    .O(\receive/nBitCount [1])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \receive/Mmux_nBaudCount91  (
    .I0(\receive/DOIT_653 ),
    .I1(\receive/nBaudCount_addsub0000 [17]),
    .I2(\receive/Mcompar_btu_cmp_eq0000_cy [8]),
    .O(\receive/nBaudCount [17])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \receive/Mmux_nBaudCount81  (
    .I0(\receive/DOIT_653 ),
    .I1(\receive/nBaudCount_addsub0000 [16]),
    .I2(\receive/Mcompar_btu_cmp_eq0000_cy [8]),
    .O(\receive/nBaudCount [16])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \receive/Mmux_nBaudCount71  (
    .I0(\receive/DOIT_653 ),
    .I1(\receive/nBaudCount_addsub0000 [15]),
    .I2(\receive/Mcompar_btu_cmp_eq0000_cy [8]),
    .O(\receive/nBaudCount [15])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \receive/Mmux_nBaudCount61  (
    .I0(\receive/DOIT_653 ),
    .I1(\receive/nBaudCount_addsub0000 [14]),
    .I2(\receive/Mcompar_btu_cmp_eq0000_cy [8]),
    .O(\receive/nBaudCount [14])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \receive/Mmux_nBaudCount51  (
    .I0(\receive/DOIT_653 ),
    .I1(\receive/nBaudCount_addsub0000 [13]),
    .I2(\receive/Mcompar_btu_cmp_eq0000_cy [8]),
    .O(\receive/nBaudCount [13])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \receive/Mmux_nBaudCount41  (
    .I0(\receive/DOIT_653 ),
    .I1(\receive/nBaudCount_addsub0000 [12]),
    .I2(\receive/Mcompar_btu_cmp_eq0000_cy [8]),
    .O(\receive/nBaudCount [12])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \receive/Mmux_nBaudCount31  (
    .I0(\receive/DOIT_653 ),
    .I1(\receive/nBaudCount_addsub0000 [11]),
    .I2(\receive/Mcompar_btu_cmp_eq0000_cy [8]),
    .O(\receive/nBaudCount [11])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \receive/Mmux_nBaudCount21  (
    .I0(\receive/DOIT_653 ),
    .I1(\receive/nBaudCount_addsub0000 [10]),
    .I2(\receive/Mcompar_btu_cmp_eq0000_cy [8]),
    .O(\receive/nBaudCount [10])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \receive/Mmux_nBaudCount181  (
    .I0(\receive/DOIT_653 ),
    .I1(\receive/nBaudCount_addsub0000 [9]),
    .I2(\receive/Mcompar_btu_cmp_eq0000_cy [8]),
    .O(\receive/nBaudCount [9])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \receive/Mmux_nBaudCount171  (
    .I0(\receive/DOIT_653 ),
    .I1(\receive/nBaudCount_addsub0000 [8]),
    .I2(\receive/Mcompar_btu_cmp_eq0000_cy [8]),
    .O(\receive/nBaudCount [8])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \receive/Mmux_nBaudCount161  (
    .I0(\receive/DOIT_653 ),
    .I1(\receive/nBaudCount_addsub0000 [7]),
    .I2(\receive/Mcompar_btu_cmp_eq0000_cy [8]),
    .O(\receive/nBaudCount [7])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \receive/Mmux_nBaudCount151  (
    .I0(\receive/DOIT_653 ),
    .I1(\receive/nBaudCount_addsub0000 [6]),
    .I2(\receive/Mcompar_btu_cmp_eq0000_cy [8]),
    .O(\receive/nBaudCount [6])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \receive/Mmux_nBaudCount141  (
    .I0(\receive/DOIT_653 ),
    .I1(\receive/nBaudCount_addsub0000 [5]),
    .I2(\receive/Mcompar_btu_cmp_eq0000_cy [8]),
    .O(\receive/nBaudCount [5])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \receive/Mmux_nBaudCount131  (
    .I0(\receive/DOIT_653 ),
    .I1(\receive/nBaudCount_addsub0000 [4]),
    .I2(\receive/Mcompar_btu_cmp_eq0000_cy [8]),
    .O(\receive/nBaudCount [4])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \receive/Mmux_nBaudCount121  (
    .I0(\receive/DOIT_653 ),
    .I1(\receive/nBaudCount_addsub0000 [3]),
    .I2(\receive/Mcompar_btu_cmp_eq0000_cy [8]),
    .O(\receive/nBaudCount [3])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \receive/Mmux_nBaudCount111  (
    .I0(\receive/DOIT_653 ),
    .I1(\receive/nBaudCount_addsub0000 [2]),
    .I2(\receive/Mcompar_btu_cmp_eq0000_cy [8]),
    .O(\receive/nBaudCount [2])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \receive/Mmux_nBaudCount101  (
    .I0(\receive/DOIT_653 ),
    .I1(\receive/nBaudCount_addsub0000 [1]),
    .I2(\receive/Mcompar_btu_cmp_eq0000_cy [8]),
    .O(\receive/nBaudCount [1])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \receive/Mmux_nBaudCount11  (
    .I0(\receive/DOIT_653 ),
    .I1(\receive/nBaudCount_addsub0000 [0]),
    .I2(\receive/Mcompar_btu_cmp_eq0000_cy [8]),
    .O(\receive/nBaudCount [0])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \transmit/Mmux_nBaudCount141  (
    .I0(\transmit/start_1029 ),
    .I1(\transmit/nBaudCount_addsub0000 [5]),
    .I2(\transmit/Mcompar_btu_cmp_eq0000_cy [9]),
    .O(\transmit/nBaudCount [5])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \transmit/Mmux_nBaudCount131  (
    .I0(\transmit/start_1029 ),
    .I1(\transmit/nBaudCount_addsub0000 [4]),
    .I2(\transmit/Mcompar_btu_cmp_eq0000_cy [9]),
    .O(\transmit/nBaudCount [4])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \transmit/Mmux_nBaudCount121  (
    .I0(\transmit/start_1029 ),
    .I1(\transmit/nBaudCount_addsub0000 [3]),
    .I2(\transmit/Mcompar_btu_cmp_eq0000_cy [9]),
    .O(\transmit/nBaudCount [3])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \transmit/Mmux_nBaudCount111  (
    .I0(\transmit/start_1029 ),
    .I1(\transmit/nBaudCount_addsub0000 [2]),
    .I2(\transmit/Mcompar_btu_cmp_eq0000_cy [9]),
    .O(\transmit/nBaudCount [2])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \transmit/Mmux_nBaudCount101  (
    .I0(\transmit/start_1029 ),
    .I1(\transmit/nBaudCount_addsub0000 [1]),
    .I2(\transmit/Mcompar_btu_cmp_eq0000_cy [9]),
    .O(\transmit/nBaudCount [1])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \transmit/Mmux_nBaudCount11  (
    .I0(\transmit/start_1029 ),
    .I1(\transmit/nBaudCount_addsub0000 [0]),
    .I2(\transmit/Mcompar_btu_cmp_eq0000_cy [9]),
    .O(\transmit/nBaudCount [0])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \transmit/Mmux_nBaudCount151  (
    .I0(\transmit/start_1029 ),
    .I1(\transmit/nBaudCount_addsub0000 [6]),
    .I2(\transmit/Mcompar_btu_cmp_eq0000_cy [9]),
    .O(\transmit/nBaudCount [6])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \transmit/Mmux_nBaudCount161  (
    .I0(\transmit/start_1029 ),
    .I1(\transmit/nBaudCount_addsub0000 [7]),
    .I2(\transmit/Mcompar_btu_cmp_eq0000_cy [9]),
    .O(\transmit/nBaudCount [7])
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  write_11_mux0000 (
    .I0(N14),
    .I1(port_id[0]),
    .I2(port_id[1]),
    .I3(N162),
    .O(\write[11] )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \transmit/sreg_data_10_mux00001_SW1  (
    .I0(LED_5_OBUF_114),
    .I1(LED_6_OBUF_115),
    .I2(\transmit/write1Delay_1030 ),
    .O(N164)
  );
  LUT4 #(
    .INIT ( 16'hEBBE ))
  \transmit/sreg_data_10_mux00001  (
    .I0(N164),
    .I1(\transmit/sreg_data_10_mux0000312_1007 ),
    .I2(\transmit/sreg_data_10_mux0000325_1008 ),
    .I3(\transmit/data [7]),
    .O(\transmit/sreg_data_10_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'hFF01 ))
  \receive/sreg_data_8_mux00001  (
    .I0(\receive/LOAD_654 ),
    .I1(\receive/START_723 ),
    .I2(\receive/DOIT_653 ),
    .I3(Rx_IBUF_191),
    .O(\receive/sreg_data_8_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'hFF01 ))
  \receive/sreg_data_7_mux00001  (
    .I0(\receive/LOAD_654 ),
    .I1(\receive/START_723 ),
    .I2(\receive/DOIT_653 ),
    .I3(\receive/sreg_data [8]),
    .O(\receive/sreg_data_7_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'hFF01 ))
  \receive/sreg_data_6_mux00001  (
    .I0(\receive/LOAD_654 ),
    .I1(\receive/START_723 ),
    .I2(\receive/DOIT_653 ),
    .I3(\receive/sreg_data [7]),
    .O(\receive/sreg_data_6_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'hFF01 ))
  \receive/sreg_data_5_mux00001  (
    .I0(\receive/LOAD_654 ),
    .I1(\receive/START_723 ),
    .I2(\receive/DOIT_653 ),
    .I3(\receive/sreg_data [6]),
    .O(\receive/sreg_data_5_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'hFF01 ))
  \receive/sreg_data_4_mux00001  (
    .I0(\receive/LOAD_654 ),
    .I1(\receive/START_723 ),
    .I2(\receive/DOIT_653 ),
    .I3(\receive/sreg_data [5]),
    .O(\receive/sreg_data_4_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'hFF01 ))
  \receive/sreg_data_3_mux00001  (
    .I0(\receive/LOAD_654 ),
    .I1(\receive/START_723 ),
    .I2(\receive/DOIT_653 ),
    .I3(\receive/sreg_data [4]),
    .O(\receive/sreg_data_3_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'hFF01 ))
  \receive/sreg_data_2_mux00001  (
    .I0(\receive/LOAD_654 ),
    .I1(\receive/START_723 ),
    .I2(\receive/DOIT_653 ),
    .I3(\receive/sreg_data [3]),
    .O(\receive/sreg_data_2_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'hFF01 ))
  \receive/sreg_data_1_mux00001  (
    .I0(\receive/LOAD_654 ),
    .I1(\receive/START_723 ),
    .I2(\receive/DOIT_653 ),
    .I3(\receive/sreg_data [2]),
    .O(\receive/sreg_data_1_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'hFF01 ))
  \receive/sreg_data_0_mux00002  (
    .I0(\receive/LOAD_654 ),
    .I1(\receive/START_723 ),
    .I2(\receive/DOIT_653 ),
    .I3(\receive/sreg_data [1]),
    .O(\receive/sreg_data_0_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \receive/bcu_cmp_eq00001  (
    .I0(\receive/bitCount [3]),
    .I1(\receive/bitCount [1]),
    .I2(\receive/bitCount [0]),
    .I3(\receive/bitCount [2]),
    .O(\receive/bcu )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \transmit/Mmux_nBaudCount171  (
    .I0(\transmit/start_1029 ),
    .I1(\transmit/nBaudCount_addsub0000 [8]),
    .I2(\transmit/Mcompar_btu_cmp_eq0000_cy [9]),
    .O(\transmit/nBaudCount [8])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \transmit/Mmux_nBaudCount181  (
    .I0(\transmit/start_1029 ),
    .I1(\transmit/nBaudCount_addsub0000 [9]),
    .I2(\transmit/Mcompar_btu_cmp_eq0000_cy [9]),
    .O(\transmit/nBaudCount [9])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \transmit/Mmux_nBaudCount21  (
    .I0(\transmit/start_1029 ),
    .I1(\transmit/nBaudCount_addsub0000 [10]),
    .I2(\transmit/Mcompar_btu_cmp_eq0000_cy [9]),
    .O(\transmit/nBaudCount [10])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \transmit/Mmux_nBaudCount31  (
    .I0(\transmit/start_1029 ),
    .I1(\transmit/nBaudCount_addsub0000 [11]),
    .I2(\transmit/Mcompar_btu_cmp_eq0000_cy [9]),
    .O(\transmit/nBaudCount [11])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \transmit/Mmux_nBaudCount41  (
    .I0(\transmit/start_1029 ),
    .I1(\transmit/nBaudCount_addsub0000 [12]),
    .I2(\transmit/Mcompar_btu_cmp_eq0000_cy [9]),
    .O(\transmit/nBaudCount [12])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \transmit/Mmux_nBaudCount51  (
    .I0(\transmit/start_1029 ),
    .I1(\transmit/nBaudCount_addsub0000 [13]),
    .I2(\transmit/Mcompar_btu_cmp_eq0000_cy [9]),
    .O(\transmit/nBaudCount [13])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \transmit/Mmux_nBaudCount61  (
    .I0(\transmit/start_1029 ),
    .I1(\transmit/nBaudCount_addsub0000 [14]),
    .I2(\transmit/Mcompar_btu_cmp_eq0000_cy [9]),
    .O(\transmit/nBaudCount [14])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \transmit/Mmux_nBaudCount71  (
    .I0(\transmit/start_1029 ),
    .I1(\transmit/nBaudCount_addsub0000 [15]),
    .I2(\transmit/Mcompar_btu_cmp_eq0000_cy [9]),
    .O(\transmit/nBaudCount [15])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \transmit/Mmux_nBaudCount81  (
    .I0(\transmit/start_1029 ),
    .I1(\transmit/nBaudCount_addsub0000 [16]),
    .I2(\transmit/Mcompar_btu_cmp_eq0000_cy [9]),
    .O(\transmit/nBaudCount [16])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \transmit/Mmux_nBaudCount91  (
    .I0(\transmit/start_1029 ),
    .I1(\transmit/nBaudCount_addsub0000 [17]),
    .I2(\transmit/Mcompar_btu_cmp_eq0000_cy [9]),
    .O(\transmit/nBaudCount [17])
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  \Display_Controller/Mmux_ad_out_3  (
    .I0(\Display_Controller/LED_contr/present_state_FSM_FFd1_2 ),
    .I1(charCounter[4]),
    .I2(\Display_Controller/LED_contr/present_state_FSM_FFd3_4 ),
    .I3(charCounter[0]),
    .O(\Display_Controller/Mmux_ad_out_3_68 )
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  \Display_Controller/Mmux_ad_out_4  (
    .I0(\Display_Controller/LED_contr/present_state_FSM_FFd1_2 ),
    .I1(\receive/data [4]),
    .I2(\Display_Controller/LED_contr/present_state_FSM_FFd3_4 ),
    .I3(\receive/data [0]),
    .O(\Display_Controller/Mmux_ad_out_4_72 )
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  \Display_Controller/Mmux_ad_out_31  (
    .I0(\Display_Controller/LED_contr/present_state_FSM_FFd1_2 ),
    .I1(charCounter[5]),
    .I2(\Display_Controller/LED_contr/present_state_FSM_FFd3_4 ),
    .I3(charCounter[1]),
    .O(\Display_Controller/Mmux_ad_out_31_69 )
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  \Display_Controller/Mmux_ad_out_41  (
    .I0(\Display_Controller/LED_contr/present_state_FSM_FFd1_2 ),
    .I1(\receive/data [5]),
    .I2(\Display_Controller/LED_contr/present_state_FSM_FFd3_4 ),
    .I3(\receive/data [1]),
    .O(\Display_Controller/Mmux_ad_out_41_73 )
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  \Display_Controller/Mmux_ad_out_32  (
    .I0(\Display_Controller/LED_contr/present_state_FSM_FFd1_2 ),
    .I1(charCounter[6]),
    .I2(\Display_Controller/LED_contr/present_state_FSM_FFd3_4 ),
    .I3(charCounter[2]),
    .O(\Display_Controller/Mmux_ad_out_32_70 )
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  \Display_Controller/Mmux_ad_out_42  (
    .I0(\Display_Controller/LED_contr/present_state_FSM_FFd1_2 ),
    .I1(\receive/data [6]),
    .I2(\Display_Controller/LED_contr/present_state_FSM_FFd3_4 ),
    .I3(\receive/data [2]),
    .O(\Display_Controller/Mmux_ad_out_42_74 )
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  \Display_Controller/Mmux_ad_out_33  (
    .I0(\Display_Controller/LED_contr/present_state_FSM_FFd1_2 ),
    .I1(charCounter[7]),
    .I2(\Display_Controller/LED_contr/present_state_FSM_FFd3_4 ),
    .I3(charCounter[3]),
    .O(\Display_Controller/Mmux_ad_out_33_71 )
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  \Display_Controller/Mmux_ad_out_43  (
    .I0(\Display_Controller/LED_contr/present_state_FSM_FFd1_2 ),
    .I1(\receive/data [7]),
    .I2(\Display_Controller/LED_contr/present_state_FSM_FFd3_4 ),
    .I3(\receive/data [3]),
    .O(\Display_Controller/Mmux_ad_out_43_75 )
  );
  LUT4 #(
    .INIT ( 16'h8901 ))
  \receive/finalBaudCountNum<14>1  (
    .I0(LED_2_OBUF_111),
    .I1(LED_3_OBUF_112),
    .I2(N168),
    .I3(\receive/START_723 ),
    .O(\receive/finalBaudCountNum [14])
  );
  LUT4 #(
    .INIT ( 16'h20A8 ))
  \receive/Mmux_nBitCount4  (
    .I0(\receive/DOIT_653 ),
    .I1(\receive/bitCount [0]),
    .I2(\receive/bitCount [3]),
    .I3(N174),
    .O(\receive/nBitCount [3])
  );
  LUT4 #(
    .INIT ( 16'h955D ))
  \transmit/Mmux_nBitCount436_SW1  (
    .I0(\transmit/bitCount [3]),
    .I1(\transmit/bitCount [1]),
    .I2(\transmit/bitCount [2]),
    .I3(\transmit/Mcompar_btu_cmp_eq0000_cy [9]),
    .O(N176)
  );
  LUT4 #(
    .INIT ( 16'h20A8 ))
  \transmit/Mmux_nBitCount436  (
    .I0(\transmit/start_1029 ),
    .I1(\transmit/bitCount [0]),
    .I2(\transmit/bitCount [3]),
    .I3(N176),
    .O(\transmit/nBitCount [3])
  );
  MUXF5   \receive/finalBaudCountNum<1>  (
    .I0(N178),
    .I1(N179),
    .S(\receive/START_723 ),
    .O(\receive/finalBaudCountNum [1])
  );
  LUT4 #(
    .INIT ( 16'hA8AF ))
  \receive/finalBaudCountNum<1>_F  (
    .I0(LED_2_OBUF_111),
    .I1(LED_0_OBUF_109),
    .I2(LED_3_OBUF_112),
    .I3(LED_1_OBUF_110),
    .O(N178)
  );
  LUT4 #(
    .INIT ( 16'h4602 ))
  \receive/finalBaudCountNum<1>_G  (
    .I0(LED_2_OBUF_111),
    .I1(LED_3_OBUF_112),
    .I2(LED_0_OBUF_109),
    .I3(LED_1_OBUF_110),
    .O(N179)
  );
  MUXF5   \receive/finalBaudCountNum<3>  (
    .I0(N180),
    .I1(N181),
    .S(\receive/START_723 ),
    .O(\receive/finalBaudCountNum [3])
  );
  LUT4 #(
    .INIT ( 16'hBE09 ))
  \receive/finalBaudCountNum<3>_F  (
    .I0(LED_2_OBUF_111),
    .I1(LED_0_OBUF_109),
    .I2(LED_1_OBUF_110),
    .I3(LED_3_OBUF_112),
    .O(N180)
  );
  LUT4 #(
    .INIT ( 16'h5426 ))
  \receive/finalBaudCountNum<3>_G  (
    .I0(LED_2_OBUF_111),
    .I1(LED_3_OBUF_112),
    .I2(LED_1_OBUF_110),
    .I3(LED_0_OBUF_109),
    .O(N181)
  );
  MUXF5   \receive/finalBaudCountNum<5>  (
    .I0(N182),
    .I1(N183),
    .S(\receive/START_723 ),
    .O(\receive/finalBaudCountNum [5])
  );
  LUT4 #(
    .INIT ( 16'h4E54 ))
  \receive/finalBaudCountNum<5>_F  (
    .I0(LED_2_OBUF_111),
    .I1(LED_1_OBUF_110),
    .I2(LED_3_OBUF_112),
    .I3(LED_0_OBUF_109),
    .O(N182)
  );
  LUT4 #(
    .INIT ( 16'h0966 ))
  \receive/finalBaudCountNum<5>_G  (
    .I0(LED_0_OBUF_109),
    .I1(LED_1_OBUF_110),
    .I2(LED_3_OBUF_112),
    .I3(LED_2_OBUF_111),
    .O(N183)
  );
  MUXF5   \receive/finalBaudCountNum<4>  (
    .I0(N184),
    .I1(N185),
    .S(\receive/START_723 ),
    .O(\receive/finalBaudCountNum [4])
  );
  LUT4 #(
    .INIT ( 16'h5426 ))
  \receive/finalBaudCountNum<4>_F  (
    .I0(LED_2_OBUF_111),
    .I1(LED_3_OBUF_112),
    .I2(LED_1_OBUF_110),
    .I3(LED_0_OBUF_109),
    .O(N184)
  );
  LUT4 #(
    .INIT ( 16'h4E54 ))
  \receive/finalBaudCountNum<4>_G  (
    .I0(LED_2_OBUF_111),
    .I1(LED_1_OBUF_110),
    .I2(LED_3_OBUF_112),
    .I3(LED_0_OBUF_109),
    .O(N185)
  );
  MUXF5   \receive/finalBaudCountNum<6>  (
    .I0(N186),
    .I1(N187),
    .S(\receive/START_723 ),
    .O(\receive/finalBaudCountNum [6])
  );
  LUT4 #(
    .INIT ( 16'h0966 ))
  \receive/finalBaudCountNum<6>_F  (
    .I0(LED_0_OBUF_109),
    .I1(LED_1_OBUF_110),
    .I2(LED_3_OBUF_112),
    .I3(LED_2_OBUF_111),
    .O(N186)
  );
  LUT4 #(
    .INIT ( 16'h1504 ))
  \receive/finalBaudCountNum<6>_G  (
    .I0(LED_2_OBUF_111),
    .I1(LED_3_OBUF_112),
    .I2(LED_1_OBUF_110),
    .I3(LED_0_OBUF_109),
    .O(N187)
  );
  MUXF5   \in_port<3>_SW0  (
    .I0(N188),
    .I1(N189),
    .S(port_id[4]),
    .O(N148)
  );
  LUT3 #(
    .INIT ( 8'hDF ))
  \in_port<3>_SW0_F  (
    .I0(port_id[0]),
    .I1(port_id[1]),
    .I2(\receive/data [3]),
    .O(N188)
  );
  LUT4 #(
    .INIT ( 16'hFF1B ))
  \in_port<3>_SW0_G  (
    .I0(port_id[0]),
    .I1(rdDataInReg0[3]),
    .I2(rdDataInReg1[3]),
    .I3(port_id[1]),
    .O(N189)
  );
  MUXF5   \in_port<6>_SW0  (
    .I0(N190),
    .I1(N191),
    .S(port_id[4]),
    .O(N150)
  );
  LUT3 #(
    .INIT ( 8'hDF ))
  \in_port<6>_SW0_F  (
    .I0(port_id[0]),
    .I1(port_id[1]),
    .I2(\receive/data [6]),
    .O(N190)
  );
  LUT4 #(
    .INIT ( 16'hFF1B ))
  \in_port<6>_SW0_G  (
    .I0(port_id[0]),
    .I1(rdDataInReg0[6]),
    .I2(rdDataInReg1[6]),
    .I3(port_id[1]),
    .O(N191)
  );
  MUXF5   \in_port<7>_SW2  (
    .I0(N192),
    .I1(N193),
    .S(port_id[4]),
    .O(N152)
  );
  LUT3 #(
    .INIT ( 8'hDF ))
  \in_port<7>_SW2_F  (
    .I0(port_id[0]),
    .I1(port_id[1]),
    .I2(\receive/data [7]),
    .O(N192)
  );
  LUT4 #(
    .INIT ( 16'hFF1B ))
  \in_port<7>_SW2_G  (
    .I0(port_id[0]),
    .I1(rdDataInReg0[7]),
    .I2(rdDataInReg1[7]),
    .I3(port_id[1]),
    .O(N193)
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_223)
  );
  INV   \transmit/Mcompar_btu_cmp_eq0000_lut<0>_INV_0  (
    .I(\transmit/baudCount [16]),
    .O(\transmit/Mcompar_btu_cmp_eq0000_lut [0])
  );
  INV   \transmit/Madd_nBaudCount_addsub0000_lut<0>_INV_0  (
    .I(\transmit/baudCount [0]),
    .O(\transmit/Madd_nBaudCount_addsub0000_lut [0])
  );
  INV   \receive/Madd_nBaudCount_addsub0000_lut<0>_INV_0  (
    .I(\receive/baudCount [0]),
    .O(\receive/Madd_nBaudCount_addsub0000_lut [0])
  );
  INV   \Display_Controller/Mcompar_count_cmp_ge0000_lut<7>_INV_0  (
    .I(\Display_Controller/count [15]),
    .O(\Display_Controller/Mcompar_count_cmp_ge0000_lut[7] )
  );
  INV   \Display_Controller/Mcompar_count_cmp_ge0000_lut<3>_INV_0  (
    .I(\Display_Controller/count [6]),
    .O(\Display_Controller/Mcompar_count_cmp_ge0000_lut[3] )
  );
  INV   \Display_Controller/Mcompar_count_cmp_ge0000_lut<1>_INV_0  (
    .I(\Display_Controller/count [4]),
    .O(\Display_Controller/Mcompar_count_cmp_ge0000_lut[1] )
  );
  INV   \transmit/rstb_inv1_INV_0  (
    .I(\Synchronizer_Circuit/rst_synch_out_193 ),
    .O(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv )
  );
  INV   \Display_Controller/LED_contr/present_state_FSM_Out51_INV_0  (
    .I(\Display_Controller/LED_contr/present_state_FSM_FFd4_5 ),
    .O(a0_OBUF_197)
  );
  INV   \Display_Controller/LED_contr/present_state_FSM_Out41_INV_0  (
    .I(\Display_Controller/LED_contr/present_state_FSM_FFd3_4 ),
    .O(a1_OBUF_199)
  );
  INV   \Display_Controller/LED_contr/present_state_FSM_Out31_INV_0  (
    .I(\Display_Controller/LED_contr/present_state_FSM_FFd2_3 ),
    .O(a2_OBUF_201)
  );
  INV   \Display_Controller/LED_contr/present_state_FSM_Out21_INV_0  (
    .I(\Display_Controller/LED_contr/present_state_FSM_FFd1_2 ),
    .O(a3_OBUF_203)
  );
  INV   present_state_FSM_Out51_INV_0 (
    .I(present_state_FSM_FFd1_615),
    .O(nWriteEnable)
  );
  INV   present_state_FSM_Out41_INV_0 (
    .I(present_state_FSM_FFd2_617),
    .O(nChipEnable)
  );
  INV   \Display_Controller/clk_250_not00011_INV_0  (
    .I(\Display_Controller/clk_250_80 ),
    .O(\Display_Controller/clk_250_not0001 )
  );
  INV   \Display_Controller/count_cmp_ge0000_inv1_INV_0  (
    .I(\Display_Controller/count_cmp_ge0000 ),
    .O(\Display_Controller/count_cmp_ge0000_inv )
  );
  IOBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DRIVE ( 12 ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \iob[15]  (
    .I(wrDataOutReg1[7]),
    .T(nOE),
    .O(rdDataIn[15]),
    .IO(memoryData[15])
  );
  FDCE   rdDataInReg1_7 (
    .C(clk_BUFGP_223),
    .CE(ReadLd_189),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(rdDataIn[15]),
    .Q(rdDataInReg1[7])
  );
  FDCE   wrDataOutReg1_7 (
    .C(clk_BUFGP_223),
    .CE(\write[15] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[7]),
    .Q(wrDataOutReg1[7])
  );
  IOBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DRIVE ( 12 ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \iob[14]  (
    .I(wrDataOutReg1[6]),
    .T(nOE),
    .O(rdDataIn[14]),
    .IO(memoryData[14])
  );
  FDCE   rdDataInReg1_6 (
    .C(clk_BUFGP_223),
    .CE(ReadLd_189),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(rdDataIn[14]),
    .Q(rdDataInReg1[6])
  );
  FDCE   wrDataOutReg1_6 (
    .C(clk_BUFGP_223),
    .CE(\write[15] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[6]),
    .Q(wrDataOutReg1[6])
  );
  IOBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DRIVE ( 12 ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \iob[13]  (
    .I(wrDataOutReg1[5]),
    .T(nOE),
    .O(rdDataIn[13]),
    .IO(memoryData[13])
  );
  FDCE   rdDataInReg1_5 (
    .C(clk_BUFGP_223),
    .CE(ReadLd_189),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(rdDataIn[13]),
    .Q(rdDataInReg1[5])
  );
  FDCE   wrDataOutReg1_5 (
    .C(clk_BUFGP_223),
    .CE(\write[15] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[5]),
    .Q(wrDataOutReg1[5])
  );
  IOBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DRIVE ( 12 ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \iob[12]  (
    .I(wrDataOutReg1[4]),
    .T(nOE),
    .O(rdDataIn[12]),
    .IO(memoryData[12])
  );
  FDCE   rdDataInReg1_4 (
    .C(clk_BUFGP_223),
    .CE(ReadLd_189),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(rdDataIn[12]),
    .Q(rdDataInReg1[4])
  );
  FDCE   wrDataOutReg1_4 (
    .C(clk_BUFGP_223),
    .CE(\write[15] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[4]),
    .Q(wrDataOutReg1[4])
  );
  IOBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DRIVE ( 12 ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \iob[11]  (
    .I(wrDataOutReg1[3]),
    .T(nOE),
    .O(rdDataIn[11]),
    .IO(memoryData[11])
  );
  FDCE   rdDataInReg1_3 (
    .C(clk_BUFGP_223),
    .CE(ReadLd_189),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(rdDataIn[11]),
    .Q(rdDataInReg1[3])
  );
  FDCE   wrDataOutReg1_3 (
    .C(clk_BUFGP_223),
    .CE(\write[15] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[3]),
    .Q(wrDataOutReg1[3])
  );
  IOBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DRIVE ( 12 ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \iob[10]  (
    .I(wrDataOutReg1[2]),
    .T(nOE),
    .O(rdDataIn[10]),
    .IO(memoryData[10])
  );
  FDCE   rdDataInReg1_2 (
    .C(clk_BUFGP_223),
    .CE(ReadLd_189),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(rdDataIn[10]),
    .Q(rdDataInReg1[2])
  );
  FDCE   wrDataOutReg1_2 (
    .C(clk_BUFGP_223),
    .CE(\write[15] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[2]),
    .Q(wrDataOutReg1[2])
  );
  IOBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DRIVE ( 12 ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \iob[9]  (
    .I(wrDataOutReg1[1]),
    .T(nOE),
    .O(rdDataIn[9]),
    .IO(memoryData[9])
  );
  FDCE   rdDataInReg1_1 (
    .C(clk_BUFGP_223),
    .CE(ReadLd_189),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(rdDataIn[9]),
    .Q(rdDataInReg1[1])
  );
  FDCE   wrDataOutReg1_1 (
    .C(clk_BUFGP_223),
    .CE(\write[15] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[1]),
    .Q(wrDataOutReg1[1])
  );
  IOBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DRIVE ( 12 ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \iob[8]  (
    .I(wrDataOutReg1[0]),
    .T(nOE),
    .O(rdDataIn[8]),
    .IO(memoryData[8])
  );
  FDCE   rdDataInReg1_0 (
    .C(clk_BUFGP_223),
    .CE(ReadLd_189),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(rdDataIn[8]),
    .Q(rdDataInReg1[0])
  );
  FDCE   wrDataOutReg1_0 (
    .C(clk_BUFGP_223),
    .CE(\write[15] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[0]),
    .Q(wrDataOutReg1[0])
  );
  IOBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DRIVE ( 12 ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \iob[7]  (
    .I(wrDataOutReg0[7]),
    .T(nOE),
    .O(rdDataIn[7]),
    .IO(memoryData[7])
  );
  FDCE   rdDataInReg0_7 (
    .C(clk_BUFGP_223),
    .CE(ReadLd_189),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(rdDataIn[7]),
    .Q(rdDataInReg0[7])
  );
  FDCE   wrDataOutReg0_7 (
    .C(clk_BUFGP_223),
    .CE(\write[14] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[7]),
    .Q(wrDataOutReg0[7])
  );
  IOBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DRIVE ( 12 ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \iob[6]  (
    .I(wrDataOutReg0[6]),
    .T(nOE),
    .O(rdDataIn[6]),
    .IO(memoryData[6])
  );
  FDCE   rdDataInReg0_6 (
    .C(clk_BUFGP_223),
    .CE(ReadLd_189),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(rdDataIn[6]),
    .Q(rdDataInReg0[6])
  );
  FDCE   wrDataOutReg0_6 (
    .C(clk_BUFGP_223),
    .CE(\write[14] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[6]),
    .Q(wrDataOutReg0[6])
  );
  IOBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DRIVE ( 12 ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \iob[5]  (
    .I(wrDataOutReg0[5]),
    .T(nOE),
    .O(rdDataIn[5]),
    .IO(memoryData[5])
  );
  FDCE   rdDataInReg0_5 (
    .C(clk_BUFGP_223),
    .CE(ReadLd_189),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(rdDataIn[5]),
    .Q(rdDataInReg0[5])
  );
  FDCE   wrDataOutReg0_5 (
    .C(clk_BUFGP_223),
    .CE(\write[14] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[5]),
    .Q(wrDataOutReg0[5])
  );
  IOBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DRIVE ( 12 ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \iob[4]  (
    .I(wrDataOutReg0[4]),
    .T(nOE),
    .O(rdDataIn[4]),
    .IO(memoryData[4])
  );
  FDCE   rdDataInReg0_4 (
    .C(clk_BUFGP_223),
    .CE(ReadLd_189),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(rdDataIn[4]),
    .Q(rdDataInReg0[4])
  );
  FDCE   wrDataOutReg0_4 (
    .C(clk_BUFGP_223),
    .CE(\write[14] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[4]),
    .Q(wrDataOutReg0[4])
  );
  IOBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DRIVE ( 12 ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \iob[3]  (
    .I(wrDataOutReg0[3]),
    .T(nOE),
    .O(rdDataIn[3]),
    .IO(memoryData[3])
  );
  FDCE   rdDataInReg0_3 (
    .C(clk_BUFGP_223),
    .CE(ReadLd_189),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(rdDataIn[3]),
    .Q(rdDataInReg0[3])
  );
  FDCE   wrDataOutReg0_3 (
    .C(clk_BUFGP_223),
    .CE(\write[14] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[3]),
    .Q(wrDataOutReg0[3])
  );
  IOBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DRIVE ( 12 ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \iob[2]  (
    .I(wrDataOutReg0[2]),
    .T(nOE),
    .O(rdDataIn[2]),
    .IO(memoryData[2])
  );
  FDCE   rdDataInReg0_2 (
    .C(clk_BUFGP_223),
    .CE(ReadLd_189),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(rdDataIn[2]),
    .Q(rdDataInReg0[2])
  );
  FDCE   wrDataOutReg0_2 (
    .C(clk_BUFGP_223),
    .CE(\write[14] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[2]),
    .Q(wrDataOutReg0[2])
  );
  IOBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DRIVE ( 12 ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \iob[1]  (
    .I(wrDataOutReg0[1]),
    .T(nOE),
    .O(rdDataIn[1]),
    .IO(memoryData[1])
  );
  FDCE   rdDataInReg0_1 (
    .C(clk_BUFGP_223),
    .CE(ReadLd_189),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(rdDataIn[1]),
    .Q(rdDataInReg0[1])
  );
  FDCE   wrDataOutReg0_1 (
    .C(clk_BUFGP_223),
    .CE(\write[14] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[1]),
    .Q(wrDataOutReg0[1])
  );
  IOBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DRIVE ( 12 ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \iob[0]  (
    .I(wrDataOutReg0[0]),
    .T(nOE),
    .O(rdDataIn[0]),
    .IO(memoryData[0])
  );
  FDCE   rdDataInReg0_0 (
    .C(clk_BUFGP_223),
    .CE(ReadLd_189),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(rdDataIn[0]),
    .Q(rdDataInReg0[0])
  );
  FDCE   wrDataOutReg0_0 (
    .C(clk_BUFGP_223),
    .CE(\write[14] ),
    .CLR(\Display_Controller/LED_contr/present_state_FSM_Acst_FSM_inv ),
    .D(out_port[0]),
    .Q(wrDataOutReg0[0])
  );
  RAMB16_S18 #(
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT ( 18'h00000 ),
    .INITP_00 ( 256'hCCB333333333332DCD332CCCC2F33FFECF7DDCDDFDFDFD34C29DDB4CBD0FD0FC ),
    .INITP_01 ( 256'hCCCCCCCCCCCCCCCECCCCCCCCCCCCCCCCCB3333333333332CCCCCCCCCCCCCCCCC ),
    .INITP_02 ( 256'h0000000000000000000002F333333333333332F3333333333332CCCCCCCCCCCC ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_00 ( 256'hA0000119540FC510A5101510400F0135540AC520A52015104002001D00410300 ),
    .INIT_01 ( 256'h000441004201A000C3058301401BC301541A407FC0015410C102A10200044100 ),
    .INIT_02 ( 256'h404000E15430422A4040004D542C420A4040004D5428420D4203541EC101A101 ),
    .INIT_03 ( 256'h00101020004D543E43AA403E50404304543B427F403E027F5040430454364208 ),
    .INIT_04 ( 256'h0010000D0300A000004D0010000A0010000D005700BE00A3007C00630057A000 ),
    .INIT_05 ( 256'h0010002A50624F000F1D0010000A0010000DA0000010003E0010002A0010000A ),
    .INIT_06 ( 256'h00430010004500100043001000200010002A0010000A0010000DA000405CCF01 ),
    .INIT_07 ( 256'h0010000A0010000DA00000100030001000360010003400100020001000530010 ),
    .INIT_08 ( 256'h001000720010006F00100074001000630010006900100056001000200010002A ),
    .INIT_09 ( 256'h0010007A0010006F0010006E0010006900100070001000730010004500100020 ),
    .INIT_0A ( 256'h006C0010007500100046001000200010002A0010000A0010000DA00000100061 ),
    .INIT_0B ( 256'h0010000DA00000100054001000520010004100100055001000200010006C0010 ),
    .INIT_0C ( 256'h001000200010003A001000650010007500100044001000200010002A0010000A ),
    .INIT_0D ( 256'h001000350010006C0010002F001000390010006C0010002F0010003100100031 ),
    .INIT_0E ( 256'h0010006F00100074001000650010006D0010006F0010004800100020004DA000 ),
    .INIT_0F ( 256'h001000720010006F00100050001000200010002D001000200010006E00100077 ),
    .INIT_10 ( 256'h001000650010006C0010006C0010006900100076001000720010006500100074 ),
    .INIT_11 ( 256'h0049001000520010004100100050A0000010004100100043001000200010002C ),
    .INIT_12 ( 256'h00520010004F0010005200100052001000450010002000100059001000540010 ),
    .INIT_13 ( 256'h004C001000460010005200100045001000560010004FA000004D001000210010 ),
    .INIT_14 ( 256'h00520010004F00100052001000520010004500100020001000570010004F0010 ),
    .INIT_15 ( 256'h00000000000000000000000000000000000000000000A000004D001000210010 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .WRITE_MODE ( "WRITE_FIRST" ),
    .SRVAL ( 18'h00000 ))
  \ekcp3/program/ram_1024_x_18  (
    .CLK(clk_BUFGP_223),
    .EN(N1),
    .SSR(LED_7_OBUF_116),
    .WE(LED_7_OBUF_116),
    .ADDR({\ekcp3/address [9], \ekcp3/address [8], \ekcp3/address [7], \ekcp3/address [6], \ekcp3/address [5], \ekcp3/address [4], \ekcp3/address [3]
, \ekcp3/address [2], \ekcp3/address [1], \ekcp3/address [0]}),
    .DI({LED_7_OBUF_116, LED_7_OBUF_116, LED_7_OBUF_116, LED_7_OBUF_116, LED_7_OBUF_116, LED_7_OBUF_116, LED_7_OBUF_116, LED_7_OBUF_116, 
LED_7_OBUF_116, LED_7_OBUF_116, LED_7_OBUF_116, LED_7_OBUF_116, LED_7_OBUF_116, LED_7_OBUF_116, LED_7_OBUF_116, LED_7_OBUF_116}),
    .DIP({LED_7_OBUF_116, LED_7_OBUF_116}),
    .DO({\ekcp3/instruction [15], \ekcp3/instruction [14], \ekcp3/instruction [13], \ekcp3/instruction [12], \ekcp3/instruction [11], 
\ekcp3/instruction [10], \ekcp3/instruction [9], \ekcp3/instruction [8], \ekcp3/instruction [7], \ekcp3/instruction [6], \ekcp3/instruction [5], 
\ekcp3/instruction [4], \ekcp3/instruction [3], \ekcp3/instruction [2], \ekcp3/instruction [1], \ekcp3/instruction [0]}),
    .DOP({\ekcp3/instruction [17], \ekcp3/instruction [16]})
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \transmit/Mmux_nBitCount311  (
    .I0(\transmit/bitCount [2]),
    .I1(\transmit/bitCount [1]),
    .I2(\transmit/bitCount [0]),
    .I3(\transmit/Mcompar_btu_cmp_eq0000_cy [9]),
    .O(\transmit/Mmux_nBitCount31 )
  );
  MUXF5   \transmit/Mmux_nBitCount31_f5  (
    .I0(LED_7_OBUF_116),
    .I1(\transmit/Mmux_nBitCount31 ),
    .S(\transmit/start_1029 ),
    .O(\transmit/nBitCount [2])
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \receive/PARITY_ERR_not00014171  (
    .I0(\receive/sreg_data [0]),
    .I1(\receive/sreg_data [1]),
    .I2(\receive/sreg_data [2]),
    .I3(\receive/sreg_data [3]),
    .O(\receive/PARITY_ERR_not00014171_713 )
  );
  LUT4 #(
    .INIT ( 16'h9669 ))
  \receive/PARITY_ERR_not00014172  (
    .I0(\receive/sreg_data [0]),
    .I1(\receive/sreg_data [1]),
    .I2(\receive/sreg_data [2]),
    .I3(\receive/sreg_data [3]),
    .O(\receive/PARITY_ERR_not00014172_714 )
  );
  MUXF5   \receive/PARITY_ERR_not0001417_f5  (
    .I0(\receive/PARITY_ERR_not00014172_714 ),
    .I1(\receive/PARITY_ERR_not00014171_713 ),
    .S(\receive/sreg_data [8]),
    .O(\receive/PARITY_ERR_not0001417 )
  );
  LUT4 #(
    .INIT ( 16'hFBFF ))
  nOE1 (
    .I0(present_state_FSM_FFd2_617),
    .I1(sm_clk_counter[0]),
    .I2(sm_clk_counter[1]),
    .I3(present_state_FSM_FFd1_615),
    .O(nOE1_593)
  );
  MUXF5   nOE_f5 (
    .I0(N1),
    .I1(nOE1_593),
    .S(sm_clk_counter[2]),
    .O(nOE)
  );
  LUT4 #(
    .INIT ( 16'hFF7F ))
  \receive/present_state_FSM_FFd1-In151  (
    .I0(\receive/bitCount [1]),
    .I1(\receive/bitCount [3]),
    .I2(\receive/bitCount [0]),
    .I3(\receive/bitCount [2]),
    .O(\receive/present_state_FSM_FFd1-In151_824 )
  );
  MUXF5   \receive/present_state_FSM_FFd1-In15_f5  (
    .I0(\receive/present_state_FSM_FFd1-In151_824 ),
    .I1(N1),
    .S(\receive/present_state_FSM_FFd2_826 ),
    .O(\receive/present_state_FSM_FFd1-In15 )
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \receive/present_state_FSM_FFd2-In371  (
    .I0(\receive/present_state_FSM_FFd1_821 ),
    .I1(\receive/Mcompar_btu_cmp_eq0000_cy [8]),
    .I2(Rx_IBUF_191),
    .O(\receive/present_state_FSM_FFd2-In37 )
  );
  LUT4 #(
    .INIT ( 16'h8ADF ))
  \receive/present_state_FSM_FFd2-In372  (
    .I0(\receive/present_state_FSM_FFd1_821 ),
    .I1(N41),
    .I2(\receive/bitCount [0]),
    .I3(Rx_IBUF_191),
    .O(\receive/present_state_FSM_FFd2-In371_829 )
  );
  MUXF5   \receive/present_state_FSM_FFd2-In37_f5  (
    .I0(\receive/present_state_FSM_FFd2-In371_829 ),
    .I1(\receive/present_state_FSM_FFd2-In37 ),
    .S(\receive/present_state_FSM_FFd2_826 ),
    .O(\receive/present_state_FSM_FFd2-In )
  );
  LUT4 #(
    .INIT ( 16'h8DDD ))
  \transmit/sreg_data_9_mux00001_SW21  (
    .I0(LED_6_OBUF_115),
    .I1(\transmit/data [7]),
    .I2(LED_5_OBUF_114),
    .I3(\transmit/sreg_data_10_mux0000312_1007 ),
    .O(\transmit/sreg_data_9_mux00001_SW2 )
  );
  LUT4 #(
    .INIT ( 16'hE2F3 ))
  \transmit/sreg_data_9_mux00001_SW22  (
    .I0(\transmit/sreg_data_10_mux0000312_1007 ),
    .I1(LED_6_OBUF_115),
    .I2(\transmit/data [7]),
    .I3(LED_5_OBUF_114),
    .O(\transmit/sreg_data_9_mux00001_SW21_1028 )
  );
  MUXF5   \transmit/sreg_data_9_mux00001_SW2_f5  (
    .I0(\transmit/sreg_data_9_mux00001_SW21_1028 ),
    .I1(\transmit/sreg_data_9_mux00001_SW2 ),
    .S(\transmit/sreg_data_10_mux0000325_1008 ),
    .O(N156)
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \receive/finalBaudCountNum<12>1  (
    .I0(LED_3_OBUF_112),
    .I1(LED_2_OBUF_111),
    .I2(LED_0_OBUF_109),
    .O(\receive/finalBaudCountNum<12>1_761 )
  );
  LUT4 #(
    .INIT ( 16'h0006 ))
  \receive/finalBaudCountNum<12>2  (
    .I0(LED_1_OBUF_110),
    .I1(LED_2_OBUF_111),
    .I2(LED_3_OBUF_112),
    .I3(LED_0_OBUF_109),
    .O(\receive/finalBaudCountNum<12>2_762 )
  );
  MUXF5   \receive/finalBaudCountNum<12>_f5  (
    .I0(\receive/finalBaudCountNum<12>2_762 ),
    .I1(\receive/finalBaudCountNum<12>1_761 ),
    .S(\receive/START_723 ),
    .O(\receive/finalBaudCountNum [12])
  );
  LUT4_D #(
    .INIT ( 16'h0008 ))
  \present_state_FSM_FFd1-In2  (
    .I0(N14),
    .I1(port_id[4]),
    .I2(port_id[3]),
    .I3(N78),
    .LO(N194),
    .O(N12)
  );
  LUT3_D #(
    .INIT ( 8'h10 ))
  read_0_mux00002 (
    .I0(port_id[0]),
    .I1(port_id[4]),
    .I2(N10),
    .LO(N195),
    .O(read[0])
  );
  LUT3_D #(
    .INIT ( 8'h80 ))
  write_12_mux000011 (
    .I0(port_id[3]),
    .I1(port_id[2]),
    .I2(N111),
    .LO(N196),
    .O(N15)
  );
  LUT4_D #(
    .INIT ( 16'h1000 ))
  write_1_mux000011 (
    .I0(port_id[3]),
    .I1(port_id[1]),
    .I2(port_id[0]),
    .I3(N111),
    .LO(N197),
    .O(N20)
  );
  LUT2_D #(
    .INIT ( 4'hD ))
  read_0_mux00001_SW0 (
    .I0(read_strobe),
    .I1(port_id[2]),
    .LO(N198),
    .O(N93)
  );
  LUT3_L #(
    .INIT ( 8'hAC ))
  \in_port<5>_SW1  (
    .I0(rdDataInReg1[5]),
    .I1(rdDataInReg0[5]),
    .I2(port_id[0]),
    .LO(N105)
  );
  LUT3_L #(
    .INIT ( 8'hAC ))
  \in_port<1>_SW1  (
    .I0(rdDataInReg1[1]),
    .I1(rdDataInReg0[1]),
    .I2(port_id[0]),
    .LO(N1111)
  );
  LUT4_L #(
    .INIT ( 16'h0800 ))
  \in_port<0>68  (
    .I0(port_id[4]),
    .I1(port_id[1]),
    .I2(port_id[0]),
    .I3(\in_port<0>60_542 ),
    .LO(\in_port<0>68_543 )
  );
  LUT4_L #(
    .INIT ( 16'hF5F3 ))
  \in_port<0>48_SW0  (
    .I0(\receive/data [0]),
    .I1(\receive/RxRdy_720 ),
    .I2(port_id[1]),
    .I3(port_id[0]),
    .LO(N132)
  );
  LUT3_L #(
    .INIT ( 8'hAC ))
  \in_port<2>_SW2  (
    .I0(rdDataInReg1[2]),
    .I1(rdDataInReg0[2]),
    .I2(port_id[0]),
    .LO(N142)
  );
  LUT4_D #(
    .INIT ( 16'h0001 ))
  read_0_mux00001 (
    .I0(port_id[3]),
    .I1(port_id[1]),
    .I2(port_id[7]),
    .I3(N154),
    .LO(N199),
    .O(N10)
  );
  LUT4_L #(
    .INIT ( 16'hAA75 ))
  \receive/Mmux_nBitCount2_SW2  (
    .I0(\receive/bitCount [1]),
    .I1(\receive/bitCount [2]),
    .I2(\receive/bitCount [3]),
    .I3(\receive/Mcompar_btu_cmp_eq0000_cy [8]),
    .LO(N160)
  );
  LUT4_L #(
    .INIT ( 16'hFBFF ))
  write_11_mux0000_SW1 (
    .I0(port_id[2]),
    .I1(port_id[3]),
    .I2(port_id[4]),
    .I3(write_strobe),
    .LO(N162)
  );
  LUT3_L #(
    .INIT ( 8'hAD ))
  \receive/finalBaudCountNum<14>1_SW1  (
    .I0(LED_1_OBUF_110),
    .I1(LED_0_OBUF_109),
    .I2(\receive/START_723 ),
    .LO(N168)
  );
  LUT4_L #(
    .INIT ( 16'h955D ))
  \receive/Mmux_nBitCount4_SW0  (
    .I0(\receive/bitCount [3]),
    .I1(\receive/bitCount [1]),
    .I2(\receive/bitCount [2]),
    .I3(\receive/Mcompar_btu_cmp_eq0000_cy [8]),
    .LO(N174)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

