FUNCTION ZFM_FIRST.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     REFERENCE(P_NUM) TYPE  NUMC3
*"  EXPORTING
*"     REFERENCE(P_FACT) TYPE  NUMC4
*"  EXCEPTIONS
*"      ZERO
*"----------------------------------------------------------------------
*This is the function module for the factorial program (File name in GitHub : z_factorial.prog.abap)
DATA lv_num(2) TYPE N.
P_FACT = 1.
lv_num = P_NUM.
IF P_NUM = 0.
  RAISE ZERO.
ENDIF.
WHILE lv_num > 0.
  P_FACT = P_FACT * lv_num.
  lv_num = lv_num - 1.
ENDWHILE.
ENDFUNCTION.
