VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5490
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   6780
   LinkTopic       =   "Form1"
   ScaleHeight     =   5490
   ScaleWidth      =   6780
   StartUpPosition =   3  'Windows Default
   Begin VB.ListBox List1 
      Height          =   2985
      ItemData        =   "Form1.frx":0000
      Left            =   240
      List            =   "Form1.frx":0002
      TabIndex        =   2
      Top             =   240
      Width           =   6255
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   1095
      Left            =   480
      TabIndex        =   1
      Top             =   4080
      Width           =   1815
   End
   Begin VB.TextBox Text1 
      Height          =   615
      Left            =   2880
      TabIndex        =   0
      Text            =   "\\LibClass01"
      Top             =   4320
      Width           =   3615
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Const NERR_SUCCESS As Long = 0&
Private Const ERROR_MORE_DATA As Long = 234&

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



Private Sub Command1_Click()
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
    
    client = Text1.Text
    size = LenB(wkui)
    
    'call function to get usernames
    success = NetWkstaUserEnum(StrPtr(client), 0, bufptr, -1, entriesread, totalentries, resumehandle)
    'check if succeeded
    If success = NERR_SUCCESS Then
    'loop through entries and add username
    For i = 1 To 1
        tempbuf = (bufptr + (size * i))
        CopyMem wkui, ByVal tempbuf, size
        List1.AddItem PtrToStr(wkui.wkui0_username)
    Next i
    Else
        List1.Clear
        List1.AddItem "Host Not Found"
    End If
    'clear buffer
    Call NetApiBufferFree(bufptr)
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
