        IDENTIFICATION DIVISION. 
        PROGRAM-ID. coboltest.
        AUTHOR. Jan B.
        DATE-WRITTEN. 29 November 2024
        ENVIRONMENT DIVISION.

        DATA DIVISION.
        FILE SECTION.
        WORKING-STORAGE SECTION.
        01 UserName PIC X(30) VALUE "You".
        01 Num1 PIC 9 VALUE ZEROS.
        01 Num2 PIC 9 VALUE ZEROS.
        01 Total PIC 99 VALUE 0.
        01 SSNum.
           02 SSArea PIC 999.
           02 SSGroup PIC 99.
           02 SSSerial PIC 9999.
        01 PIValue CONSTANT AS 3.14.
        *> ZERO, ZEROES
        *> SPACE, SPACES
        *> HIGH-VALUES
        *> LOW-VALUES
        PROCEDURE DIVISION.

        DISPLAY "What is your name: " WITH NO advancing
        *> Show text on same line
        ACCEPT UserName
        DISPLAY "Hello " UserName
       
        MOVE ZERO TO UserName
        display UserName
        display "Enter 2 values to sum: "
        accept Num1
        accept Num2
        compute Total = Num1 + Num2
        display Num1 " + " Num2 " = " Total
        display "Enter your SSN: "
        accept SSNum
        display "Area " SSArea

        STOP RUN.
