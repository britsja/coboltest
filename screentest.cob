IDENTIFICATION DIVISION.
 PROGRAM-ID. ScreenTest.
AUTHOR. Jan B.
DATE-WRITTEN. 02 December 2024.
ENVIRONMENT DIVISION.
DATA DIVISION.
WORKING-STORAGE SECTION.
01 UserName PIC X(30) VALUE SPACES.
SCREEN SECTION.
01 WelcomeScreen.
    05 BlankLine PIC X(80) VALUE SPACES
        LINE 1 COLUMN 1.
    05 AppTitle PIC X(40)
        VALUE "Welcome to Screen Test"
        LINE 2 COLUMN 20.
    05 LineSeparator PIC X(80)
        VALUE "========================================"
        LINE 3 COLUMN 1.
    05 Prompt PIC X(40)
        VALUE "Enter your name: "
        LINE 5 COLUMN 20.
    05 InputField PIC X(30)
        LINE 5 COLUMN 40.
01 GreetingScreen.
    05 BlankLine2 PIC X(80) VALUE SPACES
        LINE 1 COLUMN 1.
    05 GreetingText PIC X(50)
        VALUE "Hello, "
        LINE 3 COLUMN 20.
    05 NameDisplay PIC X(30)
        LINE 3 COLUMN 30.
PROCEDURE DIVISION.
MainSection.
    DISPLAY WelcomeScreen
    ACCEPT InputField
    
    IF InputField = SPACES
        MOVE "Stranger" TO UserName
    ELSE
        MOVE InputField TO UserName
    END-IF
    
    MOVE UserName TO NameDisplay
    DISPLAY GreetingScreen
    
    DISPLAY "Press Enter to exit." AT LINE 11 COLUMN 20
    ACCEPT BlankLine
    STOP RUN.
    