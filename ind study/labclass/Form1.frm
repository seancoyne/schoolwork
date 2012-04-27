VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   6825
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   7935
   LinkTopic       =   "Form1"
   ScaleHeight     =   6825
   ScaleWidth      =   7935
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text2 
      Height          =   495
      Left            =   2640
      TabIndex        =   2
      Text            =   "\\LibClass01"
      Top             =   960
      Width           =   3375
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   3375
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   855
      Left            =   120
      TabIndex        =   0
      Top             =   960
      Width           =   1695
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Const NERR_SUCCESS As Long = 0&
Private Const MAX_PREFERED_LENGTH As Long = -1
Private Const ERROR_MORE_DATA As Long = 234&

Private Declare Function NetWkstaUserEnum Lib "netapi32" _
  (ByVal servername As Long, ByVal level As Long, bufptr As Long, _
   ByVal prefmaxlen As Long, entriesread As Long, totalentries As Long, _
   resume_handle As Long) As Long

Private Declare Sub CopyMem Lib "kernel32" Alias "RtlMoveMemory" (pTo As Any, uFrom As Any, _
   ByVal lSize As Long)
   
Private Declare Function NetApiBufferFree Lib "netapi32" (ByVal Buffer As Long) As Long

Private Declare Function lstrlenW Lib "kernel32" (ByVal lpString As Long) As Long

Private Type WKSTA_USER_INFO_0
  wkui0_username As Long
End Type

'function to free buffer after each call

Private Sub Command1_Click()
    Dim wkui As WKSTA_USER_INFO_0
    Dim bufptr As Long
    Dim entriesread As Long
    Dim totalentries As Long
    Dim resumehandle As Long
    Dim server As String
    Dim ptrserver As Long
    Dim success As Long
    Dim username As String
    Dim Size As Long

    server = Text2.Text
    ptrserver = StrPtr(server)
    success = NetWkstaUserEnum(ptrserver, 0, bufptr, MAX_PREFERED_LENGTH, entriesread, totalentries, resumehandle)
    If success = NERR_SUCCESS And success <> ERROR_MORE_DATA Then
        Size = LenB(wkui)
        CopyMem wkui, ByVal bufptr, Size
        Text1.Text = PtrToStr(wkui.wkui0_username)
        Exit Sub
    Else
        Text1.Text = "Host Not Found"
    End If
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
