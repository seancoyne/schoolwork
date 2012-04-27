VERSION 5.00
Begin VB.Form frmMain 
   Caption         =   "Class Attendance"
   ClientHeight    =   5685
   ClientLeft      =   165
   ClientTop       =   855
   ClientWidth     =   8835
   LinkTopic       =   "Form1"
   ScaleHeight     =   5685
   ScaleWidth      =   8835
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass24"
      Enabled         =   0   'False
      Height          =   735
      Index           =   23
      Left            =   5280
      TabIndex        =   24
      Top             =   3840
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass23"
      Enabled         =   0   'False
      Height          =   735
      Index           =   22
      Left            =   3600
      TabIndex        =   23
      Top             =   3840
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass21"
      Enabled         =   0   'False
      Height          =   735
      Index           =   20
      Left            =   240
      TabIndex        =   21
      Top             =   3840
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass17"
      Enabled         =   0   'False
      Height          =   735
      Index           =   16
      Left            =   1920
      TabIndex        =   17
      Top             =   3000
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass16"
      Enabled         =   0   'False
      Height          =   735
      Index           =   15
      Left            =   240
      TabIndex        =   16
      Top             =   3000
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass15"
      Enabled         =   0   'False
      Height          =   735
      Index           =   14
      Left            =   6960
      TabIndex        =   15
      Top             =   2160
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass14"
      Height          =   735
      Index           =   13
      Left            =   5280
      TabIndex        =   14
      Top             =   2160
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass13"
      Enabled         =   0   'False
      Height          =   735
      Index           =   12
      Left            =   3600
      TabIndex        =   13
      Top             =   2160
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass11"
      Enabled         =   0   'False
      Height          =   735
      Index           =   10
      Left            =   240
      TabIndex        =   11
      Top             =   2160
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass10"
      Enabled         =   0   'False
      Height          =   735
      Index           =   9
      Left            =   6960
      TabIndex        =   10
      Top             =   1320
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass09"
      Enabled         =   0   'False
      Height          =   735
      Index           =   8
      Left            =   5280
      TabIndex        =   9
      Top             =   1320
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass08"
      Height          =   735
      Index           =   7
      Left            =   3600
      TabIndex        =   8
      Top             =   1320
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass07"
      Enabled         =   0   'False
      Height          =   735
      Index           =   6
      Left            =   1920
      TabIndex        =   7
      Top             =   1320
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass06"
      Enabled         =   0   'False
      Height          =   735
      Index           =   5
      Left            =   240
      TabIndex        =   6
      Top             =   1320
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass04"
      Height          =   735
      Index           =   3
      Left            =   5280
      TabIndex        =   4
      Top             =   480
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass03"
      Enabled         =   0   'False
      Height          =   735
      Index           =   2
      Left            =   3600
      TabIndex        =   3
      Top             =   480
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass02"
      Height          =   735
      Index           =   1
      Left            =   1920
      TabIndex        =   2
      Top             =   480
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass18"
      Height          =   735
      Index           =   17
      Left            =   3600
      TabIndex        =   18
      Top             =   3000
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass05"
      Height          =   735
      Index           =   4
      Left            =   6960
      TabIndex        =   5
      Top             =   480
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass25"
      Height          =   735
      Index           =   24
      Left            =   6960
      TabIndex        =   25
      Top             =   3840
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass22"
      Height          =   735
      Index           =   21
      Left            =   1920
      TabIndex        =   22
      Top             =   3840
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass20"
      Height          =   735
      Index           =   19
      Left            =   6960
      TabIndex        =   20
      Top             =   3000
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass19"
      Height          =   735
      Index           =   18
      Left            =   5280
      TabIndex        =   19
      Top             =   3000
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass12"
      Height          =   735
      Index           =   11
      Left            =   1920
      TabIndex        =   12
      Top             =   2160
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass01"
      Height          =   735
      Index           =   0
      Left            =   240
      TabIndex        =   1
      Top             =   480
      Width           =   1575
   End
   Begin VB.CommandButton cmdGetInfo 
      Caption         =   "Get Users"
      Height          =   615
      Left            =   240
      TabIndex        =   0
      Top             =   4800
      Width           =   1095
   End
   Begin VB.Menu mnuFile 
      Caption         =   "&File"
      Begin VB.Menu mnuViewAtt 
         Caption         =   "View Attendance File"
      End
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Const NERR_SUCCESS As Long = 0&
Private Const ERROR_MORE_DATA As Long = 234&
Private Const NUM_COMPS As Integer = 25

Private Declare Function NetWkstaUserEnum Lib "netapi32" _
  (ByVal servername As Long, _
   ByVal level As Long, _
   bufptr As Long, _
   ByVal prefmaxlen As Long, _
   entriesread As Long, _
   totalentries As Long, _
   resume_handle As Long) As Long

Private Declare Function NetApiBufferFree Lib "netapi32" (ByVal Buffer As Long) As Long

Private Declare Function lstrlenW Lib "kernel32" (ByVal lpString As Long) As Long

Private Type WKSTA_USER_INFO_0
  wkui0_username As Long
End Type

Private Declare Sub CopyMem Lib "kernel32" Alias "RtlMoveMemory" (pTo As Any, uFrom As Any, _
   ByVal lSize As Long)

'GLOBAL VARIABLES
Dim compNms(0 To (NUM_COMPS - 1)) As String
Dim hasRun As Boolean
   


Private Function PtrToStr(ByVal dwData As Long) As String
   Dim tmp() As Byte
   Dim tmplen As Long
   
   If dwData <> 0 Then
      tmplen = lstrlenW(dwData) * 2
      If tmplen <> 0 Then
         ReDim tmp(0 To (tmplen - 1)) As Byte
         CopyMem tmp(0), ByVal dwData, tmplen
         PtrToStr = tmp
     End If
     
   End If
    
End Function

Private Sub cmdComp_Click(Index As Integer)
    'get screenshot from computer
    MsgBox "You Clicked the button for computer named " + compNms(Index)
End Sub

Private Sub cmdGetInfo_Click()
    Dim wkui As WKSTA_USER_INFO_0
    Dim bufptr As Long
    Dim entriesread As Long
    Dim totalentries As Long
    Dim resumehandle As Long
    Dim client As String
    Dim ptrserver As Long
    Dim success As Long
    Dim username As String
    Dim size As Long
    Dim tempbuf As Long
    
    hasRun = True
    'check for computer first and flag as existing by enabling
    For j = 0 To (NUM_COMPS - 1)
        'check if reachable
        'If found Then
        '    'exists - enable it
        '    cmdComp(j).Enabled = True
        'Else
        '    cmdComp(j).Caption = "Host Not Found"
        '    cmdComp(j).Enabled = False
        ' End If
    Next j
    For x = 0 To (NUM_COMPS - 1)
        'check if computer enabled
        If cmdComp(x).Enabled = True Then
            'get computer name
            client = cmdComp(x).Caption
            size = LenB(wkui)
            'get usernames
            success = NetWkstaUserEnum(StrPtr(client), 0, bufptr, -1, entriesread, totalentries, resumehandle)
            'check if succeeded
            If success = NERR_SUCCESS And totalentries > 1 Then
                'succeeded and someone is logged on
                'go to second entry and change caption
                tempbuf = (bufptr + size)
                CopyMem wkui, ByVal tempbuf, size
                cmdComp(x).Caption = PtrToStr(wkui.wkui0_username)
                cmdComp(x).Enabled = True
                'write username to file
                Call WritetoFile(cmdComp(x).Caption)
            ElseIf totalentries = 1 And success = NERR_SUCCESS Then
                'netwkstauserenum only returned the computername so there is no user
                cmdComp(x).Caption = "No User Logged On"
                cmdComp(x).Enabled = False
            Else
                'remote computer not found
                cmdComp(x).Caption = "Host Not Found"
                cmdComp(x).Enabled = False
            End If
            'clear buffer for next call
            Call NetApiBufferFree(bufptr)
        End If

    Next x
End Sub

Private Sub Form_Load()
    hasRun = False
    'add computernames to an array so that once the captions are replaced, we can still use the names
    For x = 0 To (NUM_COMPS - 1)
        compNms(x) = cmdComp(x).Caption
    Next x
    Call Create_File
End Sub
Private Sub WritetoFile(username As String)
   'write username to attendance file
   Dim filename As String
   filename = "attendance-" + Format(Now, "m-d-yy") + ".txt"
   Const ForReading = 1, ForWriting = 2, ForAppending = 8
    Dim fs, f
    Set fs = CreateObject("Scripting.FileSystemObject")
    Set f = fs.OpenTextFile(filename, ForAppending, TristateFalse)
    f.WriteLine username
    f.Close
End Sub
Private Sub Create_File()
    'create the attendance file
    Dim fso, txtfile
    Dim filename As String
    filename = "attendance-" + Format(Now, "m-d-yy") + ".txt"
    Set fso = CreateObject("Scripting.FileSystemObject")
    Set txtfile = fso.CreateTextFile(filename, True)
    txtfile.Close
End Sub


Private Sub mnuViewAtt_Click()
    If hasRun Then
        frmViewAtt.Show
    Else
        MsgBox "Please get the usernames first."
    End If
End Sub
