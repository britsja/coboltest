       IDENTIFICATION DIVISION.
       PROGRAM-ID. TestScreen.
       AUTHOR. Jan B.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 DummyInput      PIC X(1) VALUE SPACES. *> To capture user key press.

       SCREEN SECTION.
       01 TestScreen.
           05 Line1 PIC X(40) VALUE "SCREEN SECTION TEST" LINE 5 COLUMN 20.
           05 Line2 PIC X(40) VALUE "Press Enter to exit." LINE 7 COLUMN 20.

       PROCEDURE DIVISION.
       Main.
           DISPLAY TestScreen.
           ACCEPT DummyInput. *> Wait for user to press any key.
           STOP RUN.

