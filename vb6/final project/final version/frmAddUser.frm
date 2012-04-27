VERSION 5.00
Begin VB.Form frmAddUser 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Add New User"
   ClientHeight    =   3195
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   2  'CenterScreen
   Begin VB.ListBox lstPass 
      Height          =   1425
      ItemData        =   "frmAddUser.frx":0000
      Left            =   2393
      List            =   "frmAddUser.frx":0002
      TabIndex        =   7
      TabStop         =   0   'False
      Top             =   480
      Width           =   1455
   End
   Begin VB.ListBox lstUsers 
      Height          =   1425
      ItemData        =   "frmAddUser.frx":0004
      Left            =   833
      List            =   "frmAddUser.frx":0006
      TabIndex        =   6
      TabStop         =   0   'False
      Top             =   480
      Width           =   1455
   End
   Begin VB.CommandButton cmdCancel 
      Caption         =   "Cancel"
      Height          =   495
      Left            =   2483
      TabIndex        =   3
      Top             =   2520
      Width           =   975
   End
   Begin VB.CommandButton cmdAddNew 
      Caption         =   "Add User"
      Height          =   495
      Left            =   1193
      TabIndex        =   2
      Top             =   2520
      Width           =   975
   End
   Begin VB.TextBox txtUserName 
      Height          =   285
      Left            =   836
      TabIndex        =   0
      Text            =   "Username"
      Top             =   2145
      Width           =   1455
   End
   Begin VB.TextBox txtPassword 
      Height          =   285
      Left            =   2389
      TabIndex        =   1
      Text            =   "Password"
      Top             =   2145
      Width           =   1455
   End
   Begin VB.Label lblusers 
      Alignment       =   2  'Center
      Caption         =   "Users"
      Height          =   255
      Left            =   946
      TabIndex        =   5
      Top             =   120
      Width           =   1215
   End
   Begin VB.Label lblpass 
      Alignment       =   2  'Center
      Caption         =   "Passwords"
      Height          =   255
      Left            =   2266
      TabIndex        =   4
      Top             =   120
      Width           =   1335
   End
End
Attribute VB_Name = "frmAddUser"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim user(1000) As String
Dim pwds(1000) As String
Dim index As Integer
Dim key As Integer
Dim temp As String
Dim KeyNumber(1024) As Integer
Dim username As String
Dim password As String

Private Sub Form_Load()
    'read in users and pw
    numUsers = 0
    j = 0
    Open "encrypted users.txt" For Input As #5
        Input #5, key
        Do While Not EOF(5)
            Line Input #5, user(j)
            Line Input #5, pwds(j)
        
            Call BuildKey(key, KeyNumber, Len(user(j)))
            Call UnTransform(KeyNumber, user(j))
            Call BuildKey(key, KeyNumber, Len(pwds(j)))
            Call UnTransform(KeyNumber, pwds(j))
            
            j = j + 1
        Loop
    Close #5
    For index = 0 To (j - 1)
        lstUsers.List(index) = user(index)
        lstPass.List(index) = pwds(index)
    Next

End Sub

Private Sub cmdAddNew_Click()
    If txtUserName.Text = "" Or txtPassword.Text = "" Then
        MsgBox "Please supply the username and password to add", vbCritical, "Quiz System"
    Else
        'encrypt
        username = txtUserName.Text
        password = txtPassword.Text
        
        Call BuildKey(key, KeyNumber, Len(username))
        Call Transform(KeyNumber, username)
        Call BuildKey(key, KeyNumber, Len(password))
        Call Transform(KeyNumber, password)
        
        Open "encrypted users.txt" For Append As #5
            Print #5, username
            Print #5, password
        Close #5
        lstUsers.List(index) = txtUserName.Text
        lstPass.List(index) = txtPassword.Text
        index = index + 1
        txtUserName.Text = ""
        txtPassword.Text = ""
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

For i = 1 To (Len(Text) - 1)
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

For a = (Len(Text) - 1) To 1 Step -1
    h = KeyNumber(a)
    temp = Mid(Text, h, 1)
    Mid(Text, h, 1) = Mid(Text, a, 1)
    Mid(Text, a, 1) = temp
Next a

End Sub

