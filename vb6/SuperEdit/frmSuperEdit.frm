VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form frmSuperEdit 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Nickel4242's SuperEdit"
   ClientHeight    =   11400
   ClientLeft      =   5235
   ClientTop       =   3825
   ClientWidth     =   12015
   Icon            =   "frmSuperEdit.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   11400
   ScaleWidth      =   12015
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox Text1 
      Height          =   10695
      Left            =   120
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   0
      Top             =   480
      Width           =   11775
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   10080
      Top             =   1680
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
      Flags           =   1
   End
   Begin VB.Menu mnuFile 
      Caption         =   "&File"
      Begin VB.Menu mnuNew 
         Caption         =   "&New"
         Shortcut        =   ^N
      End
      Begin VB.Menu mnuOpen 
         Caption         =   "&Open"
         Shortcut        =   ^O
      End
      Begin VB.Menu mnuSave 
         Caption         =   "&Save"
         Shortcut        =   ^S
      End
      Begin VB.Menu mnuClose 
         Caption         =   "&Close"
      End
      Begin VB.Menu mnuExit 
         Caption         =   "&Exit"
         Shortcut        =   ^X
      End
   End
   Begin VB.Menu mnuEdit 
      Caption         =   "&Edit"
      Begin VB.Menu mnuFont 
         Caption         =   "&Font"
      End
   End
   Begin VB.Menu mnuTools 
      Caption         =   "&Tools"
      Begin VB.Menu mnuCompileC 
         Caption         =   "&Compile C++ Program"
      End
   End
End
Attribute VB_Name = "frmSuperEdit"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Nickel4242's SuperEdit
'Text Editor for Windows
'Version 0.20
'Last Updated 02-25-02
'This Program is realeased under the GNU General Public Licence


Private Sub mnuClose_Click()
On Error GoTo ErrHandler1
    If Text1.Text <> "" Then
        choice = MsgBox("Save Current?", vbYesNoCancel, "Nickel4242's SuperEdit")
        If choice = vbYes Then
            mnuSave_Click
        ElseIf choice = vbCancel Then
            GoTo ErrHandler1
        End If
    End If
    Text1.Text = ""
ErrHandler1:
End Sub

Private Sub mnuCompileC_Click()
    MsgBox "This function does not capture output, so you will not know of any warnings or errors in your code.  It uses the MS Visual C++ compiler which must be in the windows PATH", vbInformation, "Nickel4242's SuperEdit"
    If Text1.Text <> "" Then
        mnuSave_Click
    Else
        CommonDialog1.FileName = ""
        CommonDialog1.ShowOpen
    End If
    If CommonDialog1.FileName <> "" Then
        CommandToRun = "cl.exe " & CommonDialog1.FileName
        Shell CommandToRun, vbNormalFocus
    End If
End Sub

Private Sub mnuExit_Click()
    End
End Sub

Private Sub mnuFont_Click()
CommonDialog1.ShowFont
Text1.FontName = CommonDialog1.FontName
Text1.FontBold = CommonDialog1.FontBold
Text1.FontItalic = CommonDialog1.FontItalic
Text1.FontSize = CommonDialog1.FontSize
Text1.FontStrikethru = CommonDialog1.FontStrikethru
Text1.FontUnderline = CommonDialog1.FontUnderline
End Sub

Private Sub mnuNew_Click()
On Error GoTo ErrHandler2
    If Text1.Text <> "" Then
       choice = MsgBox("Save Current?", vbYesNoCancel, "Nickel4242's SuperEdit")
        If choice = vbYes Then
            mnuSave_Click
        ElseIf choice = vbNo Then
            Text1.Text = ""
        End If
    End If
ErrHandler2:
End Sub

Private Sub mnuOpen_Click()
On Error GoTo ErrHandler3
    If Text1.Text <> "" Then
        choice = MsgBox("Save Current?", vbYesNoCancel, "Nickel4242's SuperEdit")
        If choice = vbYes Then
            mnuSave_Click
        ElseIf choice = vbCancel Then
            GoTo ErrHandler3
        End If
    End If
    CommonDialog1.ShowOpen
    strName = CommonDialog1.FileName
    Open strName For Input As #1
    strFile = ""
    Do Until EOF(1)
        Line Input #1, strTemp
        strFile = strFile & strTemp & vbCrLf
    Loop
    Text1.Text = strFile
    Close #1

ErrHandler3:
End Sub

Private Sub mnuSave_Click()
On Error GoTo ErrHandler4
    CommonDialog1.ShowSave
    filenamedesired = CommonDialog1.FileName
    Open filenamedesired For Output As #1
    Print #1, Text1.Text
    Close #1
ErrHandler4:
End Sub

