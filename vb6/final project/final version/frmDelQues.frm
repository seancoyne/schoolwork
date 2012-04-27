VERSION 5.00
Begin VB.Form frmDelQues 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Delete A Question"
   ClientHeight    =   4965
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   6990
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   4965
   ScaleWidth      =   6990
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdDelete 
      Caption         =   "Delete"
      Height          =   495
      Left            =   2344
      TabIndex        =   1
      Top             =   4200
      Width           =   1095
   End
   Begin VB.ListBox lstQuestions 
      Height          =   3765
      ItemData        =   "frmDelQues.frx":0000
      Left            =   120
      List            =   "frmDelQues.frx":0002
      TabIndex        =   0
      Top             =   120
      Width           =   6735
   End
   Begin VB.CommandButton cmdCancel 
      Caption         =   "Cancel"
      Height          =   495
      Left            =   3552
      TabIndex        =   2
      Top             =   4200
      Width           =   1095
   End
End
Attribute VB_Name = "frmDelQues"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim questions(1000) As String
Dim index As Integer
Dim key As Integer
Dim temp As String
Dim KeyNumber(1024) As Integer
Private Sub Form_Load()
    'read in all questions
    index = 0
    Open "encrypted questions.txt" For Input As #1
        Input #1, key
        Do While Not EOF(1)
            Line Input #1, questions(index)
            
            Call BuildKey(key, KeyNumber, Len(questions(index)))
            Call UnTransform(KeyNumber, questions(index))
            
            index = index + 1
        Loop
    Close #1
    For j = 0 To (index - 1)
        lstQuestions.List(j) = j + 1 & ". " & questions(j)
    Next
End Sub

Private Sub cmdDelete_Click()
    Dim result As VbMsgBoxResult
    result = MsgBox("Are you sure you want to delete this question?", vbOKCancel, "Delete A Question")
    If result = vbOK Then
          For j = lstQuestions.ListIndex To (index - 1)
            lstQuestions.List(j) = lstQuestions.List(j + 1)
            questions(j) = questions(j + 1)
          Next
          'write questions to file
          Open "encrypted questions.txt" For Input As #1
              Input #1, key
          Close #1
          Open "encrypted questions.txt" For Output As #2
              Print #2, key
              For a = 0 To (index - 2)
                    Call BuildKey(key, KeyNumber, Len(questions(a)))
                    Call Transform(KeyNumber, questions(a))
                    Print #2, questions(a)
              Next
          Close #2
    End If
End Sub

Private Sub cmdCancel_Click()
    frmInstructor.Show
    Unload Me
End Sub

Private Sub Form_Unload(Cancel As Integer)
    frmInstructor.Show
End Sub
Private Sub Transform(KeyNumber() As Integer, Text As String)
    ' Our encryption routine is this:
    
    For i = 1 To Len(Text)
        j = KeyNumber(i)
        temp = Mid(Text, i, 1)
        Mid(Text, i, 1) = Mid(Text, j, 1)
        Mid(Text, j, 1) = temp
    Next i
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
