VERSION 5.00
Begin VB.Form frmAddQues 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Add New Question"
   ClientHeight    =   3450
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5265
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   3450
   ScaleWidth      =   5265
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox txtToAdd 
      Height          =   1095
      Left            =   210
      MultiLine       =   -1  'True
      TabIndex        =   0
      Top             =   1440
      Width           =   4845
   End
   Begin VB.CommandButton cmdAdd 
      Caption         =   "Add Question"
      Height          =   495
      Left            =   1545
      TabIndex        =   1
      Top             =   2760
      Width           =   975
   End
   Begin VB.CommandButton cmdCancel 
      Caption         =   "Cancel"
      Height          =   495
      Left            =   2745
      TabIndex        =   2
      Top             =   2760
      Width           =   975
   End
   Begin VB.Label Label2 
      Caption         =   $"frmAddQues.frx":0000
      Height          =   975
      Left            =   210
      TabIndex        =   3
      Top             =   240
      Width           =   4845
   End
End
Attribute VB_Name = "frmAddQues"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim key As Integer
Dim temp As String
Dim temp2 As String
Dim KeyNumber(1024) As Integer
Dim questext As String

Private Sub cmdAdd_Click()
    Open "encrypted questions.txt" For Input As #1
        Input #1, key
    Close #1
    If txtToAdd.Text = "" Then
        MsgBox "Please provide the question to add", vbCritical, "Quiz System"
    Else
        questext = txtToAdd.Text
        Open "encrypted questions.txt" For Append As #7
            'encrypt
            Call BuildKey(key, KeyNumber, Len(questext))
            Call Transform(KeyNumber, questext)
            Print #7, questext
        Close #7
        txtToAdd.Text = ""
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

