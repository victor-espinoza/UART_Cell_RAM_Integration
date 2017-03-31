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
static const char *ng0 = "C:/Users/Victor Espinoza/Documents/Long Beach/Victor's Projects To Upload/Fall 2015/CECS 460/Lab 5 - Cell RAM/MemoryInterface/src/transmit_engine.v";
static unsigned int ng1[] = {1U, 0U};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {3U, 0U};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {4U, 0U};
static unsigned int ng6[] = {5U, 0U};
static unsigned int ng7[] = {6U, 0U};
static unsigned int ng8[] = {7U, 0U};
static unsigned int ng9[] = {4095U, 0U};
static int ng10[] = {1, 0};
static int ng11[] = {11, 0};
static int ng12[] = {166667, 0};
static int ng13[] = {41667, 0};
static int ng14[] = {20833, 0};
static int ng15[] = {10417, 0};
static int ng16[] = {5208, 0};
static int ng17[] = {2604, 0};
static int ng18[] = {1302, 0};
static int ng19[] = {868, 0};
static unsigned int ng20[] = {8U, 0U};
static int ng21[] = {434, 0};
static unsigned int ng22[] = {9U, 0U};
static int ng23[] = {217, 0};
static unsigned int ng24[] = {10U, 0U};
static int ng25[] = {109, 0};



static void Cont_92_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;

LAB0:    t1 = (t0 + 6688U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(92, ng0);
    t2 = (t0 + 2808U);
    t3 = *((char **)t2);
    t2 = (t0 + 12104);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t3 + 4);
    t11 = *((unsigned int *)t3);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t2, 0, 0);
    t16 = (t0 + 11720);
    *((int *)t16) = 1;

LAB1:    return;
}

static void Cont_93_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;

LAB0:    t1 = (t0 + 6936U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(93, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = (t0 + 12168);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t3 + 4);
    t11 = *((unsigned int *)t3);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t2, 0, 0);
    t16 = (t0 + 11736);
    *((int *)t16) = 1;

LAB1:    return;
}

static void Always_96_2(char *t0)
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

LAB0:    t1 = (t0 + 7184U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(96, ng0);
    t2 = (t0 + 11752);
    *((int *)t2) = 1;
    t3 = (t0 + 7216);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(97, ng0);
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

LAB10:    xsi_set_current_line(99, ng0);
    t2 = (t0 + 2488U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB12;

LAB13:    xsi_set_current_line(101, ng0);
    t2 = (t0 + 2648U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB15;

LAB16:    xsi_set_current_line(104, ng0);
    t2 = (t0 + 4008);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 4008);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 1, 0LL);

LAB17:
LAB14:
LAB11:    goto LAB2;

LAB5:    *((unsigned int *)t4) = 1;
    goto LAB8;

LAB9:    xsi_set_current_line(98, ng0);
    t19 = ((char*)((ng1)));
    t20 = (t0 + 4008);
    xsi_vlogvar_wait_assign_value(t20, t19, 0, 0, 1, 0LL);
    goto LAB11;

LAB12:    xsi_set_current_line(100, ng0);
    t5 = ((char*)((ng1)));
    t6 = (t0 + 4008);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 1, 0LL);
    goto LAB14;

LAB15:    xsi_set_current_line(102, ng0);
    t5 = ((char*)((ng2)));
    t6 = (t0 + 4008);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 1, 0LL);
    goto LAB17;

}

static void Cont_110_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;

LAB0:    t1 = (t0 + 7432U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(110, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = (t0 + 12232);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t3 + 4);
    t11 = *((unsigned int *)t3);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t2, 0, 0);
    t16 = (t0 + 11768);
    *((int *)t16) = 1;

LAB1:    return;
}

static void Cont_111_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;

LAB0:    t1 = (t0 + 7680U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(111, ng0);
    t2 = (t0 + 2808U);
    t3 = *((char **)t2);
    t2 = (t0 + 12296);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t3 + 4);
    t11 = *((unsigned int *)t3);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t2, 0, 0);
    t16 = (t0 + 11784);
    *((int *)t16) = 1;

LAB1:    return;
}

static void Always_114_5(char *t0)
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

LAB0:    t1 = (t0 + 7928U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(114, ng0);
    t2 = (t0 + 11800);
    *((int *)t2) = 1;
    t3 = (t0 + 7960);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(115, ng0);
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

LAB10:    xsi_set_current_line(117, ng0);
    t2 = (t0 + 2968U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB12;

LAB13:    xsi_set_current_line(119, ng0);
    t2 = (t0 + 3128U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB15;

LAB16:    xsi_set_current_line(122, ng0);
    t2 = (t0 + 5128);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 5128);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 1, 0LL);

LAB17:
LAB14:
LAB11:    goto LAB2;

LAB5:    *((unsigned int *)t4) = 1;
    goto LAB8;

LAB9:    xsi_set_current_line(116, ng0);
    t19 = ((char*)((ng2)));
    t20 = (t0 + 5128);
    xsi_vlogvar_wait_assign_value(t20, t19, 0, 0, 1, 0LL);
    goto LAB11;

LAB12:    xsi_set_current_line(118, ng0);
    t5 = ((char*)((ng1)));
    t6 = (t0 + 5128);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 1, 0LL);
    goto LAB14;

LAB15:    xsi_set_current_line(120, ng0);
    t5 = ((char*)((ng2)));
    t6 = (t0 + 5128);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 1, 0LL);
    goto LAB17;

}

static void Cont_125_6(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;

LAB0:    t1 = (t0 + 8176U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(125, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = (t0 + 12360);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t3 + 4);
    t11 = *((unsigned int *)t3);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t2, 0, 0);
    t16 = (t0 + 11816);
    *((int *)t16) = 1;

LAB1:    return;
}

static void Always_127_7(char *t0)
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

LAB0:    t1 = (t0 + 8424U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(127, ng0);
    t2 = (t0 + 11832);
    *((int *)t2) = 1;
    t3 = (t0 + 8456);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(128, ng0);
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

LAB10:    xsi_set_current_line(130, ng0);
    t2 = (t0 + 3288U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB12;

LAB13:    xsi_set_current_line(133, ng0);
    t2 = (t0 + 4168);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 4168);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 8, 0LL);

LAB14:
LAB11:    goto LAB2;

LAB5:    *((unsigned int *)t4) = 1;
    goto LAB8;

LAB9:    xsi_set_current_line(129, ng0);
    t19 = ((char*)((ng2)));
    t20 = (t0 + 4168);
    xsi_vlogvar_wait_assign_value(t20, t19, 0, 0, 8, 0LL);
    goto LAB11;

LAB12:    xsi_set_current_line(131, ng0);
    t5 = (t0 + 2168U);
    t6 = *((char **)t5);
    t5 = (t0 + 4168);
    xsi_vlogvar_wait_assign_value(t5, t6, 0, 0, 8, 0LL);
    goto LAB14;

}

static void Always_142_8(char *t0)
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

LAB0:    t1 = (t0 + 8672U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(142, ng0);
    t2 = (t0 + 11848);
    *((int *)t2) = 1;
    t3 = (t0 + 8704);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(143, ng0);
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

LAB10:    xsi_set_current_line(146, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = (t0 + 5288);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);

LAB11:    goto LAB2;

LAB5:    *((unsigned int *)t4) = 1;
    goto LAB8;

LAB9:    xsi_set_current_line(144, ng0);
    t19 = ((char*)((ng2)));
    t20 = (t0 + 5288);
    xsi_vlogvar_wait_assign_value(t20, t19, 0, 0, 1, 0LL);
    goto LAB11;

}

static void Always_151_9(char *t0)
{
    char t4[8];
    char t13[8];
    char t14[8];
    char t15[8];
    char t29[8];
    char t47[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;
    char *t28;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    char *t44;
    char *t45;
    char *t46;
    char *t48;
    char *t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    char *t56;
    char *t57;

LAB0:    t1 = (t0 + 8920U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(151, ng0);
    t2 = (t0 + 11864);
    *((int *)t2) = 1;
    t3 = (t0 + 8952);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(152, ng0);
    t5 = (t0 + 1688U);
    t6 = *((char **)t5);
    t5 = (t0 + 1528U);
    t7 = *((char **)t5);
    t5 = (t0 + 1368U);
    t8 = *((char **)t5);
    xsi_vlogtype_concat(t4, 3, 3, 3U, t8, 1, t7, 1, t6, 1);

LAB5:    t5 = ((char*)((ng2)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 3, t5, 3);
    if (t9 == 1)
        goto LAB6;

LAB7:    t2 = ((char*)((ng1)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t9 == 1)
        goto LAB8;

LAB9:    t2 = ((char*)((ng4)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t9 == 1)
        goto LAB10;

LAB11:    t2 = ((char*)((ng3)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t9 == 1)
        goto LAB12;

LAB13:    t2 = ((char*)((ng5)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t9 == 1)
        goto LAB14;

LAB15:    t2 = ((char*)((ng6)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t9 == 1)
        goto LAB16;

LAB17:    t2 = ((char*)((ng7)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t9 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng8)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t9 == 1)
        goto LAB20;

LAB21:
LAB23:
LAB22:    xsi_set_current_line(161, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    t5 = (t0 + 5768);
    xsi_vlogvar_assign_value(t5, t2, 1, 0, 1);

LAB24:    goto LAB2;

LAB6:    xsi_set_current_line(153, ng0);
    t10 = ((char*)((ng3)));
    t11 = (t0 + 5608);
    xsi_vlogvar_assign_value(t11, t10, 0, 0, 1);
    t12 = (t0 + 5768);
    xsi_vlogvar_assign_value(t12, t10, 1, 0, 1);
    goto LAB24;

LAB8:    xsi_set_current_line(154, ng0);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 5608);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    t6 = (t0 + 5768);
    xsi_vlogvar_assign_value(t6, t3, 1, 0, 1);
    goto LAB24;

LAB10:    xsi_set_current_line(155, ng0);
    t3 = (t0 + 4168);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    memset(t15, 0, 8);
    t7 = (t15 + 4);
    t8 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (t16 >> 0);
    *((unsigned int *)t15) = t17;
    t18 = *((unsigned int *)t8);
    t19 = (t18 >> 0);
    *((unsigned int *)t7) = t19;
    t20 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t20 & 127U);
    t21 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t21 & 127U);
    memset(t14, 0, 8);
    t10 = (t15 + 4);
    t22 = *((unsigned int *)t15);
    t23 = *((unsigned int *)t15);
    t23 = (t23 & 1);
    if (*((unsigned int *)t10) != 0)
        goto LAB25;

LAB26:    t24 = 1;

LAB28:    t25 = (t24 <= 6);
    if (t25 == 1)
        goto LAB29;

LAB30:    *((unsigned int *)t14) = t23;

LAB27:    t12 = ((char*)((ng1)));
    xsi_vlogtype_concat(t13, 2, 2, 2U, t12, 1, t14, 1);
    t27 = (t0 + 5608);
    xsi_vlogvar_assign_value(t27, t13, 0, 0, 1);
    t28 = (t0 + 5768);
    xsi_vlogvar_assign_value(t28, t13, 1, 0, 1);
    goto LAB24;

LAB12:    xsi_set_current_line(156, ng0);
    t3 = (t0 + 4168);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    memset(t29, 0, 8);
    t7 = (t29 + 4);
    t8 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (t16 >> 0);
    *((unsigned int *)t29) = t17;
    t18 = *((unsigned int *)t8);
    t19 = (t18 >> 0);
    *((unsigned int *)t7) = t19;
    t20 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t20 & 127U);
    t21 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t21 & 127U);
    memset(t15, 0, 8);
    t10 = (t29 + 4);
    t22 = *((unsigned int *)t29);
    t23 = *((unsigned int *)t29);
    t23 = (t23 & 1);
    if (*((unsigned int *)t10) != 0)
        goto LAB32;

LAB33:    t24 = 1;

LAB35:    t25 = (t24 <= 6);
    if (t25 == 1)
        goto LAB36;

LAB37:    *((unsigned int *)t15) = t23;

LAB34:    memset(t14, 0, 8);
    t12 = (t15 + 4);
    t30 = *((unsigned int *)t12);
    t31 = (~(t30));
    t32 = *((unsigned int *)t15);
    t33 = (t32 & t31);
    t34 = (t33 & 1U);
    if (t34 != 0)
        goto LAB42;

LAB40:    if (*((unsigned int *)t12) == 0)
        goto LAB39;

LAB41:    t27 = (t14 + 4);
    *((unsigned int *)t14) = 1;
    *((unsigned int *)t27) = 1;

LAB42:    t28 = (t14 + 4);
    t35 = (t15 + 4);
    t36 = *((unsigned int *)t15);
    t37 = (~(t36));
    *((unsigned int *)t14) = t37;
    *((unsigned int *)t28) = 0;
    if (*((unsigned int *)t35) != 0)
        goto LAB44;

LAB43:    t42 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t42 & 1U);
    t43 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t43 & 1U);
    t44 = ((char*)((ng1)));
    xsi_vlogtype_concat(t13, 2, 2, 2U, t44, 1, t14, 1);
    t45 = (t0 + 5608);
    xsi_vlogvar_assign_value(t45, t13, 0, 0, 1);
    t46 = (t0 + 5768);
    xsi_vlogvar_assign_value(t46, t13, 1, 0, 1);
    goto LAB24;

LAB14:    xsi_set_current_line(157, ng0);
    t3 = (t0 + 4168);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    memset(t14, 0, 8);
    t7 = (t14 + 4);
    t8 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (t16 >> 7);
    t18 = (t17 & 1);
    *((unsigned int *)t14) = t18;
    t19 = *((unsigned int *)t8);
    t20 = (t19 >> 7);
    t21 = (t20 & 1);
    *((unsigned int *)t7) = t21;
    t10 = ((char*)((ng1)));
    xsi_vlogtype_concat(t13, 2, 2, 2U, t10, 1, t14, 1);
    t11 = (t0 + 5608);
    xsi_vlogvar_assign_value(t11, t13, 0, 0, 1);
    t12 = (t0 + 5768);
    xsi_vlogvar_assign_value(t12, t13, 1, 0, 1);
    goto LAB24;

LAB16:    xsi_set_current_line(158, ng0);
    t3 = (t0 + 4168);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    memset(t14, 0, 8);
    t7 = (t14 + 4);
    t8 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (t16 >> 7);
    t18 = (t17 & 1);
    *((unsigned int *)t14) = t18;
    t19 = *((unsigned int *)t8);
    t20 = (t19 >> 7);
    t21 = (t20 & 1);
    *((unsigned int *)t7) = t21;
    t10 = ((char*)((ng1)));
    xsi_vlogtype_concat(t13, 2, 2, 2U, t10, 1, t14, 1);
    t11 = (t0 + 5608);
    xsi_vlogvar_assign_value(t11, t13, 0, 0, 1);
    t12 = (t0 + 5768);
    xsi_vlogvar_assign_value(t12, t13, 1, 0, 1);
    goto LAB24;

LAB18:    xsi_set_current_line(159, ng0);
    t3 = (t0 + 4168);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    memset(t14, 0, 8);
    t7 = (t14 + 4);
    t8 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (t16 >> 7);
    t18 = (t17 & 1);
    *((unsigned int *)t14) = t18;
    t19 = *((unsigned int *)t8);
    t20 = (t19 >> 7);
    t21 = (t20 & 1);
    *((unsigned int *)t7) = t21;
    t10 = (t0 + 4168);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memset(t29, 0, 8);
    t27 = (t29 + 4);
    t28 = (t12 + 4);
    t22 = *((unsigned int *)t12);
    t23 = (t22 >> 0);
    *((unsigned int *)t29) = t23;
    t24 = *((unsigned int *)t28);
    t25 = (t24 >> 0);
    *((unsigned int *)t27) = t25;
    t26 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t26 & 255U);
    t30 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t30 & 255U);
    memset(t15, 0, 8);
    t35 = (t29 + 4);
    t31 = *((unsigned int *)t29);
    t32 = *((unsigned int *)t29);
    t32 = (t32 & 1);
    if (*((unsigned int *)t35) != 0)
        goto LAB45;

LAB46:    t33 = 1;

LAB48:    t34 = (t33 <= 7);
    if (t34 == 1)
        goto LAB49;

LAB50:    *((unsigned int *)t15) = t32;

LAB47:    xsi_vlogtype_concat(t13, 2, 2, 2U, t15, 1, t14, 1);
    t45 = (t0 + 5608);
    xsi_vlogvar_assign_value(t45, t13, 0, 0, 1);
    t46 = (t0 + 5768);
    xsi_vlogvar_assign_value(t46, t13, 1, 0, 1);
    goto LAB24;

LAB20:    xsi_set_current_line(160, ng0);
    t3 = (t0 + 4168);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    memset(t14, 0, 8);
    t7 = (t14 + 4);
    t8 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (t16 >> 7);
    t18 = (t17 & 1);
    *((unsigned int *)t14) = t18;
    t19 = *((unsigned int *)t8);
    t20 = (t19 >> 7);
    t21 = (t20 & 1);
    *((unsigned int *)t7) = t21;
    t10 = (t0 + 4168);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memset(t47, 0, 8);
    t27 = (t47 + 4);
    t28 = (t12 + 4);
    t22 = *((unsigned int *)t12);
    t23 = (t22 >> 0);
    *((unsigned int *)t47) = t23;
    t24 = *((unsigned int *)t28);
    t25 = (t24 >> 0);
    *((unsigned int *)t27) = t25;
    t26 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t26 & 255U);
    t30 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t30 & 255U);
    memset(t29, 0, 8);
    t35 = (t47 + 4);
    t31 = *((unsigned int *)t47);
    t32 = *((unsigned int *)t47);
    t32 = (t32 & 1);
    if (*((unsigned int *)t35) != 0)
        goto LAB52;

LAB53:    t33 = 1;

LAB55:    t34 = (t33 <= 7);
    if (t34 == 1)
        goto LAB56;

LAB57:    *((unsigned int *)t29) = t32;

LAB54:    memset(t15, 0, 8);
    t45 = (t29 + 4);
    t37 = *((unsigned int *)t45);
    t38 = (~(t37));
    t39 = *((unsigned int *)t29);
    t40 = (t39 & t38);
    t41 = (t40 & 1U);
    if (t41 != 0)
        goto LAB62;

LAB60:    if (*((unsigned int *)t45) == 0)
        goto LAB59;

LAB61:    t46 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t46) = 1;

LAB62:    t48 = (t15 + 4);
    t49 = (t29 + 4);
    t42 = *((unsigned int *)t29);
    t43 = (~(t42));
    *((unsigned int *)t15) = t43;
    *((unsigned int *)t48) = 0;
    if (*((unsigned int *)t49) != 0)
        goto LAB64;

LAB63:    t54 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t54 & 1U);
    t55 = *((unsigned int *)t48);
    *((unsigned int *)t48) = (t55 & 1U);
    xsi_vlogtype_concat(t13, 2, 2, 2U, t15, 1, t14, 1);
    t56 = (t0 + 5608);
    xsi_vlogvar_assign_value(t56, t13, 0, 0, 1);
    t57 = (t0 + 5768);
    xsi_vlogvar_assign_value(t57, t13, 1, 0, 1);
    goto LAB24;

LAB25:    t11 = (t14 + 4);
    *((unsigned int *)t14) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB27;

LAB29:    t22 = (t22 >> 1);
    t26 = (t22 & 1);
    t23 = (t23 ^ t26);

LAB31:    t24 = (t24 + 1);
    goto LAB28;

LAB32:    t11 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB34;

LAB36:    t22 = (t22 >> 1);
    t26 = (t22 & 1);
    t23 = (t23 ^ t26);

LAB38:    t24 = (t24 + 1);
    goto LAB35;

LAB39:    *((unsigned int *)t14) = 1;
    goto LAB42;

LAB44:    t38 = *((unsigned int *)t14);
    t39 = *((unsigned int *)t35);
    *((unsigned int *)t14) = (t38 | t39);
    t40 = *((unsigned int *)t28);
    t41 = *((unsigned int *)t35);
    *((unsigned int *)t28) = (t40 | t41);
    goto LAB43;

LAB45:    t44 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t44) = 1;
    goto LAB47;

LAB49:    t31 = (t31 >> 1);
    t36 = (t31 & 1);
    t32 = (t32 ^ t36);

LAB51:    t33 = (t33 + 1);
    goto LAB48;

LAB52:    t44 = (t29 + 4);
    *((unsigned int *)t29) = 1;
    *((unsigned int *)t44) = 1;
    goto LAB54;

LAB56:    t31 = (t31 >> 1);
    t36 = (t31 & 1);
    t32 = (t32 ^ t36);

LAB58:    t33 = (t33 + 1);
    goto LAB55;

LAB59:    *((unsigned int *)t15) = 1;
    goto LAB62;

LAB64:    t50 = *((unsigned int *)t15);
    t51 = *((unsigned int *)t49);
    *((unsigned int *)t15) = (t50 | t51);
    t52 = *((unsigned int *)t48);
    t53 = *((unsigned int *)t49);
    *((unsigned int *)t48) = (t52 | t53);
    goto LAB63;

}

static void Always_166_10(char *t0)
{
    char t4[8];
    char t21[8];
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
    char *t22;
    char *t23;
    char *t24;
    unsigned int t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    int t34;

LAB0:    t1 = (t0 + 9168U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(166, ng0);
    t2 = (t0 + 11880);
    *((int *)t2) = 1;
    t3 = (t0 + 9200);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(167, ng0);
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

LAB10:    xsi_set_current_line(169, ng0);
    t2 = (t0 + 5288);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB12;

LAB13:    xsi_set_current_line(171, ng0);
    t2 = (t0 + 3608U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB15;

LAB16:
LAB17:
LAB14:
LAB11:    goto LAB2;

LAB5:    *((unsigned int *)t4) = 1;
    goto LAB8;

LAB9:    xsi_set_current_line(168, ng0);
    t19 = ((char*)((ng9)));
    t20 = (t0 + 5448);
    xsi_vlogvar_wait_assign_value(t20, t19, 0, 0, 12, 0LL);
    goto LAB11;

LAB12:    xsi_set_current_line(170, ng0);
    t12 = ((char*)((ng1)));
    t13 = ((char*)((ng2)));
    t19 = (t0 + 4168);
    t20 = (t19 + 56U);
    t22 = *((char **)t20);
    memset(t21, 0, 8);
    t23 = (t21 + 4);
    t24 = (t22 + 4);
    t14 = *((unsigned int *)t22);
    t15 = (t14 >> 0);
    *((unsigned int *)t21) = t15;
    t16 = *((unsigned int *)t24);
    t17 = (t16 >> 0);
    *((unsigned int *)t23) = t17;
    t18 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t18 & 127U);
    t25 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t25 & 127U);
    t26 = (t0 + 5608);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t29 = (t0 + 5768);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    t32 = ((char*)((ng1)));
    xsi_vlogtype_concat(t4, 12, 12, 6U, t32, 1, t31, 1, t28, 1, t21, 7, t13, 1, t12, 1);
    t33 = (t0 + 5448);
    xsi_vlogvar_wait_assign_value(t33, t4, 0, 0, 12, 0LL);
    goto LAB14;

LAB15:    xsi_set_current_line(171, ng0);

LAB18:    xsi_set_current_line(172, ng0);
    t5 = (t0 + 5448);
    t6 = (t5 + 56U);
    t12 = *((char **)t6);
    t13 = ((char*)((ng10)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_rshift(t4, 12, t12, 12, t13, 32);
    t19 = (t0 + 5448);
    xsi_vlogvar_wait_assign_value(t19, t4, 0, 0, 12, 0LL);
    xsi_set_current_line(173, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 5448);
    t5 = (t0 + 5448);
    t6 = (t5 + 72U);
    t12 = *((char **)t6);
    t13 = ((char*)((ng11)));
    xsi_vlog_generic_convert_bit_index(t4, t12, 2, t13, 32, 1);
    t19 = (t4 + 4);
    t7 = *((unsigned int *)t19);
    t34 = (!(t7));
    if (t34 == 1)
        goto LAB19;

LAB20:    goto LAB17;

LAB19:    xsi_vlogvar_wait_assign_value(t3, t2, 0, *((unsigned int *)t4), 1, 0LL);
    goto LAB20;

}

static void Cont_176_11(char *t0)
{
    char t5[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;

LAB0:    t1 = (t0 + 9416U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(176, ng0);
    t2 = (t0 + 5448);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t5, 0, 8);
    t6 = (t5 + 4);
    t7 = (t4 + 4);
    t8 = *((unsigned int *)t4);
    t9 = (t8 >> 0);
    t10 = (t9 & 1);
    *((unsigned int *)t5) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 0);
    t13 = (t12 & 1);
    *((unsigned int *)t6) = t13;
    t14 = (t0 + 12424);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memset(t18, 0, 8);
    t19 = 1U;
    t20 = t19;
    t21 = (t5 + 4);
    t22 = *((unsigned int *)t5);
    t19 = (t19 & t22);
    t23 = *((unsigned int *)t21);
    t20 = (t20 & t23);
    t24 = (t18 + 4);
    t25 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t25 | t19);
    t26 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t26 | t20);
    xsi_driver_vfirst_trans(t14, 0, 0);
    t27 = (t0 + 11896);
    *((int *)t27) = 1;

LAB1:    return;
}

static void Always_187_12(char *t0)
{
    char t9[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    char *t10;

LAB0:    t1 = (t0 + 9664U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(187, ng0);
    t2 = (t0 + 11912);
    *((int *)t2) = 1;
    t3 = (t0 + 9696);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(188, ng0);
    t4 = (t0 + 2008U);
    t5 = *((char **)t4);

LAB5:    t4 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t4, 4);
    if (t6 == 1)
        goto LAB6;

LAB7:    t2 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB8;

LAB9:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB10;

LAB11:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB12;

LAB13:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB14;

LAB15:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB16;

LAB17:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB20;

LAB21:    t2 = ((char*)((ng20)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB22;

LAB23:    t2 = ((char*)((ng22)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB24;

LAB25:    t2 = ((char*)((ng24)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB26;

LAB27:
LAB29:
LAB28:    xsi_set_current_line(205, ng0);
    t2 = ((char*)((ng12)));
    t3 = ((char*)((ng10)));
    memset(t9, 0, 8);
    xsi_vlog_signed_minus(t9, 32, t2, 32, t3, 32);
    t4 = (t0 + 4328);
    xsi_vlogvar_assign_value(t4, t9, 0, 0, 18);

LAB30:    goto LAB2;

LAB6:    xsi_set_current_line(190, ng0);
    t7 = ((char*)((ng12)));
    t8 = ((char*)((ng10)));
    memset(t9, 0, 8);
    xsi_vlog_signed_minus(t9, 32, t7, 32, t8, 32);
    t10 = (t0 + 4328);
    xsi_vlogvar_assign_value(t10, t9, 0, 0, 18);
    goto LAB30;

LAB8:    xsi_set_current_line(191, ng0);
    t3 = ((char*)((ng13)));
    t4 = ((char*)((ng10)));
    memset(t9, 0, 8);
    xsi_vlog_signed_minus(t9, 32, t3, 32, t4, 32);
    t7 = (t0 + 4328);
    xsi_vlogvar_assign_value(t7, t9, 0, 0, 18);
    goto LAB30;

LAB10:    xsi_set_current_line(192, ng0);
    t3 = ((char*)((ng14)));
    t4 = ((char*)((ng10)));
    memset(t9, 0, 8);
    xsi_vlog_signed_minus(t9, 32, t3, 32, t4, 32);
    t7 = (t0 + 4328);
    xsi_vlogvar_assign_value(t7, t9, 0, 0, 18);
    goto LAB30;

LAB12:    xsi_set_current_line(193, ng0);
    t3 = ((char*)((ng15)));
    t4 = ((char*)((ng10)));
    memset(t9, 0, 8);
    xsi_vlog_signed_minus(t9, 32, t3, 32, t4, 32);
    t7 = (t0 + 4328);
    xsi_vlogvar_assign_value(t7, t9, 0, 0, 18);
    goto LAB30;

LAB14:    xsi_set_current_line(195, ng0);
    t3 = ((char*)((ng16)));
    t4 = ((char*)((ng10)));
    memset(t9, 0, 8);
    xsi_vlog_signed_minus(t9, 32, t3, 32, t4, 32);
    t7 = (t0 + 4328);
    xsi_vlogvar_assign_value(t7, t9, 0, 0, 18);
    goto LAB30;

LAB16:    xsi_set_current_line(196, ng0);
    t3 = ((char*)((ng17)));
    t4 = ((char*)((ng10)));
    memset(t9, 0, 8);
    xsi_vlog_signed_minus(t9, 32, t3, 32, t4, 32);
    t7 = (t0 + 4328);
    xsi_vlogvar_assign_value(t7, t9, 0, 0, 18);
    goto LAB30;

LAB18:    xsi_set_current_line(197, ng0);
    t3 = ((char*)((ng18)));
    t4 = ((char*)((ng10)));
    memset(t9, 0, 8);
    xsi_vlog_signed_minus(t9, 32, t3, 32, t4, 32);
    t7 = (t0 + 4328);
    xsi_vlogvar_assign_value(t7, t9, 0, 0, 18);
    goto LAB30;

LAB20:    xsi_set_current_line(198, ng0);
    t3 = ((char*)((ng19)));
    t4 = ((char*)((ng10)));
    memset(t9, 0, 8);
    xsi_vlog_signed_minus(t9, 32, t3, 32, t4, 32);
    t7 = (t0 + 4328);
    xsi_vlogvar_assign_value(t7, t9, 0, 0, 18);
    goto LAB30;

LAB22:    xsi_set_current_line(200, ng0);
    t3 = ((char*)((ng21)));
    t4 = ((char*)((ng10)));
    memset(t9, 0, 8);
    xsi_vlog_signed_minus(t9, 32, t3, 32, t4, 32);
    t7 = (t0 + 4328);
    xsi_vlogvar_assign_value(t7, t9, 0, 0, 18);
    goto LAB30;

LAB24:    xsi_set_current_line(201, ng0);
    t3 = ((char*)((ng23)));
    t4 = ((char*)((ng10)));
    memset(t9, 0, 8);
    xsi_vlog_signed_minus(t9, 32, t3, 32, t4, 32);
    t7 = (t0 + 4328);
    xsi_vlogvar_assign_value(t7, t9, 0, 0, 18);
    goto LAB30;

LAB26:    xsi_set_current_line(202, ng0);
    t3 = ((char*)((ng25)));
    t4 = ((char*)((ng10)));
    memset(t9, 0, 8);
    xsi_vlog_signed_minus(t9, 32, t3, 32, t4, 32);
    t7 = (t0 + 4328);
    xsi_vlogvar_assign_value(t7, t9, 0, 0, 18);
    goto LAB30;

}

static void Cont_211_13(char *t0)
{
    char t3[8];
    char t4[8];
    char t10[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    unsigned int t48;
    unsigned int t49;
    char *t50;
    unsigned int t51;
    unsigned int t52;
    char *t53;
    unsigned int t54;
    unsigned int t55;
    char *t56;

LAB0:    t1 = (t0 + 9912U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(211, ng0);
    t2 = (t0 + 4488);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t0 + 4328);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t10, 0, 8);
    t11 = (t6 + 4);
    t12 = (t9 + 4);
    t13 = *((unsigned int *)t6);
    t14 = *((unsigned int *)t9);
    t15 = (t13 ^ t14);
    t16 = *((unsigned int *)t11);
    t17 = *((unsigned int *)t12);
    t18 = (t16 ^ t17);
    t19 = (t15 | t18);
    t20 = *((unsigned int *)t11);
    t21 = *((unsigned int *)t12);
    t22 = (t20 | t21);
    t23 = (~(t22));
    t24 = (t19 & t23);
    if (t24 != 0)
        goto LAB7;

LAB4:    if (t22 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t10) = 1;

LAB7:    memset(t4, 0, 8);
    t26 = (t10 + 4);
    t27 = *((unsigned int *)t26);
    t28 = (~(t27));
    t29 = *((unsigned int *)t10);
    t30 = (t29 & t28);
    t31 = (t30 & 1U);
    if (t31 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t26) != 0)
        goto LAB10;

LAB11:    t33 = (t4 + 4);
    t34 = *((unsigned int *)t4);
    t35 = *((unsigned int *)t33);
    t36 = (t34 || t35);
    if (t36 > 0)
        goto LAB12;

LAB13:    t38 = *((unsigned int *)t4);
    t39 = (~(t38));
    t40 = *((unsigned int *)t33);
    t41 = (t39 || t40);
    if (t41 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t33) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t42, 8);

LAB20:    t43 = (t0 + 12488);
    t44 = (t43 + 56U);
    t45 = *((char **)t44);
    t46 = (t45 + 56U);
    t47 = *((char **)t46);
    memset(t47, 0, 8);
    t48 = 1U;
    t49 = t48;
    t50 = (t3 + 4);
    t51 = *((unsigned int *)t3);
    t48 = (t48 & t51);
    t52 = *((unsigned int *)t50);
    t49 = (t49 & t52);
    t53 = (t47 + 4);
    t54 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t54 | t48);
    t55 = *((unsigned int *)t53);
    *((unsigned int *)t53) = (t55 | t49);
    xsi_driver_vfirst_trans(t43, 0, 0);
    t56 = (t0 + 11928);
    *((int *)t56) = 1;

LAB1:    return;
LAB6:    t25 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t25) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t32 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t32) = 1;
    goto LAB11;

LAB12:    t37 = ((char*)((ng1)));
    goto LAB13;

LAB14:    t42 = ((char*)((ng2)));
    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 1, t37, 1, t42, 1);
    goto LAB20;

LAB18:    memcpy(t3, t37, 8);
    goto LAB20;

}

static void Cont_212_14(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;

LAB0:    t1 = (t0 + 10160U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(212, ng0);
    t2 = (t0 + 3448U);
    t3 = *((char **)t2);
    t2 = (t0 + 12552);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t3 + 4);
    t11 = *((unsigned int *)t3);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t2, 0, 0);
    t16 = (t0 + 11944);
    *((int *)t16) = 1;

LAB1:    return;
}

static void Always_215_15(char *t0)
{
    char t4[8];
    char t13[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 10408U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(215, ng0);
    t2 = (t0 + 11960);
    *((int *)t2) = 1;
    t3 = (t0 + 10440);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(216, ng0);
    t5 = (t0 + 5128);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t0 + 3448U);
    t9 = *((char **)t8);
    xsi_vlogtype_concat(t4, 2, 2, 2U, t9, 1, t7, 1);

LAB5:    t8 = ((char*)((ng2)));
    t10 = xsi_vlog_unsigned_case_compare(t4, 2, t8, 2);
    if (t10 == 1)
        goto LAB6;

LAB7:    t2 = ((char*)((ng1)));
    t10 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t10 == 1)
        goto LAB8;

LAB9:    t2 = ((char*)((ng4)));
    t10 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t10 == 1)
        goto LAB10;

LAB11:    t2 = ((char*)((ng3)));
    t10 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t10 == 1)
        goto LAB12;

LAB13:
LAB15:
LAB14:    xsi_set_current_line(221, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4648);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 18);

LAB16:    goto LAB2;

LAB6:    xsi_set_current_line(217, ng0);
    t11 = ((char*)((ng2)));
    t12 = (t0 + 4648);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 18);
    goto LAB16;

LAB8:    xsi_set_current_line(218, ng0);
    t3 = (t0 + 4488);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng10)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_add(t13, 32, t6, 18, t7, 32);
    t8 = (t0 + 4648);
    xsi_vlogvar_assign_value(t8, t13, 0, 0, 18);
    goto LAB16;

LAB10:    xsi_set_current_line(219, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 4648);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 18);
    goto LAB16;

LAB12:    xsi_set_current_line(220, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 4648);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 18);
    goto LAB16;

}

static void Always_226_16(char *t0)
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

LAB0:    t1 = (t0 + 10656U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(226, ng0);
    t2 = (t0 + 11976);
    *((int *)t2) = 1;
    t3 = (t0 + 10688);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(227, ng0);
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

LAB10:    xsi_set_current_line(230, ng0);
    t2 = (t0 + 4648);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 4488);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 18, 0LL);

LAB11:    goto LAB2;

LAB5:    *((unsigned int *)t4) = 1;
    goto LAB8;

LAB9:    xsi_set_current_line(228, ng0);
    t19 = ((char*)((ng2)));
    t20 = (t0 + 4488);
    xsi_vlogvar_wait_assign_value(t20, t19, 0, 0, 18, 0LL);
    goto LAB11;

}

static void Cont_242_17(char *t0)
{
    char t3[8];
    char t4[8];
    char t8[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    char *t51;
    unsigned int t52;
    unsigned int t53;
    char *t54;

LAB0:    t1 = (t0 + 10904U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(242, ng0);
    t2 = (t0 + 4808);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng11)));
    memset(t8, 0, 8);
    t9 = (t6 + 4);
    t10 = (t7 + 4);
    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t7);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t9);
    t15 = *((unsigned int *)t10);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t9);
    t19 = *((unsigned int *)t10);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB7;

LAB4:    if (t20 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t8) = 1;

LAB7:    memset(t4, 0, 8);
    t24 = (t8 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (~(t25));
    t27 = *((unsigned int *)t8);
    t28 = (t27 & t26);
    t29 = (t28 & 1U);
    if (t29 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t24) != 0)
        goto LAB10;

LAB11:    t31 = (t4 + 4);
    t32 = *((unsigned int *)t4);
    t33 = *((unsigned int *)t31);
    t34 = (t32 || t33);
    if (t34 > 0)
        goto LAB12;

LAB13:    t36 = *((unsigned int *)t4);
    t37 = (~(t36));
    t38 = *((unsigned int *)t31);
    t39 = (t37 || t38);
    if (t39 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t31) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t40, 8);

LAB20:    t41 = (t0 + 12616);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    t44 = (t43 + 56U);
    t45 = *((char **)t44);
    memset(t45, 0, 8);
    t46 = 1U;
    t47 = t46;
    t48 = (t3 + 4);
    t49 = *((unsigned int *)t3);
    t46 = (t46 & t49);
    t50 = *((unsigned int *)t48);
    t47 = (t47 & t50);
    t51 = (t45 + 4);
    t52 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t52 | t46);
    t53 = *((unsigned int *)t51);
    *((unsigned int *)t51) = (t53 | t47);
    xsi_driver_vfirst_trans(t41, 0, 0);
    t54 = (t0 + 11992);
    *((int *)t54) = 1;

LAB1:    return;
LAB6:    t23 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t30 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB11;

LAB12:    t35 = ((char*)((ng1)));
    goto LAB13;

LAB14:    t40 = ((char*)((ng2)));
    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 1, t35, 1, t40, 1);
    goto LAB20;

LAB18:    memcpy(t3, t35, 8);
    goto LAB20;

}

static void Always_245_18(char *t0)
{
    char t4[8];
    char t13[8];
    char t14[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    char *t12;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;

LAB0:    t1 = (t0 + 11152U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(245, ng0);
    t2 = (t0 + 12008);
    *((int *)t2) = 1;
    t3 = (t0 + 11184);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(246, ng0);
    t5 = (t0 + 5128);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t0 + 3448U);
    t9 = *((char **)t8);
    xsi_vlogtype_concat(t4, 2, 2, 2U, t9, 1, t7, 1);

LAB5:    t8 = ((char*)((ng2)));
    t10 = xsi_vlog_unsigned_case_compare(t4, 2, t8, 2);
    if (t10 == 1)
        goto LAB6;

LAB7:    t2 = ((char*)((ng1)));
    t10 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t10 == 1)
        goto LAB8;

LAB9:    t2 = ((char*)((ng4)));
    t10 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t10 == 1)
        goto LAB10;

LAB11:    t2 = ((char*)((ng3)));
    t10 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t10 == 1)
        goto LAB12;

LAB13:
LAB15:
LAB14:    xsi_set_current_line(251, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4968);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);

LAB16:    goto LAB2;

LAB6:    xsi_set_current_line(247, ng0);
    t11 = ((char*)((ng2)));
    t12 = (t0 + 4968);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 4);
    goto LAB16;

LAB8:    xsi_set_current_line(248, ng0);
    t3 = (t0 + 2808U);
    t5 = *((char **)t3);
    memset(t14, 0, 8);
    t3 = (t5 + 4);
    t15 = *((unsigned int *)t3);
    t16 = (~(t15));
    t17 = *((unsigned int *)t5);
    t18 = (t17 & t16);
    t19 = (t18 & 1U);
    if (t19 != 0)
        goto LAB17;

LAB18:    if (*((unsigned int *)t3) != 0)
        goto LAB19;

LAB20:    t7 = (t14 + 4);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t7);
    t22 = (t20 || t21);
    if (t22 > 0)
        goto LAB21;

LAB22:    t23 = *((unsigned int *)t14);
    t24 = (~(t23));
    t25 = *((unsigned int *)t7);
    t26 = (t24 || t25);
    if (t26 > 0)
        goto LAB23;

LAB24:    if (*((unsigned int *)t7) > 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t14) > 0)
        goto LAB27;

LAB28:    memcpy(t13, t12, 8);

LAB29:    t27 = (t0 + 4968);
    xsi_vlogvar_assign_value(t27, t13, 0, 0, 4);
    goto LAB16;

LAB10:    xsi_set_current_line(249, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 4968);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 4);
    goto LAB16;

LAB12:    xsi_set_current_line(250, ng0);
    t3 = (t0 + 4808);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng10)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_add(t13, 32, t6, 4, t7, 32);
    t8 = (t0 + 4968);
    xsi_vlogvar_assign_value(t8, t13, 0, 0, 4);
    goto LAB16;

LAB17:    *((unsigned int *)t14) = 1;
    goto LAB20;

LAB19:    t6 = (t14 + 4);
    *((unsigned int *)t14) = 1;
    *((unsigned int *)t6) = 1;
    goto LAB20;

LAB21:    t8 = ((char*)((ng2)));
    goto LAB22;

LAB23:    t9 = (t0 + 4808);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    goto LAB24;

LAB25:    xsi_vlog_unsigned_bit_combine(t13, 4, t8, 4, t12, 4);
    goto LAB29;

LAB27:    memcpy(t13, t8, 8);
    goto LAB29;

}

static void Always_256_19(char *t0)
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

LAB0:    t1 = (t0 + 11400U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(256, ng0);
    t2 = (t0 + 12024);
    *((int *)t2) = 1;
    t3 = (t0 + 11432);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(257, ng0);
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

LAB10:    xsi_set_current_line(260, ng0);
    t2 = (t0 + 4968);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 4, 0LL);

LAB11:    goto LAB2;

LAB5:    *((unsigned int *)t4) = 1;
    goto LAB8;

LAB9:    xsi_set_current_line(258, ng0);
    t19 = ((char*)((ng2)));
    t20 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t20, t19, 0, 0, 4, 0LL);
    goto LAB11;

}


extern void work_m_00000000000527473838_3596322464_init()
{
	static char *pe[] = {(void *)Cont_92_0,(void *)Cont_93_1,(void *)Always_96_2,(void *)Cont_110_3,(void *)Cont_111_4,(void *)Always_114_5,(void *)Cont_125_6,(void *)Always_127_7,(void *)Always_142_8,(void *)Always_151_9,(void *)Always_166_10,(void *)Cont_176_11,(void *)Always_187_12,(void *)Cont_211_13,(void *)Cont_212_14,(void *)Always_215_15,(void *)Always_226_16,(void *)Cont_242_17,(void *)Always_245_18,(void *)Always_256_19};
	xsi_register_didat("work_m_00000000000527473838_3596322464", "isim/proj_5_Memory_Interface_tb_isim_beh.exe.sim/work/m_00000000000527473838_3596322464.didat");
	xsi_register_executes(pe);
}
