       IDENTIFICATION DIVISION.
       PROGRAM-ID. ScreenTest.
       AUTHOR. Jan B.
       DATE-WRITTEN. 02 December 2024.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 UserName       PIC X(30) VALUE SPACES.
       01 InputField     PIC X(30) VALUE SPACES. *> Declared for program logic.

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
           05 WSInputField      PIC X(30)
               LINE 5 COLUMN 40. *> Ambiguity source resolved by qualifying.

       01 GreetingScreen.
           05 BlankLine2      PIC X(80) VALUE SPACES
               LINE 1 COLUMN 1.
           05 GreetingText    PIC X(50)
               VALUE "Hello, "
               LINE 3 COLUMN 20.
           05 NameDisplay     PIC X(30)
               LINE 3 COLUMN 30.

       PROCEDURE DIVISION.
       MainSection.
           *> Display the welcome screen and accept user input
           DISPLAY WelcomeScreen.
           ACCEPT WSInputField OF WelcomeScreen. *> Qualify InputField.

           *> Move the input to the WORKING-STORAGE variable
           MOVE WSInputField OF WelcomeScreen TO InputField.

           *> Validate user input and display greeting
           IF InputField = SPACES
               MOVE "Stranger" TO UserName
           ELSE
               MOVE InputField TO UserName
           END-IF.

           *> Display the greeting screen
           MOVE "Hello, " TO GreetingText.
           MOVE UserName TO NameDisplay.
           DISPLAY GreetingScreen.

           *> End the program
           DISPLAY "Press Enter to exit." AT LINE 10 COLUMN 20.
           ACCEPT BlankLine.

           STOP RUN.

 

