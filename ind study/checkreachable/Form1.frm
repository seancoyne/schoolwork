VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   1785
   ClientLeft      =   7005
   ClientTop       =   6375
   ClientWidth     =   3690
   LinkTopic       =   "Form1"
   ScaleHeight     =   1785
   ScaleWidth      =   3690
   Begin VB.TextBox Text2 
      Height          =   375
      Left            =   1200
      TabIndex        =   2
      Text            =   "\\libclass03"
      Top             =   120
      Width           =   2055
   End
   Begin VB.TextBox Text1 
      Height          =   405
      Left            =   1200
      TabIndex        =   1
      Top             =   600
      Width           =   2055
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Check Status"
      Height          =   495
      Left            =   120
      TabIndex        =   0
      Top             =   1080
      Width           =   1215
   End
   Begin VB.Label Label2 
      Caption         =   "Host Name:"
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   120
      Width           =   975
   End
   Begin VB.Label Label1 
      Caption         =   "Host Alive?"
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   600
      Width           =   855
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Type QOCINFO
   dwSize As Long
   dwFlags As Long
   dwInSpeed As Long
   dwOutSpeed As Long
End Type

Private Declare Function IsDestinationReachable Lib "sensapi.dll" _
   Alias "IsDestinationReachableA" _
  (ByVal lpszDestination As String, _
   lpQOCInfo As QOCINFO) As Long




Private Sub Command1_Click()

   Dim result As Long
   Dim qoc As QOCINFO
   
   Text1.Text = ""
   
   qoc.dwSize = Len(qoc)
  
   result = IsDestinationReachable((Text2.Text), qoc)
    If result = False Then
        MsgBox Err.LastDllError
    End If
   Text1.Text = result
   
End Sub


Private Sub Text2_Change()
    Text1.Text = ""
End Sub
