CREATE OR REPLACE FUNCTION fn_calculate_tax(p_income NUMBER)
RETURN NUMBER IS
  v_tax NUMBER := 0;
BEGIN
  IF p_income IS NULL OR p_income < 0 THEN
    RAISE_APPLICATION_ERROR(-20001, 'Income must be zero or positive');
  END IF;

  IF p_income <= 60000 THEN
    v_tax := 0;
  ELSIF p_income <= 100000 THEN
    v_tax := (p_income - 60000) * 0.20;
  ELSE
    v_tax := (40000 * 0.20) + (p_income - 100000) * 0.30;
  END IF;
  RETURN v_tax;
END;
/
