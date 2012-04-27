VERSION 5.00
Begin VB.Form frmQuiz 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Quiz"
   ClientHeight    =   4380
   ClientLeft      =   5040
   ClientTop       =   3855
   ClientWidth     =   6615
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   4380
   ScaleWidth      =   6615
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdBegin 
      Caption         =   "Begin"
      Height          =   495
      Left            =   2760
      TabIndex        =   9
      TabStop         =   0   'False
      Top             =   1920
      Width           =   1095
   End
   Begin VB.CommandButton cmdClear 
      Caption         =   "&Clear"
      Height          =   375
      Left            =   3720
      TabIndex        =   5
      Top             =   3840
      Visible         =   0   'False
      Width           =   975
   End
   Begin VB.CommandButton cmdOK 
      Caption         =   "&OK"
      Height          =   375
      Left            =   1920
      TabIndex        =   4
      Top             =   3840
      Visible         =   0   'False
      Width           =   975
   End
   Begin VB.Frame fraAnswers 
      Height          =   1575
      Left            =   1920
      TabIndex        =   7
      Top             =   2040
      Visible         =   0   'False
      Width           =   2775
      Begin VB.OptionButton optAnswer 
         Caption         =   "Answer 4"
         Height          =   255
         Index           =   3
         Left            =   1440
         TabIndex        =   3
         Top             =   840
         Width           =   975
      End
      Begin VB.OptionButton optAnswer 
         Caption         =   "Answer 3"
         Height          =   255
         Index           =   2
         Left            =   1440
         TabIndex        =   1
         Top             =   360
         Width           =   975
      End
      Begin VB.OptionButton optAnswer 
         Caption         =   "Answer 2"
         Height          =   255
         Index           =   1
         Left            =   240
         TabIndex        =   2
         Top             =   840
         Width           =   975
      End
      Begin VB.OptionButton optAnswer 
         Caption         =   "Answer 1"
         Height          =   255
         Index           =   0
         Left            =   240
         TabIndex        =   0
         Top             =   360
         Width           =   975
      End
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Caption         =   "Username"
      Height          =   375
      Left            =   1740
      TabIndex        =   11
      Top             =   1080
      Width           =   3135
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "Welcome to the Quiz"
      Height          =   495
      Left            =   2400
      TabIndex        =   10
      Top             =   720
      Width           =   1815
   End
   Begin VB.Label lblType 
      Alignment       =   2  'Center
      Caption         =   "Type of Question"
      Height          =   255
      Left            =   2460
      TabIndex        =   8
      Top             =   240
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.Label lblQuestion 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Question"
      Height          =   975
      Left            =   360
      TabIndex        =   6
      Top             =   840
      Visible         =   0   'False
      Width           =   5895
   End
End
Attribute VB_Name = "frmQuiz"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim question$(1 To 10)
Dim allQues$(0 To 1000)
Dim correctAns$(1 To 10)
Dim StudentAns$(1 To 10)
Dim QuesType$(1 To 10)
Dim currentQues As Integer
Dim key As Integer
Dim temp As String
Dim KeyNumber(1024) As Integer

Private Sub cmdClear_Click()
    For i = 0 To 3
        optAnswer(i).Value = False
    Next
End Sub

Private Sub cmdOK_Click()
    'check to be sure and answer was selected
    If optAnswer(0).Value = False And optAnswer(1).Value = False And optAnswer(2).Value = False And optAnswer(3).Value = False Then
        MsgBox "Please choose an answer.", vbOKOnly, "Quiz"
    Else
        'log question and answer to file and also correct answer
        'get username and create file for each user

        Open frmQuiz.Label2.Caption & "Results.txt" For Append As #2
                Print #2, question$(currentQues)
                Print #2, correctAns(currentQues)
                Print #2, StudentAns(currentQues)
                If StudentAns(currentQues) = correctAns(currentQues) Then
                    Print #2, "Correct"
                Else
                    Print #2, "Incorrect"
                End If
            Close #2
                
        'go to next question
        If currentQues < 10 Then
            currentQues = currentQues + 1
            showQuestion currentQues
        Else
            'write time done with test
            Open frmQuiz.Label2.Caption & "Results.txt" For Append As #5
                Print #5, Now
            Close #5
            'call display results
            display_results
            'call reset program function
            reset_program
        End If
    End If

End Sub
Public Sub reset_program()
    'set up proram for next user
    Load frmLogin
    frmLogin.Show
    Unload Me
End Sub
Public Sub display_results()
    Dim ques(10) As String
    Dim corrAns(10) As String
    Dim studAns(10) As String
    Dim outcome(10) As String
    Dim numcorrect As Integer
    
    Open frmQuiz.Label2.Caption & "Results.txt" For Input As #3
        'read in data
        For i = 0 To 9
            Line Input #3, ques(i)
            Input #3, corrAns(i)
            Input #3, studAns(i)
            Input #3, outcome(i)
        Next
    Close #3
    For i = 0 To 9
        If outcome(i) = "Correct" Then
            numcorrect = numcorrect + 1
        End If
    Next
    MsgBox "You got " & numcorrect & " out of 10 for a score of " & (numcorrect / 10) * 100 & "%", vbInformation, "Quiz"
    'write score to end of file
    Open frmQuiz.Label2.Caption & "Results.txt" For Append As #4
        Print #4, numcorrect
        Print #4, (numcorrect / 10) * 100
    Close #4
    SetAttr frmQuiz.Label2.Caption & "Results.txt", vbHidden + vbReadOnly
    Shell "notepad.exe " & frmQuiz.Label2.Caption & "Results.txt", vbNormalFocus
    
End Sub
Private Sub Form_Load()
    Label2.Caption = frmQuiz.Label2.Caption
'read in questions into an array
    Open "encrypted questions.txt" For Input As #1
    j = 0
    Input #1, key
    Do While Not EOF(1)
        
        Line Input #1, allQues$(j)
        
        Call BuildKey(key, KeyNumber, Len(allQues$(j)))
        Call UnTransform(KeyNumber, allQues$(j))
        
        j = j + 1
    Loop
    Close #1
    
    'choose 10 random questions
    Randomize
    For i = 1 To 10
        x = Int(j * Rnd + 0)
        'read in question
        question$(i) = Mid(allQues$(x), 1, (Len(allQues$(x)) - 6))
        'get correct answer
        correctAns$(i) = Mid(allQues$(x), (Len(allQues$(x))), 1)
        'determine question type
        If correctAns$(i) = "T" Or correctAns$(i) = "F" Then
            QuesType$(i) = "TF"
        Else
            QuesType$(i) = "MC"
        End If
    Next i
End Sub

Private Sub cmdBegin_Click()
    Label1.Visible = False
    Label2.Visible = False
    cmdBegin.Visible = False
    'display first question
    currentQues = 1
    showQuestion (currentQues)
End Sub
Private Sub showQuestion(num As Integer)
    lblQuestion.Caption = question$(num)
    lblQuestion.Visible = True
    If QuesType$(num) = "TF" Then
        optAnswer(0).Caption = "T"
        optAnswer(1).Caption = "F"
        optAnswer(0).Visible = True
        optAnswer(1).Visible = True
        optAnswer(2).Visible = False
        optAnswer(3).Visible = False
        For i = 0 To 3
            optAnswer(i).Value = False
        Next
        lblType.Caption = QuesType(1)
        lblType.Visible = True
        cmdOK.Visible = True
        cmdClear.Visible = True
        fraAnswers.Visible = True
    Else
        optAnswer(0).Caption = "A"
        optAnswer(1).Caption = "B"
        optAnswer(2).Caption = "C"
        optAnswer(3).Caption = "D"
        optAnswer(0).Visible = True
        optAnswer(1).Visible = True
        optAnswer(2).Visible = True
        optAnswer(3).Visible = True
        For i = 0 To 3
            optAnswer(i).Value = False
        Next
        lblType.Caption = QuesType(1)
        lblType.Visible = True
        cmdOK.Visible = True
        cmdClear.Visible = True
        fraAnswers.Visible = True
    End If
End Sub

Private Sub optAnswer_Click(index As Integer)
StudentAns(currentQues) = optAnswer(index).Caption
End Sub
Private Sub UnTransform(KeyNumber() As Integer, Text As String)
' Our decryption routine is this. We decrypt by doing the exact opposite
' of our encryption, working backward rather than forward.

For a = Len(Text) To 1 Step -1
    h = KeyNumber(a)
    temp = Mid(Text, h, 1)
    Mid(Text, h, 1) = Mid(Text, a, 1)
    Mid(Text, a, 1) = temp
Next a

End Sub
Private Sub BuildKey(key As Integer, KeyNumber() As Integer, KeyLength As Integer)

' First see the random number generator with our Key, to allow consistant results:
' calling Rnd(-1) will ensure that our number sequence is repeatable!
Rnd (-1)
Randomize key

' Next initialize KeyNumber() to known values from 1 to the length of the array
For a = 1 To KeyLength
    KeyNumber(a) = a
Next a

For a = 1 To KeyLength
    h = Rnd * KeyLength
    temp2 = KeyNumber(a)
    KeyNumber(a) = KeyNumber(h)
    KeyNumber(h) = temp2
Next a

' Done, go home Jack!

End Sub
