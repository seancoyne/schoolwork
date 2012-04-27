VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form frmMain 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Class Attendance"
   ClientHeight    =   7365
   ClientLeft      =   4575
   ClientTop       =   3510
   ClientWidth     =   10170
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   7365
   ScaleWidth      =   10170
   Begin VB.CommandButton cmdComp 
      Cancel          =   -1  'True
      Caption         =   "29"
      Enabled         =   0   'False
      Height          =   735
      Index           =   29
      Left            =   7680
      TabIndex        =   32
      Top             =   5280
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "28"
      Enabled         =   0   'False
      Height          =   735
      Index           =   28
      Left            =   6000
      TabIndex        =   31
      Top             =   5280
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "27"
      Enabled         =   0   'False
      Height          =   735
      Index           =   27
      Left            =   4320
      TabIndex        =   30
      Top             =   5280
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "26"
      Enabled         =   0   'False
      Height          =   735
      Index           =   26
      Left            =   2640
      TabIndex        =   29
      Top             =   5280
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "14"
      Enabled         =   0   'False
      Height          =   735
      Index           =   14
      Left            =   7680
      TabIndex        =   28
      Top             =   2760
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "25"
      Enabled         =   0   'False
      Height          =   735
      Index           =   25
      Left            =   960
      TabIndex        =   26
      Top             =   5280
      Width           =   1575
   End
   Begin MSWinsockLib.Winsock Winsock1 
      Left            =   120
      Top             =   120
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "23"
      Enabled         =   0   'False
      Height          =   735
      Index           =   23
      Left            =   6000
      TabIndex        =   23
      Top             =   4440
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "22"
      Enabled         =   0   'False
      Height          =   735
      Index           =   22
      Left            =   4320
      TabIndex        =   22
      Top             =   4440
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "20"
      Enabled         =   0   'False
      Height          =   735
      Index           =   20
      Left            =   960
      TabIndex        =   20
      Top             =   4440
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "16"
      Enabled         =   0   'False
      Height          =   735
      Index           =   16
      Left            =   2640
      TabIndex        =   16
      Top             =   3600
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "15"
      Enabled         =   0   'False
      Height          =   735
      Index           =   15
      Left            =   960
      TabIndex        =   15
      Top             =   3600
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "13"
      Enabled         =   0   'False
      Height          =   735
      Index           =   13
      Left            =   6000
      TabIndex        =   14
      Top             =   2760
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "12"
      Enabled         =   0   'False
      Height          =   735
      Index           =   12
      Left            =   4320
      TabIndex        =   13
      Top             =   2760
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "10"
      Enabled         =   0   'False
      Height          =   735
      Index           =   10
      Left            =   960
      TabIndex        =   11
      Top             =   2760
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "9"
      Enabled         =   0   'False
      Height          =   735
      Index           =   9
      Left            =   7680
      TabIndex        =   10
      Top             =   1920
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "8"
      Enabled         =   0   'False
      Height          =   735
      Index           =   8
      Left            =   6000
      TabIndex        =   9
      Top             =   1920
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "7"
      Enabled         =   0   'False
      Height          =   735
      Index           =   7
      Left            =   4320
      TabIndex        =   8
      Top             =   1920
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "6"
      Enabled         =   0   'False
      Height          =   735
      Index           =   6
      Left            =   2640
      TabIndex        =   7
      Top             =   1920
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "5"
      Enabled         =   0   'False
      Height          =   735
      Index           =   5
      Left            =   960
      TabIndex        =   6
      Top             =   1920
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "3"
      Enabled         =   0   'False
      Height          =   735
      Index           =   3
      Left            =   6000
      TabIndex        =   4
      Top             =   1080
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "2"
      Enabled         =   0   'False
      Height          =   735
      Index           =   2
      Left            =   4320
      TabIndex        =   3
      Top             =   1080
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "1"
      Enabled         =   0   'False
      Height          =   735
      Index           =   1
      Left            =   2640
      TabIndex        =   2
      Top             =   1080
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "17"
      Enabled         =   0   'False
      Height          =   735
      Index           =   17
      Left            =   4320
      TabIndex        =   17
      Top             =   3600
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "4"
      Enabled         =   0   'False
      Height          =   735
      Index           =   4
      Left            =   7680
      TabIndex        =   5
      Top             =   1080
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "24"
      Enabled         =   0   'False
      Height          =   735
      Index           =   24
      Left            =   7680
      TabIndex        =   24
      Top             =   4440
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "21"
      Enabled         =   0   'False
      Height          =   735
      Index           =   21
      Left            =   2640
      TabIndex        =   21
      Top             =   4440
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "19"
      Enabled         =   0   'False
      Height          =   735
      Index           =   19
      Left            =   7680
      TabIndex        =   19
      Top             =   3600
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "18"
      Enabled         =   0   'False
      Height          =   735
      Index           =   18
      Left            =   6000
      TabIndex        =   18
      Top             =   3600
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "11"
      Enabled         =   0   'False
      Height          =   735
      Index           =   11
      Left            =   2640
      TabIndex        =   12
      Top             =   2760
      Width           =   1575
   End
   Begin VB.CommandButton cmdComp 
      Caption         =   "0"
      Enabled         =   0   'False
      Height          =   735
      Index           =   0
      Left            =   960
      TabIndex        =   1
      Top             =   1080
      Width           =   1575
   End
   Begin VB.CommandButton cmdGetInfo 
      Caption         =   "Get Usernames"
      Height          =   495
      Left            =   120
      TabIndex        =   0
      Top             =   6720
      Width           =   1455
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      Caption         =   "Lab Name - Read In From Config File"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Left            =   0
      TabIndex        =   27
      Top             =   0
      Width           =   10200
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Click a computer to view a current screenshot"
      Height          =   195
      Left            =   3465
      TabIndex        =   25
      Top             =   600
      Width           =   3240
   End
   Begin VB.Menu mnuFile 
      Caption         =   "&File"
      Begin VB.Menu mnuViewAtt 
         Caption         =   "View Attendance File"
      End
      Begin VB.Menu mnuClose 
         Caption         =   "&Close"
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
Private Const NUM_CMDBUTTONS As Integer = 30

Private Declare Function NetWkstaUserEnum Lib "netapi32" (ByVal servername As Long, ByVal level As Long, bufptr As Long, ByVal prefmaxlen As Long, entriesread As Long, totalentries As Long, resume_handle As Long) As Long
Private Declare Function NetApiBufferFree Lib "netapi32" (ByVal buffer As Long) As Long
Private Declare Function lstrlenW Lib "kernel32" (ByVal lpString As Long) As Long
Private Declare Function Sleep Lib "kernel32" (ByVal dwmilliseconds As Long) As Long
Private Declare Sub CopyMem Lib "kernel32" Alias "RtlMoveMemory" (pTo As Any, uFrom As Any, ByVal lSize As Long)

Private Type WKSTA_USER_INFO_0
    wkui0_username As Long
End Type

Dim compNms(0 To (NUM_CMDBUTTONS - 1)) As String
Dim classMembers(0 To (NUM_CMDBUTTONS - 1)) As String
Dim hasRun As Boolean
Dim classlist As Boolean
Dim numClass As Integer
Dim NUM_COMPS As Integer
Dim path As String
Dim username As String

Private m_blnTransferring  As Boolean
Private m_strFilename      As String

Private Sub Form_Load()
Dim layoutline As String
Dim templine As String
Dim lb2cap As String

path = Environ("HOMESHARE") & "\"
username = Environ("USERNAME")

    Dim x As Integer
    Dim i As Integer
    'form has just loaded
    hasRun = False
    x = 0
    
    Dim chartemp(0 To (NUM_CMDBUTTONS - 1)) As String
    'read in configuration
    If FileExists("config.txt") Then
        'open file
        Open "config.txt" For Input As #3
        'get labname
            Line Input #3, lb2cap
            Label2.Caption = lb2cap
        'read in five config file
        Dim configfind As Integer
        Dim y As Integer
        
        configfind = 0
        For x = 0 To (NUM_CMDBUTTONS - 1)
            For y = 0 To 4
                If Not EOF(3) Then
                    Do
                        Input #3, chartemp(configfind + y)
                    Loop While Left$(chartemp(0), 1) = "'"
                End If
            Next y
            configfind = configfind + 5
            If configfind = NUM_CMDBUTTONS Then
                Exit For
            End If
        Next x
        Close #3
        'check each chartemp() var for computername or #
        For x = 0 To (NUM_CMDBUTTONS - 1)
            If chartemp(x) = "#" Then
                'not a computer, disable button
                cmdComp(x).Visible = False
                cmdComp(x).Enabled = False
            Else
                'computer
                'set caption
                cmdComp(x).Visible = True
                cmdComp(x).Enabled = True
                cmdComp(x).Caption = chartemp(x)
                compNms(x) = "\\" & chartemp(x)
                'set compnms variable
            End If
        Next x
    Else
        MsgBox "Layout Configuration File: layout.txt, Doesn't Exist."
        mnuClose_Click
    End If
    
    i = 0
    If FileExists("classlist.txt") Then
        classlist = True
        Open "classlist.txt" For Input As #2
            'load class memebers
            Do While Not (EOF(2))
                Line Input #2, classMembers(i)
                i = i + 1
            Loop
        Close #2
        numClass = i - 1
    Else
        MsgBox "Class list config file: classlist.txt, does not exist."
        mnuClose_Click
    End If
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
    Dim matchfound As Boolean
    
    Call Create_File
    hasRun = True
    For x = 0 To (NUM_CMDBUTTONS - 1)
        matchfound = False
        'check if computer button enabled
        If cmdComp(x).Enabled = True Then
            'get computer name
            client = compNms(x)
            size = LenB(wkui)
            'get usernames
            success = NetWkstaUserEnum(StrPtr(client), 0, bufptr, -1, entriesread, totalentries, resumehandle)
            'check if succeeded
            If success = NERR_SUCCESS And totalentries > 1 Then
                'succeeded and someone is logged on
                'go to second entry and change caption
                tempbuf = (bufptr + (size * (totalentries - 1)))
                CopyMem wkui, ByVal tempbuf, size
                Dim test As String
                test = PtrToStr(wkui.wkui0_username)
                cmdComp(x).Caption = PtrToStr(wkui.wkui0_username)
                cmdComp(x).Enabled = True
                'find a match
                For y = 0 To (numClass)
                    If StrConv(test, vbLowerCase) = StrConv(classMembers(y), vbLowerCase) Then
                        matchfound = True
                    End If
                Next y
                'write username to file if match exists in class list
                If classlist = True And matchfound Then
                    Call WritetoFile(cmdComp(x).Caption, x)
                End If
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

Private Sub WritetoFile(username2 As String, index As Integer)
   'write username and computer name to attendance file
    Dim filename As String
    filename = path + username + "-" + Format(Now, "m-d-yy") + ".txt"
    Const ForReading = 1, ForWriting = 2, ForAppending = 8
    Dim fs, f
    Set fs = CreateObject("Scripting.FileSystemObject")
    Set f = fs.OpenTextFile(filename, ForAppending, TristateFalse)
    f.WriteLine username2 + "," + compNms(index)
    f.Close
End Sub

Private Sub Create_File()
    'create the attendance file
    Dim fso, txtfile
    Dim filename As String
    filename = path + username + "-" + Format(Now, "m-d-yy") + ".txt"
    Set fso = CreateObject("Scripting.FileSystemObject")
    Set txtfile = fso.CreateTextFile(filename, True)
    txtfile.Close
End Sub

Private Sub Form_Unload(Cancel As Integer)
    mnuClose_Click
End Sub

Private Sub mnuClose_Click()
    Dim frm As Form
    If Forms.Count > 0 Then
        'still have forms open
        For Each frm In Forms
            Unload frm
        Next
    End If
End Sub

Private Sub mnuScreenshot_Click()
    frmScreenCap.Show
End Sub

Private Sub mnuViewAtt_Click()
    If hasRun Then
        frmViewAtt.Show
    Else
        MsgBox "Please get the usernames first."
    End If
End Sub

Private Sub cmdComp_Click(index As Integer)
    frmPleaseWait.Show
    'get screenshot bmp from remote computer
    Dim length As Long
    'disconnect if still connected
    Winsock1.Close
    'remove \\ from hostname
    Winsock1.RemoteHost = Mid(compNms(index), 3)
    Winsock1.RemotePort = 999
    Winsock1.Connect
    'open form and load picture
End Sub

Private Sub Winsock1_DataArrival(ByVal bytesTotal As Long)
    Dim strData    As String
    Dim hFile      As Long
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
        End If
        '
        Else
        ' If we're already in a transfer, this data could either be file data, or
        ' an EOF marker.
        If (Mid$(strData, 1, 3) = "EOF") Then
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
                Unload frmPleaseWait
                MsgBox "Screenshot file was not found.  Please try again."
            End If
            Winsock1.Close
        Else
            ' Open a temporary file in the current directory - this is where all the
            ' file data is saved.
            hFile = FreeFile
            Open "screen.bmp" For Binary Access Write As #hFile
            ' Move to the end of the file, and write the data.
            Seek #hFile, LOF(hFile) + 1
            Put #hFile, , strData
            Close #hFile
            ' Send the server another "NEXT" command to get the next piece of data.
            Winsock1.SendData ("NEXT")
            'DoEvents
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
    Unload frmPleaseWait
    MsgBox "Winsock Error Has Occured: " + Description + " Please Try Again."
    Call Winsock1.Close
    m_blnTransferring = False
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


