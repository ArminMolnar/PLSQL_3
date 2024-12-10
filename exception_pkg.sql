CREATE OR REPLACE PACKAGE exception_pkg IS

  parameter_cannot_be_null_exc EXCEPTION;
  PRAGMA EXCEPTION_INIT(parameter_cannot_be_null_exc, 20101);
  
  parent_not_found_exc EXCEPTION;
  PRAGMA EXCEPTION_INIT(parent_not_found_exc, 20102);


END exception_pkg;
