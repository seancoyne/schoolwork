VERSION 5.00
Begin VB.Form frmMain 
   Caption         =   "Class Attendance"
   ClientHeight    =   8220
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   10425
   LinkTopic       =   "Form1"
   ScaleHeight     =   8220
   ScaleWidth      =   10425
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass24"
      Enabled         =   0   'False
      Height          =   735
      Index           =   23
      Left            =   8640
      TabIndex        =   25
      Top             =   3000
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass23"
      Enabled         =   0   'False
      Height          =   735
      Index           =   22
      Left            =   6960
      TabIndex        =   24
      Top             =   3000
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass21"
      Enabled         =   0   'False
      Height          =   735
      Index           =   20
      Left            =   3600
      TabIndex        =   23
      Top             =   3000
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass17"
      Enabled         =   0   'False
      Height          =   735
      Index           =   16
      Left            =   6960
      TabIndex        =   22
      Top             =   2160
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass16"
      Enabled         =   0   'False
      Height          =   735
      Index           =   15
      Left            =   5280
      TabIndex        =   21
      Top             =   2160
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass15"
      Enabled         =   0   'False
      Height          =   735
      Index           =   14
      Left            =   3600
      TabIndex        =   20
      Top             =   2160
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass14"
      Enabled         =   0   'False
      Height          =   735
      Index           =   13
      Left            =   1920
      TabIndex        =   19
      Top             =   2160
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass13"
      Enabled         =   0   'False
      Height          =   735
      Index           =   12
      Left            =   240
      TabIndex        =   18
      Top             =   2160
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass11"
      Enabled         =   0   'False
      Height          =   735
      Index           =   10
      Left            =   6960
      TabIndex        =   17
      Top             =   1320
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass10"
      Enabled         =   0   'False
      Height          =   735
      Index           =   9
      Left            =   5280
      TabIndex        =   16
      Top             =   1320
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass09"
      Enabled         =   0   'False
      Height          =   735
      Index           =   8
      Left            =   3600
      TabIndex        =   15
      Top             =   1320
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass08"
      Enabled         =   0   'False
      Height          =   735
      Index           =   7
      Left            =   1920
      TabIndex        =   14
      Top             =   1320
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass07"
      Enabled         =   0   'False
      Height          =   735
      Index           =   6
      Left            =   240
      TabIndex        =   13
      Top             =   1320
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass06"
      Enabled         =   0   'False
      Height          =   735
      Index           =   5
      Left            =   8640
      TabIndex        =   12
      Top             =   480
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass04"
      Enabled         =   0   'False
      Height          =   735
      Index           =   3
      Left            =   5280
      TabIndex        =   11
      Top             =   480
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass03"
      Enabled         =   0   'False
      Height          =   735
      Index           =   2
      Left            =   3600
      TabIndex        =   10
      Top             =   480
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass02"
      Enabled         =   0   'False
      Height          =   735
      Index           =   1
      Left            =   1920
      TabIndex        =   9
      Top             =   480
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass18"
      Enabled         =   0   'False
      Height          =   735
      Index           =   17
      Left            =   8640
      TabIndex        =   8
      Top             =   2160
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass05"
      Enabled         =   0   'False
      Height          =   735
      Index           =   4
      Left            =   6960
      TabIndex        =   7
      Top             =   480
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass25"
      Enabled         =   0   'False
      Height          =   735
      Index           =   24
      Left            =   240
      TabIndex        =   6
      Top             =   3840
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass22"
      Enabled         =   0   'False
      Height          =   735
      Index           =   21
      Left            =   5280
      TabIndex        =   5
      Top             =   3000
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass20"
      Enabled         =   0   'False
      Height          =   735
      Index           =   19
      Left            =   1920
      TabIndex        =   4
      Top             =   3000
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass19"
      Enabled         =   0   'False
      Height          =   735
      Index           =   18
      Left            =   240
      TabIndex        =   3
      Top             =   3000
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass12"
      Enabled         =   0   'False
      Height          =   735
      Index           =   11
      Left            =   8640
      TabIndex        =   2
      Top             =   1320
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass01"
      Enabled         =   0   'False
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
      Left            =   120
      TabIndex        =   0
      Top             =   7440
      Width           =   1095
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

Private Declare Function IsDestinationReachable Lib "sensapi.dll" _
   Alias "IsDestinationReachableA" _
  (ByVal lpszDestination As String, _
   lpQOCInfo As Any) As Long

Private Type QOCInfo
    dwSize As Long
    dwFlags As Long
    dwInSpeed As Long
    dwOutSpeed As Long
End Type

Private Type WKSTA_USER_INFO_0
  wkui0_username As Long
End Type

Private Declare Sub CopyMem Lib "kernel32" Alias "RtlMoveMemory" (pTo As Any, uFrom As Any, _
   ByVal lSize As Long)

'GLOBAL VARIABLES
Dim compNms(0 To (NUM_COMPS - 1)) As String
   


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
    Dim found As Long
  
    
    'check for computer first and flag as existing by enabling
    For j = 0 To (NUM_COMPS - 1)
        'check if reachable
        host = cmdComp(j).Caption
        ptrhost = StrPtr(cmdComp(j).Caption)
        found = IsDestinationReachable(ptrhost, 0&)
        If found Then
            'exists - enable it
            cmdComp(j).Enabled = True
        End If
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

