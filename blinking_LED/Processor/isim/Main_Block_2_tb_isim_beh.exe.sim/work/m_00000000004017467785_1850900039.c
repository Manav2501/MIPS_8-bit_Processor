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
static const char *ng0 = "D:/Study/SEM_3/Computer Organisation(project)/Processor/RB_Block.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};



static void Cont_42_0(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;

LAB0:    t1 = (t0 + 4928U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1048U);
    t4 = *((char **)t2);
    memset(t3, 0, 8);
    t2 = (t3 + 4);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 9);
    *((unsigned int *)t3) = t7;
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 9);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t10 & 31U);
    t11 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t11 & 31U);
    t12 = (t0 + 6648);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memset(t16, 0, 8);
    t17 = 31U;
    t18 = t17;
    t19 = (t3 + 4);
    t20 = *((unsigned int *)t3);
    t17 = (t17 & t20);
    t21 = *((unsigned int *)t19);
    t18 = (t18 & t21);
    t22 = (t16 + 4);
    t23 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t23 | t17);
    t24 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t24 | t18);
    xsi_driver_vfirst_trans(t12, 0, 4);
    t25 = (t0 + 6488);
    *((int *)t25) = 1;

LAB1:    return;
}

static void Cont_43_1(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;

LAB0:    t1 = (t0 + 5176U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1048U);
    t4 = *((char **)t2);
    memset(t3, 0, 8);
    t2 = (t3 + 4);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 4);
    *((unsigned int *)t3) = t7;
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 4);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t10 & 31U);
    t11 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t11 & 31U);
    t12 = (t0 + 6712);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memset(t16, 0, 8);
    t17 = 31U;
    t18 = t17;
    t19 = (t3 + 4);
    t20 = *((unsigned int *)t3);
    t17 = (t17 & t20);
    t21 = *((unsigned int *)t19);
    t18 = (t18 & t21);
    t22 = (t16 + 4);
    t23 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t23 | t17);
    t24 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t24 | t18);
    xsi_driver_vfirst_trans(t12, 0, 4);
    t25 = (t0 + 6504);
    *((int *)t25) = 1;

LAB1:    return;
}

static void Always_46_2(char *t0)
{
    char t7[8];
    char t16[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t17;
    int t18;
    unsigned int t19;
    int t20;
    int t21;
    unsigned int t22;
    unsigned int t23;
    int t24;
    int t25;

LAB0:    t1 = (t0 + 5424U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 6520);
    *((int *)t2) = 1;
    t3 = (t0 + 5456);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(47, ng0);

LAB5:    xsi_set_current_line(48, ng0);
    t4 = (t0 + 3688);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = (t0 + 3688);
    t9 = (t8 + 72U);
    t10 = *((char **)t9);
    t11 = (t0 + 3688);
    t12 = (t11 + 64U);
    t13 = *((char **)t12);
    t14 = (t0 + 3128U);
    t15 = *((char **)t14);
    xsi_vlog_generic_get_array_select_value(t7, 8, t6, t10, t13, 2, 1, t15, 5, 2);
    t14 = (t0 + 3848);
    xsi_vlogvar_wait_assign_value(t14, t7, 0, 0, 8, 0LL);
    xsi_set_current_line(49, ng0);
    t2 = (t0 + 3688);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3688);
    t6 = (t5 + 72U);
    t8 = *((char **)t6);
    t9 = (t0 + 3688);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t12 = (t0 + 3288U);
    t13 = *((char **)t12);
    xsi_vlog_generic_get_array_select_value(t7, 8, t4, t8, t11, 2, 1, t13, 5, 2);
    t12 = (t0 + 4008);
    xsi_vlogvar_wait_assign_value(t12, t7, 0, 0, 8, 0LL);
    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t0 + 3688);
    t4 = (t0 + 3688);
    t5 = (t4 + 72U);
    t6 = *((char **)t5);
    t8 = (t0 + 3688);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = (t0 + 1848U);
    t12 = *((char **)t11);
    xsi_vlog_generic_convert_array_indices(t7, t16, t6, t10, 2, 1, t12, 5, 2);
    t11 = (t7 + 4);
    t17 = *((unsigned int *)t11);
    t18 = (!(t17));
    t13 = (t16 + 4);
    t19 = *((unsigned int *)t13);
    t20 = (!(t19));
    t21 = (t18 && t20);
    if (t21 == 1)
        goto LAB6;

LAB7:    goto LAB2;

LAB6:    t22 = *((unsigned int *)t7);
    t23 = *((unsigned int *)t16);
    t24 = (t22 - t23);
    t25 = (t24 + 1);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, *((unsigned int *)t16), t25, 0LL);
    goto LAB7;

}

static void Cont_54_3(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t40[8];
    char t41[8];
    char t44[8];
    char t77[8];
    char t78[8];
    char t80[8];
    char *t1;
    char *t2;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
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
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t42;
    char *t43;
    char *t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;
    char *t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    char *t66;
    char *t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    char *t71;
    char *t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    char *t79;
    char *t81;
    char *t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    char *t95;
    char *t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    char *t102;
    char *t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    char *t107;
    char *t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    char *t113;
    char *t114;
    char *t115;
    char *t116;
    char *t117;
    unsigned int t118;
    unsigned int t119;
    char *t120;
    unsigned int t121;
    unsigned int t122;
    char *t123;
    unsigned int t124;
    unsigned int t125;
    char *t126;

LAB0:    t1 = (t0 + 5672U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 2008U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t2 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB7;

LAB4:    if (t18 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t6) = 1;

LAB7:    memset(t4, 0, 8);
    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t22) != 0)
        goto LAB10;

LAB11:    t29 = (t4 + 4);
    t30 = *((unsigned int *)t4);
    t31 = *((unsigned int *)t29);
    t32 = (t30 || t31);
    if (t32 > 0)
        goto LAB12;

LAB13:    t36 = *((unsigned int *)t4);
    t37 = (~(t36));
    t38 = *((unsigned int *)t29);
    t39 = (t37 || t38);
    if (t39 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t29) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t40, 8);

LAB20:    t107 = (t0 + 6776);
    t114 = (t107 + 56U);
    t115 = *((char **)t114);
    t116 = (t115 + 56U);
    t117 = *((char **)t116);
    memset(t117, 0, 8);
    t118 = 255U;
    t119 = t118;
    t120 = (t3 + 4);
    t121 = *((unsigned int *)t3);
    t118 = (t118 & t121);
    t122 = *((unsigned int *)t120);
    t119 = (t119 & t122);
    t123 = (t117 + 4);
    t124 = *((unsigned int *)t117);
    *((unsigned int *)t117) = (t124 | t118);
    t125 = *((unsigned int *)t123);
    *((unsigned int *)t123) = (t125 | t119);
    xsi_driver_vfirst_trans(t107, 0, 7);
    t126 = (t0 + 6536);
    *((int *)t126) = 1;

LAB1:    return;
LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t28 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB11;

LAB12:    t33 = (t0 + 3848);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    goto LAB13;

LAB14:    t42 = (t0 + 2008U);
    t43 = *((char **)t42);
    t42 = ((char*)((ng2)));
    memset(t44, 0, 8);
    t45 = (t43 + 4);
    t46 = (t42 + 4);
    t47 = *((unsigned int *)t43);
    t48 = *((unsigned int *)t42);
    t49 = (t47 ^ t48);
    t50 = *((unsigned int *)t45);
    t51 = *((unsigned int *)t46);
    t52 = (t50 ^ t51);
    t53 = (t49 | t52);
    t54 = *((unsigned int *)t45);
    t55 = *((unsigned int *)t46);
    t56 = (t54 | t55);
    t57 = (~(t56));
    t58 = (t53 & t57);
    if (t58 != 0)
        goto LAB24;

LAB21:    if (t56 != 0)
        goto LAB23;

LAB22:    *((unsigned int *)t44) = 1;

LAB24:    memset(t41, 0, 8);
    t60 = (t44 + 4);
    t61 = *((unsigned int *)t60);
    t62 = (~(t61));
    t63 = *((unsigned int *)t44);
    t64 = (t63 & t62);
    t65 = (t64 & 1U);
    if (t65 != 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t60) != 0)
        goto LAB27;

LAB28:    t67 = (t41 + 4);
    t68 = *((unsigned int *)t41);
    t69 = *((unsigned int *)t67);
    t70 = (t68 || t69);
    if (t70 > 0)
        goto LAB29;

LAB30:    t73 = *((unsigned int *)t41);
    t74 = (~(t73));
    t75 = *((unsigned int *)t67);
    t76 = (t74 || t75);
    if (t76 > 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t67) > 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t41) > 0)
        goto LAB35;

LAB36:    memcpy(t40, t77, 8);

LAB37:    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 8, t35, 8, t40, 8);
    goto LAB20;

LAB18:    memcpy(t3, t35, 8);
    goto LAB20;

LAB23:    t59 = (t44 + 4);
    *((unsigned int *)t44) = 1;
    *((unsigned int *)t59) = 1;
    goto LAB24;

LAB25:    *((unsigned int *)t41) = 1;
    goto LAB28;

LAB27:    t66 = (t41 + 4);
    *((unsigned int *)t41) = 1;
    *((unsigned int *)t66) = 1;
    goto LAB28;

LAB29:    t71 = (t0 + 1208U);
    t72 = *((char **)t71);
    goto LAB30;

LAB31:    t71 = (t0 + 2008U);
    t79 = *((char **)t71);
    t71 = ((char*)((ng3)));
    memset(t80, 0, 8);
    t81 = (t79 + 4);
    t82 = (t71 + 4);
    t83 = *((unsigned int *)t79);
    t84 = *((unsigned int *)t71);
    t85 = (t83 ^ t84);
    t86 = *((unsigned int *)t81);
    t87 = *((unsigned int *)t82);
    t88 = (t86 ^ t87);
    t89 = (t85 | t88);
    t90 = *((unsigned int *)t81);
    t91 = *((unsigned int *)t82);
    t92 = (t90 | t91);
    t93 = (~(t92));
    t94 = (t89 & t93);
    if (t94 != 0)
        goto LAB41;

LAB38:    if (t92 != 0)
        goto LAB40;

LAB39:    *((unsigned int *)t80) = 1;

LAB41:    memset(t78, 0, 8);
    t96 = (t80 + 4);
    t97 = *((unsigned int *)t96);
    t98 = (~(t97));
    t99 = *((unsigned int *)t80);
    t100 = (t99 & t98);
    t101 = (t100 & 1U);
    if (t101 != 0)
        goto LAB42;

LAB43:    if (*((unsigned int *)t96) != 0)
        goto LAB44;

LAB45:    t103 = (t78 + 4);
    t104 = *((unsigned int *)t78);
    t105 = *((unsigned int *)t103);
    t106 = (t104 || t105);
    if (t106 > 0)
        goto LAB46;

LAB47:    t109 = *((unsigned int *)t78);
    t110 = (~(t109));
    t111 = *((unsigned int *)t103);
    t112 = (t110 || t111);
    if (t112 > 0)
        goto LAB48;

LAB49:    if (*((unsigned int *)t103) > 0)
        goto LAB50;

LAB51:    if (*((unsigned int *)t78) > 0)
        goto LAB52;

LAB53:    memcpy(t77, t113, 8);

LAB54:    goto LAB32;

LAB33:    xsi_vlog_unsigned_bit_combine(t40, 8, t72, 8, t77, 8);
    goto LAB37;

LAB35:    memcpy(t40, t72, 8);
    goto LAB37;

LAB40:    t95 = (t80 + 4);
    *((unsigned int *)t80) = 1;
    *((unsigned int *)t95) = 1;
    goto LAB41;

LAB42:    *((unsigned int *)t78) = 1;
    goto LAB45;

LAB44:    t102 = (t78 + 4);
    *((unsigned int *)t78) = 1;
    *((unsigned int *)t102) = 1;
    goto LAB45;

LAB46:    t107 = (t0 + 1368U);
    t108 = *((char **)t107);
    goto LAB47;

LAB48:    t107 = (t0 + 1528U);
    t113 = *((char **)t107);
    goto LAB49;

LAB50:    xsi_vlog_unsigned_bit_combine(t77, 8, t108, 8, t113, 8);
    goto LAB54;

LAB52:    memcpy(t77, t108, 8);
    goto LAB54;

}

static void Cont_60_4(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t40[8];
    char t41[8];
    char t44[8];
    char t77[8];
    char t78[8];
    char t80[8];
    char *t1;
    char *t2;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
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
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t42;
    char *t43;
    char *t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;
    char *t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    char *t66;
    char *t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    char *t71;
    char *t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    char *t79;
    char *t81;
    char *t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    char *t95;
    char *t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    char *t102;
    char *t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    char *t107;
    char *t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    char *t113;
    char *t114;
    char *t115;
    char *t116;
    char *t117;
    unsigned int t118;
    unsigned int t119;
    char *t120;
    unsigned int t121;
    unsigned int t122;
    char *t123;
    unsigned int t124;
    unsigned int t125;
    char *t126;

LAB0:    t1 = (t0 + 5920U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 2168U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t2 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB7;

LAB4:    if (t18 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t6) = 1;

LAB7:    memset(t4, 0, 8);
    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t22) != 0)
        goto LAB10;

LAB11:    t29 = (t4 + 4);
    t30 = *((unsigned int *)t4);
    t31 = *((unsigned int *)t29);
    t32 = (t30 || t31);
    if (t32 > 0)
        goto LAB12;

LAB13:    t36 = *((unsigned int *)t4);
    t37 = (~(t36));
    t38 = *((unsigned int *)t29);
    t39 = (t37 || t38);
    if (t39 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t29) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t40, 8);

LAB20:    t107 = (t0 + 6840);
    t114 = (t107 + 56U);
    t115 = *((char **)t114);
    t116 = (t115 + 56U);
    t117 = *((char **)t116);
    memset(t117, 0, 8);
    t118 = 255U;
    t119 = t118;
    t120 = (t3 + 4);
    t121 = *((unsigned int *)t3);
    t118 = (t118 & t121);
    t122 = *((unsigned int *)t120);
    t119 = (t119 & t122);
    t123 = (t117 + 4);
    t124 = *((unsigned int *)t117);
    *((unsigned int *)t117) = (t124 | t118);
    t125 = *((unsigned int *)t123);
    *((unsigned int *)t123) = (t125 | t119);
    xsi_driver_vfirst_trans(t107, 0, 7);
    t126 = (t0 + 6552);
    *((int *)t126) = 1;

LAB1:    return;
LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t28 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB11;

LAB12:    t33 = (t0 + 4008);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    goto LAB13;

LAB14:    t42 = (t0 + 2168U);
    t43 = *((char **)t42);
    t42 = ((char*)((ng2)));
    memset(t44, 0, 8);
    t45 = (t43 + 4);
    t46 = (t42 + 4);
    t47 = *((unsigned int *)t43);
    t48 = *((unsigned int *)t42);
    t49 = (t47 ^ t48);
    t50 = *((unsigned int *)t45);
    t51 = *((unsigned int *)t46);
    t52 = (t50 ^ t51);
    t53 = (t49 | t52);
    t54 = *((unsigned int *)t45);
    t55 = *((unsigned int *)t46);
    t56 = (t54 | t55);
    t57 = (~(t56));
    t58 = (t53 & t57);
    if (t58 != 0)
        goto LAB24;

LAB21:    if (t56 != 0)
        goto LAB23;

LAB22:    *((unsigned int *)t44) = 1;

LAB24:    memset(t41, 0, 8);
    t60 = (t44 + 4);
    t61 = *((unsigned int *)t60);
    t62 = (~(t61));
    t63 = *((unsigned int *)t44);
    t64 = (t63 & t62);
    t65 = (t64 & 1U);
    if (t65 != 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t60) != 0)
        goto LAB27;

LAB28:    t67 = (t41 + 4);
    t68 = *((unsigned int *)t41);
    t69 = *((unsigned int *)t67);
    t70 = (t68 || t69);
    if (t70 > 0)
        goto LAB29;

LAB30:    t73 = *((unsigned int *)t41);
    t74 = (~(t73));
    t75 = *((unsigned int *)t67);
    t76 = (t74 || t75);
    if (t76 > 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t67) > 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t41) > 0)
        goto LAB35;

LAB36:    memcpy(t40, t77, 8);

LAB37:    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 8, t35, 8, t40, 8);
    goto LAB20;

LAB18:    memcpy(t3, t35, 8);
    goto LAB20;

LAB23:    t59 = (t44 + 4);
    *((unsigned int *)t44) = 1;
    *((unsigned int *)t59) = 1;
    goto LAB24;

LAB25:    *((unsigned int *)t41) = 1;
    goto LAB28;

LAB27:    t66 = (t41 + 4);
    *((unsigned int *)t41) = 1;
    *((unsigned int *)t66) = 1;
    goto LAB28;

LAB29:    t71 = (t0 + 1208U);
    t72 = *((char **)t71);
    goto LAB30;

LAB31:    t71 = (t0 + 2168U);
    t79 = *((char **)t71);
    t71 = ((char*)((ng3)));
    memset(t80, 0, 8);
    t81 = (t79 + 4);
    t82 = (t71 + 4);
    t83 = *((unsigned int *)t79);
    t84 = *((unsigned int *)t71);
    t85 = (t83 ^ t84);
    t86 = *((unsigned int *)t81);
    t87 = *((unsigned int *)t82);
    t88 = (t86 ^ t87);
    t89 = (t85 | t88);
    t90 = *((unsigned int *)t81);
    t91 = *((unsigned int *)t82);
    t92 = (t90 | t91);
    t93 = (~(t92));
    t94 = (t89 & t93);
    if (t94 != 0)
        goto LAB41;

LAB38:    if (t92 != 0)
        goto LAB40;

LAB39:    *((unsigned int *)t80) = 1;

LAB41:    memset(t78, 0, 8);
    t96 = (t80 + 4);
    t97 = *((unsigned int *)t96);
    t98 = (~(t97));
    t99 = *((unsigned int *)t80);
    t100 = (t99 & t98);
    t101 = (t100 & 1U);
    if (t101 != 0)
        goto LAB42;

LAB43:    if (*((unsigned int *)t96) != 0)
        goto LAB44;

LAB45:    t103 = (t78 + 4);
    t104 = *((unsigned int *)t78);
    t105 = *((unsigned int *)t103);
    t106 = (t104 || t105);
    if (t106 > 0)
        goto LAB46;

LAB47:    t109 = *((unsigned int *)t78);
    t110 = (~(t109));
    t111 = *((unsigned int *)t103);
    t112 = (t110 || t111);
    if (t112 > 0)
        goto LAB48;

LAB49:    if (*((unsigned int *)t103) > 0)
        goto LAB50;

LAB51:    if (*((unsigned int *)t78) > 0)
        goto LAB52;

LAB53:    memcpy(t77, t113, 8);

LAB54:    goto LAB32;

LAB33:    xsi_vlog_unsigned_bit_combine(t40, 8, t72, 8, t77, 8);
    goto LAB37;

LAB35:    memcpy(t40, t72, 8);
    goto LAB37;

LAB40:    t95 = (t80 + 4);
    *((unsigned int *)t80) = 1;
    *((unsigned int *)t95) = 1;
    goto LAB41;

LAB42:    *((unsigned int *)t78) = 1;
    goto LAB45;

LAB44:    t102 = (t78 + 4);
    *((unsigned int *)t78) = 1;
    *((unsigned int *)t102) = 1;
    goto LAB45;

LAB46:    t107 = (t0 + 1368U);
    t108 = *((char **)t107);
    goto LAB47;

LAB48:    t107 = (t0 + 1528U);
    t113 = *((char **)t107);
    goto LAB49;

LAB50:    xsi_vlog_unsigned_bit_combine(t77, 8, t108, 8, t113, 8);
    goto LAB54;

LAB52:    memcpy(t77, t108, 8);
    goto LAB54;

}

static void Cont_65_5(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char *t1;
    char *t2;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
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
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    unsigned int t44;
    unsigned int t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    char *t49;
    unsigned int t50;
    unsigned int t51;
    char *t52;

LAB0:    t1 = (t0 + 6168U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 2328U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t2 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB7;

LAB4:    if (t18 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t6) = 1;

LAB7:    memset(t4, 0, 8);
    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t22) != 0)
        goto LAB10;

LAB11:    t29 = (t4 + 4);
    t30 = *((unsigned int *)t4);
    t31 = *((unsigned int *)t29);
    t32 = (t30 || t31);
    if (t32 > 0)
        goto LAB12;

LAB13:    t35 = *((unsigned int *)t4);
    t36 = (~(t35));
    t37 = *((unsigned int *)t29);
    t38 = (t36 || t37);
    if (t38 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t29) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t39, 8);

LAB20:    t33 = (t0 + 6904);
    t40 = (t33 + 56U);
    t41 = *((char **)t40);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    memset(t43, 0, 8);
    t44 = 255U;
    t45 = t44;
    t46 = (t3 + 4);
    t47 = *((unsigned int *)t3);
    t44 = (t44 & t47);
    t48 = *((unsigned int *)t46);
    t45 = (t45 & t48);
    t49 = (t43 + 4);
    t50 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t50 | t44);
    t51 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t51 | t45);
    xsi_driver_vfirst_trans(t33, 0, 7);
    t52 = (t0 + 6568);
    *((int *)t52) = 1;

LAB1:    return;
LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t28 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB11;

LAB12:    t33 = (t0 + 2968U);
    t34 = *((char **)t33);
    goto LAB13;

LAB14:    t33 = (t0 + 1688U);
    t39 = *((char **)t33);
    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 8, t34, 8, t39, 8);
    goto LAB20;

LAB18:    memcpy(t3, t34, 8);
    goto LAB20;

}


extern void work_m_00000000004017467785_1850900039_init()
{
	static char *pe[] = {(void *)Cont_42_0,(void *)Cont_43_1,(void *)Always_46_2,(void *)Cont_54_3,(void *)Cont_60_4,(void *)Cont_65_5};
	xsi_register_didat("work_m_00000000004017467785_1850900039", "isim/Main_Block_2_tb_isim_beh.exe.sim/work/m_00000000004017467785_1850900039.didat");
	xsi_register_executes(pe);
}
