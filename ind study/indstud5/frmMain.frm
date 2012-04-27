VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form frmMain 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Class Attendance"
   ClientHeight    =   5685
   ClientLeft      =   4395
   ClientTop       =   4890
   ClientWidth     =   8835
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   5685
   ScaleWidth      =   8835
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\Nickel4242"
      Height          =   735
      Index           =   25
      Left            =   2760
      TabIndex        =   27
      Top             =   4680
      Width           =   1575
   End
   Begin MSWinsockLib.Winsock Winsock1 
      Left            =   1560
      Top             =   4920
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass24"
      Height          =   735
      Index           =   23
      Left            =   5280
      TabIndex        =   24
      Top             =   3840
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass23"
      Height          =   735
      Index           =   22
      Left            =   3600
      TabIndex        =   23
      Top             =   3840
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass21"
      Height          =   735
      Index           =   20
      Left            =   240
      TabIndex        =   21
      Top             =   3840
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass17"
      Height          =   735
      Index           =   16
      Left            =   1920
      TabIndex        =   17
      Top             =   3000
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass16"
      Height          =   735
      Index           =   15
      Left            =   240
      TabIndex        =   16
      Top             =   3000
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass15"
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
      Height          =   735
      Index           =   12
      Left            =   3600
      TabIndex        =   13
      Top             =   2160
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass11"
      Height          =   735
      Index           =   10
      Left            =   240
      TabIndex        =   11
      Top             =   2160
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass10"
      Height          =   735
      Index           =   9
      Left            =   6960
      TabIndex        =   10
      Top             =   1320
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass09"
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
      Height          =   735
      Index           =   6
      Left            =   1920
      TabIndex        =   7
      Top             =   1320
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "\\LibClass06"
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
   Begin VB.Label Label1 
      Caption         =   "Click a computer to view a current screenshot"
      Height          =   255
      Left            =   360
      TabIndex        =   26
      Top             =   120
      Width           =   3495
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
Private Const NUM_COMPS As Integer = 26

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

Private Declare Sub CopyMem Lib "kernel32" Alias "RtlMoveMemory" _
    (pTo As Any, _
     uFrom As Any, _
     ByVal lSize As Long)

'GLOBAL VARIABLES
Dim compNms(0 To (NUM_COMPS - 1)) As String
Dim hasRun As Boolean
Private m_blnTransferring  As Boolean
Private m_strFilename      As String

Private Sub Form_Load()
    hasRun = False
    'add computernames to an array so that once the captions are replaced, we can still use the names
    For x = 0 To (NUM_COMPS - 1)
        compNms(x) = cmdComp(x).Caption
    Next x
End Sub

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
    Dim x As Integer
    
    Call Create_File
    hasRun = True
    'check for computer first and flag as existing by enabling
    For j = 0 To (NUM_COMPS - 1)
        'check if host is reachable (i.e. on)
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
                Call WritetoFile(cmdComp(x).Caption, x)
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

Private Sub WritetoFile(username As String, index As Integer)
   'write username and computer name to attendance file
   Dim filename As String
   filename = "attendance-" + Format(Now, "m-d-yy") + ".txt"
   Const ForReading = 1, ForWriting = 2, ForAppending = 8
    Dim fs, f
    Set fs = CreateObject("Scripting.FileSystemObject")
    Set f = fs.OpenTextFile(filename, ForAppending, TristateFalse)
    f.WriteLine username + "," + compNms(index)
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

Private Sub cmdComp_Click(index As Integer)
    Dim length As Long
    'get screenshot bmp from remote computer
    length = Len(compNms(index))
    'remove \\ from hostname
    Winsock1.RemoteHost = Mid(compNms(index), 3, length)
    Winsock1.RemotePort = 10101
    Winsock1.Connect
    'open form and load picture
End Sub

Private Sub Winsock1_DataArrival(ByVal bytesTotal As Long)
    Dim strData    As String
    Dim hFile      As Long
    frmPleaseWait.Show
    ' Grab the incoming data.
    Call Winsock1.GetData(strData)
    ' If we're not in a file transfer operation, this could well be a "BOF".
    If (Not m_blnTransferring) Then
        If (Mid$(strData, 1, 3) = "BOF") Then
            ' flag so that next time data arrives (file data) it will be saved.
            m_blnTransferring = True
            ' We have an incoming file - save the filename, and set the operation
            m_strFilename = Mid$(strData, 4)
            ' if file already exists, delete it
            If FileExists("screen.bmp") Then
                'delete it
                Dim fs
                Set fs = CreateObject("Scripting.FileSystemObject")
                fs.DeleteFile "screen.bmp"
            End If
            ' Send back a "NEXT" to get some of the file data.
            Call Winsock1.SendData("NEXT")
            DoEvents
            '
        End If
        '
        Else
        ' If we're already in a transfer, this data could either be file data, or
        ' an EOF marker.
        If (Mid$(strData, 1, 3) = "EOF") Then
            '
            ' The transfer is complete.
            m_blnTransferring = False
            DoEvents
            If FileExists("screen.bmp") Then
                Set frmScreenCap.Image1.Picture = LoadPicture("screen.bmp", vbLPLarge, vbLPColor)
                frmScreenCap.Show
                'frmpleasewait.hide
                Unload frmPleaseWait
            Else
                'shouldnt happen
                frmPleaseWait.Hide
                MsgBox "FILE NOT FOUND"
            End If
            Winsock1.Close
        Else
            ' Open a temporary file in the current directory - this is where all the
            ' file data is saved.
            hFile = FreeFile
            Open "screen.bmp" For Binary As #hFile
            '
            ' Move to the end of the file, and write the data.
            Seek #hFile, LOF(hFile) + 1
            Put #hFile, , strData
            Close #hFile
            ' Send the server another "NEXT" command to get the next piece of data.
            Call Winsock1.SendData("NEXT")
            DoEvents
        End If
    End If
End Sub

Private Sub Winsock1_Error( _
    ByVal Number As Integer, _
    Description As String, _
    ByVal Scode As Long, _
    ByVal Source As String, _
    ByVal HelpFile As String, _
    ByVal HelpContext As Long, _
    CancelDisplay As Boolean)
    
    MsgBox "Winsock Error Has Occured"
    Call Winsock1.Close
    m_blnTransferring = False
    Unload frmPleaseWait
End Sub

Function FileExists(filename As String) As Integer
    Dim f As Integer
    ' Trap any errors that may occur
    On Error Resume Next
    ' Get a free file handle to avoid using a file handle already in use
    f = FreeFile
    ' Open the file for reading
    Open filename For Input As #f
    ' Close it
    Close #f
    ' If there was an error, Err will be <> 0. In that case, we return False
    FileExists = Not (Err <> 0)
End Function
