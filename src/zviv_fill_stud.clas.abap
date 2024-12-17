CLASS zviv_fill_stud DEFINITION PUBLIC FINAL CREATE PUBLIC .
  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zviv_fill_stud IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    " Declare a table to hold data for zviv_t_students
    DATA: lt_students TYPE TABLE OF zviv_t_students,
          ls_student  TYPE zviv_t_students.

    " Fill data into the internal table
    ls_student-client = sy-mandt.
    ls_student-sid    = 1.
    ls_student-email  = 'john.doe@example.com'.
    ls_student-fname  = 'John'.
    ls_student-lname  = 'Doe'.
    ls_student-age    = 22.
    ls_student-gndr   = 'Male'.
    APPEND ls_student TO lt_students.

    ls_student-sid    = 2.
    ls_student-email  = 'jane.smith@example.com'.
    ls_student-fname  = 'Jane'.
    ls_student-lname  = 'Smith'.
    ls_student-age    = 21.
    ls_student-gndr   = 'Female'.
    APPEND ls_student TO lt_students.

    ls_student-sid    = 3.
    ls_student-email  = 'sam.wilson@example.com'.
    ls_student-fname  = 'Sam'.
    ls_student-lname  = 'Wilson'.
    ls_student-age    = 23.
    ls_student-gndr   = 'Male'.
    APPEND ls_student TO lt_students.

    " Insert data into the database table
    INSERT zviv_t_students FROM TABLE @lt_students.

    " Check if the data was inserted successfully
    IF sy-subrc = 0.
      out->write( |Data inserted successfully into zviv_t_students.| ).
    ELSE.
      out->write( |Error inserting data into zviv_t_students. SY-SUBRC: { sy-subrc }| ).
    ENDIF.
  ENDMETHOD..
ENDCLASS.
