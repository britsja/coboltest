        IDENTIFICATION DIVISION. 
        PROGRAM-ID. JanApp.
        AUTHOR. JAN B.
        DATE-WRITTEN. 02 DECEMBER 2024
       
        ENVIRONMENT DIVISION.
        
        DATA DIVISION.
        WORKING-STORAGE SECTION. 
        01 UserChoice    PIC 9 VALUE 0.
        01 ScreenLine    PIC X(80) VALUE SPACES.
        01 MenuTitle     PIC X(20) VALUE "JanApp".
        01 MenuOption1   PIC X(30) VALUE "1. Create New Order".
        01 MenuOption2   PIC X(30) VALUE "2. Edit Order".
        01 MenuOption3   PIC X(30) VALUE "3. Create Customer".
        01 MenuOption4   PIC X(30) VALUE "4. Edit Customer".
        01 MenuOption5   PIC X(30) VALUE "5. Reports".
        01 ExitOption    PIC X(30) VALUE "0. Exit".
           
        PROCEDURE DIVISION.
            PERFORM InizializeScreen
            PERFORM DisplayMenu
            PERFORM ProcessChoice
            STOP RUN.

        InizializeScreen.
            DISPLAY SPACES UPON CONSOLE. *> Clear the Screen
            DISPLAY " " UPON CONSOLE. *> Skip to next line
           
        DisplayMenu.
           MOVE ALL SPACES TO ScreenLine.
           MOVE "JanApp" TO ScreenLine(72:6).
           DISPLAY ScreenLine

      *> Display Menu Options
           DISPLAY " ======================================= ".
           DISPLAY "|              MAIN MENU                |".
           DISPLAY " ======================================= ".
           DISPLAY MenuOption1.
           DISPLAY MenuOption2.
           DISPLAY MenuOption3.
           DISPLAY MenuOption4.
           DISPLAY MenuOption5.
           DISPLAY ExitOption.
           DISPLAY " ======================================= ".
           DISPLAY "Enter your choice: " WITH NO ADVANCING.
           ACCEPT UserChoice.

        ProcessChoice.
           EVALUATE UserChoice
               WHEN 1
                   DISPLAY "Option 1 Selected: Create New Order."
               WHEN 2
                   DISPLAY "Option 2 Selected: Edit Order."
               WHEN 3
                   DISPLAY "Option 3 Selected: Create Customer."
               WHEN 4
                   DISPLAY "Option 4 Selected: Edit Customer."
               WHEN 5
                   DISPLAY "Option 5 Selected: Reports."
               WHEN 0
                   DISPLAY "Exiting JanApp. Goodbye!"
               WHEN OTHER
                   DISPLAY "Invalid choice! Please try again."
                   PERFORM DisplayMenu
           END-EVALUATE.  

      *> Return to menu unless exit is selected
           IF UserChoice NOT = 0
             PERFORM DisplayMenu
             PERFORM ProcessChoice
           END-IF.

        END PROGRAM JanApp.
      
