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
static const char *ng0 = "D:/College T6/Computer Architecture/CPU/SingleCycleMips_Mohammed_Komsany_18102754/ALU_Control_LB3_Mohammed_Komsany_18102754.vhd";



static void work_a_0251892051_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(43, ng0);

LAB3:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = (5 - 3);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 3336);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast(t6);

LAB2:    t11 = (t0 + 3240);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0251892051_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned char t18;
    unsigned int t19;

LAB0:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5884);
    t4 = xsi_mem_cmp(t1, t2, 2U);
    if (t4 == 1)
        goto LAB3;

LAB7:    t5 = (t0 + 5886);
    t7 = xsi_mem_cmp(t5, t2, 2U);
    if (t7 == 1)
        goto LAB4;

LAB8:    t8 = (t0 + 5888);
    t10 = xsi_mem_cmp(t8, t2, 2U);
    if (t10 == 1)
        goto LAB5;

LAB9:
LAB6:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 5938);
    t18 = 1;
    if (4U == 4U)
        goto LAB55;

LAB56:    t18 = 0;

LAB57:    if (t18 != 0)
        goto LAB52;

LAB54:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 5946);
    t18 = 1;
    if (4U == 4U)
        goto LAB63;

LAB64:    t18 = 0;

LAB65:    if (t18 != 0)
        goto LAB61;

LAB62:
LAB53:
LAB2:    t1 = (t0 + 3256);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(50, ng0);
    t11 = (t0 + 5890);
    t13 = (t0 + 3400);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t11, 4U);
    xsi_driver_first_trans_fast_port(t13);
    goto LAB2;

LAB4:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 5894);
    t3 = (t0 + 3400);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB5:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 5898);
    t18 = 1;
    if (4U == 4U)
        goto LAB14;

LAB15:    t18 = 0;

LAB16:    if (t18 != 0)
        goto LAB11;

LAB13:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 5906);
    t18 = 1;
    if (4U == 4U)
        goto LAB22;

LAB23:    t18 = 0;

LAB24:    if (t18 != 0)
        goto LAB20;

LAB21:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 5914);
    t18 = 1;
    if (4U == 4U)
        goto LAB30;

LAB31:    t18 = 0;

LAB32:    if (t18 != 0)
        goto LAB28;

LAB29:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 5922);
    t18 = 1;
    if (4U == 4U)
        goto LAB38;

LAB39:    t18 = 0;

LAB40:    if (t18 != 0)
        goto LAB36;

LAB37:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 5930);
    t18 = 1;
    if (4U == 4U)
        goto LAB46;

LAB47:    t18 = 0;

LAB48:    if (t18 != 0)
        goto LAB44;

LAB45:
LAB12:    goto LAB2;

LAB10:;
LAB11:    xsi_set_current_line(58, ng0);
    t8 = (t0 + 5902);
    t11 = (t0 + 3400);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t8, 4U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB12;

LAB14:    t19 = 0;

LAB17:    if (t19 < 4U)
        goto LAB18;
    else
        goto LAB16;

LAB18:    t5 = (t2 + t19);
    t6 = (t1 + t19);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB15;

LAB19:    t19 = (t19 + 1);
    goto LAB17;

LAB20:    xsi_set_current_line(60, ng0);
    t8 = (t0 + 5910);
    t11 = (t0 + 3400);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t8, 4U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB12;

LAB22:    t19 = 0;

LAB25:    if (t19 < 4U)
        goto LAB26;
    else
        goto LAB24;

LAB26:    t5 = (t2 + t19);
    t6 = (t1 + t19);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB23;

LAB27:    t19 = (t19 + 1);
    goto LAB25;

LAB28:    xsi_set_current_line(62, ng0);
    t8 = (t0 + 5918);
    t11 = (t0 + 3400);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t8, 4U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB12;

LAB30:    t19 = 0;

LAB33:    if (t19 < 4U)
        goto LAB34;
    else
        goto LAB32;

LAB34:    t5 = (t2 + t19);
    t6 = (t1 + t19);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB31;

LAB35:    t19 = (t19 + 1);
    goto LAB33;

LAB36:    xsi_set_current_line(64, ng0);
    t8 = (t0 + 5926);
    t11 = (t0 + 3400);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t8, 4U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB12;

LAB38:    t19 = 0;

LAB41:    if (t19 < 4U)
        goto LAB42;
    else
        goto LAB40;

LAB42:    t5 = (t2 + t19);
    t6 = (t1 + t19);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB39;

LAB43:    t19 = (t19 + 1);
    goto LAB41;

LAB44:    xsi_set_current_line(66, ng0);
    t8 = (t0 + 5934);
    t11 = (t0 + 3400);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t8, 4U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB12;

LAB46:    t19 = 0;

LAB49:    if (t19 < 4U)
        goto LAB50;
    else
        goto LAB48;

LAB50:    t5 = (t2 + t19);
    t6 = (t1 + t19);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB47;

LAB51:    t19 = (t19 + 1);
    goto LAB49;

LAB52:    xsi_set_current_line(72, ng0);
    t8 = (t0 + 5942);
    t11 = (t0 + 3400);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t8, 4U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB53;

LAB55:    t19 = 0;

LAB58:    if (t19 < 4U)
        goto LAB59;
    else
        goto LAB57;

LAB59:    t5 = (t2 + t19);
    t6 = (t1 + t19);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB56;

LAB60:    t19 = (t19 + 1);
    goto LAB58;

LAB61:    xsi_set_current_line(74, ng0);
    t8 = (t0 + 5950);
    t11 = (t0 + 3400);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t8, 4U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB53;

LAB63:    t19 = 0;

LAB66:    if (t19 < 4U)
        goto LAB67;
    else
        goto LAB65;

LAB67:    t5 = (t2 + t19);
    t6 = (t1 + t19);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB64;

LAB68:    t19 = (t19 + 1);
    goto LAB66;

}


extern void work_a_0251892051_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0251892051_3212880686_p_0,(void *)work_a_0251892051_3212880686_p_1};
	xsi_register_didat("work_a_0251892051_3212880686", "isim/MIPS_Mohammed_Komsany_18102754_isim_beh.exe.sim/work/a_0251892051_3212880686.didat");
	xsi_register_executes(pe);
}
