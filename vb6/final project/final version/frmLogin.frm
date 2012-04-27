VERSION 5.00
Begin VB.Form frmLogin 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Quiz System Login"
   ClientHeight    =   1545
   ClientLeft      =   2835
   ClientTop       =   3480
   ClientWidth     =   3750
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   912.837
   ScaleMode       =   0  'User
   ScaleWidth      =   3521.047
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox txtUserName 
      Height          =   345
      Left            =   1290
      TabIndex        =   0
      Top             =   135
      Width           =   2325
   End
   Begin VB.CommandButton cmdOK 
      Caption         =   "OK"
      Default         =   -1  'True
      Height          =   390
      Left            =   1305
      TabIndex        =   3
      Top             =   1020
      Width           =   1140
   End
   Begin VB.TextBox txtPassword 
      Height          =   345
      IMEMode         =   3  'DISABLE
      Left            =   1290
      PasswordChar    =   "*"
      TabIndex        =   1
      Top             =   525
      Width           =   2325
   End
   Begin VB.Label lblLabels 
      Caption         =   "&User Name:"
      Height          =   270
      Index           =   0
      Left            =   105
      TabIndex        =   2
      Top             =   150
      Width           =   1080
   End
   Begin VB.Label lblLabels 
      Caption         =   "&Password:"
      Height          =   270
      Index           =   1
      Left            =   105
      TabIndex        =   4
      Top             =   540
      Width           =   1080
   End
End
Attribute VB_Name = "frmLogin"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim users(1000) As String
Dim password(1000) As String
Dim index As Integer
Dim validTimeStart As String
Dim validTimeEnd As String
Dim currentTime As String
Dim key As Integer
Dim temp As String
Dim KeyNumber(1024) As Integer

Private Sub cmdOK_Click()
    currentTime = Time
    If TimeValue(currentTime) >= TimeValue(validTimeStart) And TimeValue(currentTime) <= TimeValue(validTimeEnd) Or txtUserName.Text = "instructor" Then
        'read in users and pw
        numUsers = 0
        j = 0
        Open "encrypted users.txt" For Input As #9
            Input #9, key
            Do While Not EOF(9)
                Line Input #9, users(j)
                Line Input #9, password(j)
            
            Call BuildKey(key, KeyNumber, Len(users(j)))
            Call UnTransform(KeyNumber, users(j))
            Call BuildKey(key, KeyNumber, Len(password(j)))
            Call UnTransform(KeyNumber, password(j))

            j = j + 1
            Loop
        Close #9
        'look for user
        For i = 0 To (j - 1)
            If users(i) = txtUserName.Text Then
                index = i
            End If
        Next
        'check for correct password
        If txtPassword = password(index) Then
            If txtUserName.Text = "instructor" Then
                Load frmInstructor
                frmInstructor.Show
                Unload Me
            Else
                'check if quiz already taken
                If Dir(txtUserName.Text & "Results.txt", vbReadOnly + vbHidden) = txtUserName.Text & "Results.txt" Then
                    'quiz has been taken
                    MsgBox "You have already completed the quiz.", vbCritical, "Quiz System Login"
                    txtUserName.Text = ""
                    txtPassword.Text = ""
                Else
                    'quiz not yet taken
                    frmQuiz.Label2.Caption = txtUserName.Text
                    Load frmQuiz
                    frmQuiz.Show
                    frmQuiz.Label2.Caption = txtUserName.Text
                    Unload Me
                End If
            End If
        Else
            txtUserName.Text = ""
            txtPassword.Text = ""
            MsgBox "Invalid Username or Password", vbCritical, "Quiz System Login"
        End If
    Else
        MsgBox "Not a valid time to login. Try again during the proper time, " & TimeValue(validTimeStart) & " - " & TimeValue(validTimeEnd)
    End If
End Sub

Private Sub Form_Load()
    Open "time.txt" For Input As #8
        Line Input #8, validTimeStart
        Line Input #8, validTimeEnd
    Close #8
End Sub
Private Sub UnTransform(KeyNumber() As Integer, Text As String)
' Our decryption routine is this. We decrypt by doing the exact opposite
' of our encryption, working backward rather than forward.

For a = (Len(Text) - 1) To 1 Step -1
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
