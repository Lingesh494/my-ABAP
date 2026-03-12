*&---------------------------------------------------------------------*
*& Report Z_FACTORIAL
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
*This is the program for factorial
REPORT z_factorial.
DATA lv_output TYPE numc4.

PARAMETERS : p_input TYPE numc3 OBLIGATORY.
CALL FUNCTION 'ZFM_FIRST'
  EXPORTING
    p_num         = p_input
 IMPORTING
   P_FACT        = lv_output
* EXCEPTIONS
*   ZERO          = 1
*   OTHERS        = 2
          .
IF sy-subrc <> 0.
* Implement suitable error handling here
ENDIF.



START-OF-SELECTION.
WRITE : 'The factorial of the number ',p_input,'is ',lv_output.
