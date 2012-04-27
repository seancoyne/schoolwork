VERSION 5.00
Begin VB.Form frmHelp 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Quiz System Instructor Help"
   ClientHeight    =   7140
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   10470
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   7140
   ScaleWidth      =   10470
   StartUpPosition =   2  'CenterScreen
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Label1"
      Height          =   195
      Left            =   600
      TabIndex        =   0
      Top             =   360
      Width           =   480
   End
End
Attribute VB_Name = "frmHelp"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_Load()
    Label1.Caption = "The following are the available customizations: " & vbNewLine & vbNewLine & _
                     "1. Add Questions" & vbNewLine & _
                     "2. Delete Questions" & vbNewLine & _
                     "3. Add User" & vbNewLine & _
                     "4. Change Valid Login Times" & vbNewLine & _
                     "5. View Results" & vbNewLine & _
                     vbNewLine & _
                     "1. To add a question, click the Add Question button on the instructor's menu.  This will take you to a new " & vbNewLine & _
                     "screen with a large text field.  Enter your new question in this field, following the format in the " & vbNewLine & _
                     "example question. Next, click the Add button to add your question to the current list.  Click cancel or " & vbNewLine & _
                     "close the window to return to the instructor' menu." & _
                     vbNewLine & vbNewLine & _
                     "2. To delete a question, click the Delete Question button on the instructor's menu to open the Delete question " & vbNewLine & _
                     "dialog box.  Select the question you would like to delete, then click the Delete button. Click cancel or " & vbNewLine & _
                     "close the window to return to the instructor's menu." & _
                     vbNewLine & vbNewLine & _
                     "3. To add a user, click the Add User button on the instructor's menu. The add user window will open showing the " & vbNewLine & _
                     "current users.  Type a new Username and Password into the text fields and click the add button. The new users " & vbNewLine & _
                     "will appear in the list. Click cancel or close the window to return to the instructor's menu. " & _
                     vbNewLine & vbNewLine & _
                     "4. To change login times, click the Change... button in the instructor's menu.  The change dialog will appear." & vbNewLine & _
                     "The current times will appear near the top.  Change them by typing the new times, following the format shown, and click Change." & _
                     vbNewLine & vbNewLine & _
                     "5. To view the results of a students quiz, click the View Results button.  The dialog window will appear, choose the results file" & vbNewLine & _
                     "you would like to view and click open.  Notepad will open and you will see the contents of the file."
End Sub
