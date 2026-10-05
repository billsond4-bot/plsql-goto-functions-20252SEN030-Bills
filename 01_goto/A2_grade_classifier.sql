DECLARE
  grade CHAR := 'B';
  message VARCHAR2(100);
BEGIN
  CASE
    WHEN grade = 'A' THEN message := 'Excellent work!';
    WHEN grade = 'B' THEN message := 'Good job';
    WHEN grade = 'C' THEN message := 'Fair performance.';
    WHEN grade = 'D' THEN message := 'Needs improvement.';
    WHEN grade = 'F' THEN message := 'Failed. Please try again.';
    ELSE message := 'Invalid grade entered.';
  END CASE;
  DBMS_OUTPUT.PUT_LINE('Message: ' || message);
END;
/
