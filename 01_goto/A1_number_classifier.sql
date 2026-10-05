DECLARE
  v_num NUMBER := 7;
BEGIN
  IF v_num > 0 THEN GOTO positive;
  ELSIF v_num < 0 THEN GOTO negative;
  ELSE GOTO zero;
  END IF;

  <<positive>>
  DBMS_OUTPUT.PUT_LINE(v_num || ' is positive');
  GOTO parity;

  <<negative>>
  DBMS_OUTPUT.PUT_LINE(v_num || ' is negative');
  GOTO parity;

  <<zero>>
  DBMS_OUTPUT.PUT_LINE('Number is zero');
  GOTO done;

  <<parity>>
  IF MOD(v_num, 2) = 0 THEN
    DBMS_OUTPUT.PUT_LINE('It is even');
  ELSE
    DBMS_OUTPUT.PUT_LINE('It is odd');
  END IF;

  <<done>>
  NULL;
END;
/
