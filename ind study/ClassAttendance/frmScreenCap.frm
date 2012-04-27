VERSION 5.00
Begin VB.Form frmScreenCap 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "View Screenshot"
   ClientHeight    =   10110
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   12180
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   10110
   ScaleWidth      =   12180
   StartUpPosition =   3  'Windows Default
   Begin VB.Image Image1 
      Height          =   9735
      Left            =   323
      Stretch         =   -1  'True
      Top             =   188
      Width           =   11535
   End
End
Attribute VB_Name = "frmScreenCap"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_Terminate()
Set frmScreenCap.Image1.Picture = LoadPicture("", vbLPLarge, vbLPColor)
End Sub

Private Sub Form_Unload(Cancel As Integer)
Set frmScreenCap.Image1.Picture = LoadPicture("", vbLPLarge, vbLPColor)
End Sub
