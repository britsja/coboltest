       IDENTIFICATION DIVISION.
       PROGRAM-ID. ScreenTest.
       AUTHOR. Jan B.
       DATE-WRITTEN. 02 December 2024.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 UserName       PIC X(30) VALUE SPACES.
       01 DummyInput     PIC X(1) VALUE SPACES.

       SCREEN SECTION.
       01 WelcomeScreen.
           05 BlankLine       PIC X(80) VALUE SPACES
               LINE 1 COLUMN 1.
           05 AppTitle        PIC X(40)
               VALUE "Welcome to Screen Test"
               LINE 2 COLUMN 20.
           05 LineSeparator   PIC X(80)
               VALUE "========================================"
               LINE 3 COLUMN 1.
           05 Prompt          PIC X(40)
               VALUE "Enter your name: "
               LINE 5 COLUMN 20.
           05 PromptReply      PIC X(30)
               LINE 5 COLUMN 40.

       01 GreetingScreen.
           05 BlankLine2      PIC X(80) VALUE SPACES
               LINE 1 COLUMN 1.
           05 GreetingText    PIC X(50)
               VALUE "Hello, "
               LINE 3 COLUMN 20.
           05 NameDisplay     PIC X(30)
               LINE 3 COLUMN 30.

       PROCEDURE DIVISION.
           *> Display the welcome screen and accept user input
           DISPLAY WelcomeScreen.
           DISPLAY "Should wait for user input now" AT LINE 30 COLUMN
           20.
           ACCEPT PromptReply OF WelcomeScreen.
           DISPLAY "User input taken" AT LINE 31 COLUMN 20.

           *> Move the input to the WORKING-STORAGE variable
           IF PromptReply OF WelcomeScreen = SPACES
               MOVE "Stranger" TO UserName
           ELSE
               MOVE PromptReply OF WelcomeScreen TO UserName
           END-IF.

           *> Clear the screen before displaying the next screen
           DISPLAY SPACES UPON CONSOLE. *> Clear the terminal.

           *> Display the greeting screen
           MOVE UserName TO NameDisplay OF GreetingScreen.
           DISPLAY GreetingScreen.

           *> End the program with a pause
           DISPLAY "Press Enter to exit." AT LINE 10 COLUMN 20.
           ACCEPT DummyInput. *> Wait for a key press before exiting.

           STOP RUN.

         

    
