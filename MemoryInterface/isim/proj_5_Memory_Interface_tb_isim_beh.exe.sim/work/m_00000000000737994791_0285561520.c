/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Victor Espinoza/Documents/Long Beach/Victor's Projects To Upload/Fall 2015/CECS 460/Lab 5 - Cell RAM/MemoryInterface/src/led_controller.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {3U, 0U};
static unsigned int ng5[] = {14U, 0U};
static unsigned int ng6[] = {29U, 0U};
static unsigned int ng7[] = {43U, 0U};
static unsigned int ng8[] = {55U, 0U};



static void Always_44_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 3488U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 4304);
    *((int *)t2) = 1;
    t3 = (t0 + 3520);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(45, ng0);
    t4 = (t0 + 2408);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);

LAB5:    t7 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 2, t7, 2);
    if (t8 == 1)
        goto LAB6;

LAB7:    t2 = ((char*)((ng2)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 2, t2, 2);
    if (t8 == 1)
        goto LAB8;

LAB9:    t2 = ((char*)((ng3)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 2, t2, 2);
    if (t8 == 1)
        goto LAB10;

LAB11:    t2 = ((char*)((ng4)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 2, t2, 2);
    if (t8 == 1)
        goto LAB12;

LAB13:
LAB15:
LAB14:    xsi_set_current_line(53, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);

LAB16:    goto LAB2;

LAB6:    xsi_set_current_line(47, ng0);
    t9 = ((char*)((ng2)));
    t10 = (t0 + 2568);
    xsi_vlogvar_assign_value(t10, t9, 0, 0, 2);
    goto LAB16;

LAB8:    xsi_set_current_line(48, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2568);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 2);
    goto LAB16;

LAB10:    xsi_set_current_line(49, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 2568);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 2);
    goto LAB16;

LAB12:    xsi_set_current_line(50, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 2568);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 2);
    goto LAB16;

}

static void Always_60_1(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;

LAB0:    t1 = (t0 + 3736U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 4320);
    *((int *)t2) = 1;
    t3 = (t0 + 3768);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(61, ng0);
    t5 = (t0 + 1208U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB8;

LAB6:    if (*((unsigned int *)t5) == 0)
        goto LAB5;

LAB7:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB8:    t13 = (t4 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (~(t14));
    t16 = *((unsigned int *)t4);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB9;

LAB10:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 2, 0LL);

LAB11:    goto LAB2;

LAB5:    *((unsigned int *)t4) = 1;
    goto LAB8;

LAB9:    xsi_set_current_line(63, ng0);
    t19 = ((char*)((ng1)));
    t20 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t20, t19, 0, 0, 2, 0LL);
    goto LAB11;

}

static void Always_73_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    t1 = (t0 + 3984U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 4336);
    *((int *)t2) = 1;
    t3 = (t0 + 4016);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(74, ng0);
    t4 = (t0 + 2408);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);

LAB5:    t7 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 2, t7, 2);
    if (t8 == 1)
        goto LAB6;

LAB7:    t2 = ((char*)((ng2)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 2, t2, 2);
    if (t8 == 1)
        goto LAB8;

LAB9:    t2 = ((char*)((ng3)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 2, t2, 2);
    if (t8 == 1)
        goto LAB10;

LAB11:    t2 = ((char*)((ng4)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 2, t2, 2);
    if (t8 == 1)
        goto LAB12;

LAB13:
LAB15:
LAB14:    xsi_set_current_line(82, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t2, 1, 0, 1);
    t5 = (t0 + 1768);
    xsi_vlogvar_assign_value(t5, t2, 2, 0, 1);
    t7 = (t0 + 1608);
    xsi_vlogvar_assign_value(t7, t2, 3, 0, 1);
    t9 = (t0 + 2248);
    xsi_vlogvar_assign_value(t9, t2, 4, 0, 2);

LAB16:    goto LAB2;

LAB6:    xsi_set_current_line(76, ng0);
    t9 = ((char*)((ng5)));
    t10 = (t0 + 2088);
    xsi_vlogvar_assign_value(t10, t9, 0, 0, 1);
    t11 = (t0 + 1928);
    xsi_vlogvar_assign_value(t11, t9, 1, 0, 1);
    t12 = (t0 + 1768);
    xsi_vlogvar_assign_value(t12, t9, 2, 0, 1);
    t13 = (t0 + 1608);
    xsi_vlogvar_assign_value(t13, t9, 3, 0, 1);
    t14 = (t0 + 2248);
    xsi_vlogvar_assign_value(t14, t9, 4, 0, 2);
    goto LAB16;

LAB8:    xsi_set_current_line(77, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 2088);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    t5 = (t0 + 1928);
    xsi_vlogvar_assign_value(t5, t3, 1, 0, 1);
    t7 = (t0 + 1768);
    xsi_vlogvar_assign_value(t7, t3, 2, 0, 1);
    t9 = (t0 + 1608);
    xsi_vlogvar_assign_value(t9, t3, 3, 0, 1);
    t10 = (t0 + 2248);
    xsi_vlogvar_assign_value(t10, t3, 4, 0, 2);
    goto LAB16;

LAB10:    xsi_set_current_line(78, ng0);
    t3 = ((char*)((ng7)));
    t4 = (t0 + 2088);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    t5 = (t0 + 1928);
    xsi_vlogvar_assign_value(t5, t3, 1, 0, 1);
    t7 = (t0 + 1768);
    xsi_vlogvar_assign_value(t7, t3, 2, 0, 1);
    t9 = (t0 + 1608);
    xsi_vlogvar_assign_value(t9, t3, 3, 0, 1);
    t10 = (t0 + 2248);
    xsi_vlogvar_assign_value(t10, t3, 4, 0, 2);
    goto LAB16;

LAB12:    xsi_set_current_line(79, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 2088);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    t5 = (t0 + 1928);
    xsi_vlogvar_assign_value(t5, t3, 1, 0, 1);
    t7 = (t0 + 1768);
    xsi_vlogvar_assign_value(t7, t3, 2, 0, 1);
    t9 = (t0 + 1608);
    xsi_vlogvar_assign_value(t9, t3, 3, 0, 1);
    t10 = (t0 + 2248);
    xsi_vlogvar_assign_value(t10, t3, 4, 0, 2);
    goto LAB16;

}


extern void work_m_00000000000737994791_0285561520_init()
{
	static char *pe[] = {(void *)Always_44_0,(void *)Always_60_1,(void *)Always_73_2};
	xsi_register_didat("work_m_00000000000737994791_0285561520", "isim/proj_5_Memory_Interface_tb_isim_beh.exe.sim/work/m_00000000000737994791_0285561520.didat");
	xsi_register_executes(pe);
}
