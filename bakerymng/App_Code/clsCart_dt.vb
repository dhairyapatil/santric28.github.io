Imports Microsoft.VisualBasic
Imports System.Data

Public Class clsCart_dt
    Private Shared cdt As New DataTable()
    Public Sub New()
        If cdt.Columns.Count = 0 Then
            cdt.Columns.Add("no", GetType(Integer))
            cdt.Columns.Add("name", GetType(String))
            cdt.Columns.Add("mrp", GetType(Double))
            cdt.Columns.Add("disc", GetType(Double))
            cdt.Columns.Add("price", GetType(Double))
            cdt.Columns.Add("qt", GetType(Integer))
            cdt.Columns.Add("amt", GetType(Integer))
        End If
    End Sub
    Public Function funAdd(ByVal nm As String, ByVal mrp As Double, ByVal disc As Double) As Boolean
        Dim b As Boolean = False
        For i As Integer = 0 To cdt.Rows.Count - 1
            If cdt.Rows(i).Item(1).ToString() = nm Then
                b = True
            End If
        Next
        If b = False Then
            cdt.Rows.Add(cdt.Rows.Count, nm, mrp, disc, mrp - disc, 1, mrp - disc)
        End If
    End Function
    Public Function funGetCart() As DataTable
        Return cdt
    End Function
    Public Function funRemove(ByVal nm As String) As Boolean
        For i As Integer = 0 To cdt.Rows.Count - 1
            If cdt.Rows(i).Item(1).ToString() = nm Then
                cdt.Rows(i).Delete()
                For j As Integer = 0 To cdt.Rows.Count - 1
                    cdt.Rows(j).Item(0) = j + 1
                Next
                Exit For
            End If
        Next
    End Function
End Class
