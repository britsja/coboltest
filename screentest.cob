       IDENTIFICATION DIVISION.
       PROGRAM-ID. ScreenTest.
       AUTHOR. Jan B.
       DATE-WRITTEN. 02 December 2024.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 UserName       PIC X(30) VALUE SPACES.
       01 DummyInput     PIC X(1) VALUE SPACES.

       PROCEDURE DIVISION.
           *> Display the welcome screen
           DISPLAY "                                         " 
               UPON CONSOLE.
           DISPLAY "                 Welcome to Screen Test "
               UPON CONSOLE.
           DISPLAY "================================================" 
               UPON CONSOLE.
           DISPLAY "                 Enter your name: " 
               WITH NO ADVANCING.
           ACCEPT UserName.

           *> Handle empty input
           IF UserName = SPACES
               MOVE "Stranger" TO UserName
           END-IF.

           *> Clear the screen before displaying the next screen
           DISPLAY SPACES UPON CONSOLE.
           DISPLAY "                                         "
               UPON CONSOLE.
           DISPLAY "Hello, " 
               WITH NO ADVANCING.
           DISPLAY UserName.

           *> End the program with a pause
           DISPLAY "Press Enter to exit.".
           ACCEPT DummyInput.

           STOP RUN.
