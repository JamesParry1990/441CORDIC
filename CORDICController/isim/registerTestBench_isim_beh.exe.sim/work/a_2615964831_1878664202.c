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

/* This file is designed for use with ISim build 0x2f00eba5 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/jdparry/Documents/441git/CORDICController/Register.vhd";



static void work_a_2615964831_1878664202_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;

LAB0:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 960U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB5;

LAB6:    t1 = (t0 + 868U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB7;

LAB8:
LAB3:    t1 = (t0 + 2368);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(63, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t5 = t1;
    memset(t5, (unsigned char)2, 32U);
    t6 = (t0 + 2412);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_delta(t6, 0U, 32U, 0LL);
    xsi_set_current_line(64, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t2 = t1;
    memset(t2, (unsigned char)2, 32U);
    t5 = (t0 + 2412);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_delta(t5, 32U, 32U, 0LL);
    xsi_set_current_line(65, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t2 = t1;
    memset(t2, (unsigned char)2, 32U);
    t5 = (t0 + 2412);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_delta(t5, 64U, 32U, 0LL);
    goto LAB3;

LAB5:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 592U);
    t5 = *((char **)t1);
    t1 = (t0 + 2412);
    t6 = (t1 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 32U);
    xsi_driver_first_trans_delta(t1, 0U, 32U, 0LL);
    xsi_set_current_line(70, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t1 = (t0 + 2412);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 32U);
    xsi_driver_first_trans_delta(t1, 32U, 32U, 0LL);
    xsi_set_current_line(71, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t1 = (t0 + 2412);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 32U);
    xsi_driver_first_trans_delta(t1, 64U, 32U, 0LL);
    goto LAB3;

LAB7:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 1512U);
    t5 = *((char **)t1);
    t11 = (0 - 0);
    t12 = (t11 * 1);
    t13 = (32U * t12);
    t14 = (0 + t13);
    t1 = (t5 + t14);
    t6 = (t0 + 2448);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t11 = (1 - 0);
    t12 = (t11 * 1);
    t13 = (32U * t12);
    t14 = (0 + t13);
    t1 = (t2 + t14);
    t5 = (t0 + 2484);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(76, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t11 = (2 - 0);
    t12 = (t11 * 1);
    t13 = (32U * t12);
    t14 = (0 + t13);
    t1 = (t2 + t14);
    t5 = (t0 + 2520);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB3;

}


extern void work_a_2615964831_1878664202_init()
{
	static char *pe[] = {(void *)work_a_2615964831_1878664202_p_0};
	xsi_register_didat("work_a_2615964831_1878664202", "isim/registerTestBench_isim_beh.exe.sim/work/a_2615964831_1878664202.didat");
	xsi_register_executes(pe);
}
