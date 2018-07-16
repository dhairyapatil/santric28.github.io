Imports System.Data
Partial Class frmCart
    Inherits System.Web.UI.Page
    Dim dtbasket As DataTable = Nothing

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Session("basket") Is Nothing Then
            dtbasket = CType(Session("basket"), DataTable)
        Else
            dtbasket = New DataTable()
            dtbasket.Columns.Add("srno")
            dtbasket.Columns.Add("id")
            dtbasket.Columns.Add("name")
            dtbasket.Columns.Add("pic")
            dtbasket.Columns.Add("price")
            dtbasket.Columns.Add("qt")
            dtbasket.Columns.Add("amt")
        End If
        'For Delete
        If Not Request("delID") Is Nothing Then
            For i As Integer = 0 To dtbasket.Rows.Count - 1
                If dtbasket.Rows(i).Item(1).ToString() = Request.QueryString("delID").ToString() Then
                    dtbasket.Rows.Remove(dtbasket.Rows(i))
                    Exit For
                End If
            Next
            For j As Integer = 0 To dtbasket.Rows.Count - 1
                dtbasket.Rows(j).Item(0) = j + 1
            Next
        End If

        'If Not Request("Nm") = Nothing Then
        '    Dim found As Boolean = False

        '    For i As Integer = 0 To dtbasket.Rows.Count - 1
        '        If dtbasket.Rows(i).Item(1).ToString() = Request("Nm").ToString() Then
        '            found = True
        '        End If
        '    Next
        'End If

        If IsPostBack = False Then
            gvCart.DataSource = dtbasket
            gvCart.DataBind()
        End If

        For index As Integer = 0 To dtbasket.Rows.Count - 1
            ' lblTItems.Text = Integer.Parse(dtbasket.Rows(index).Item(5).ToString()) + Integer.Parse(lblTItems.Text)
            lblTAmt.Text = Double.Parse(dtbasket.Rows(index).Item(6)) + Double.Parse(lblTAmt.Text)
        Next
        Session("basket") = dtbasket
        lblTItems.Text = dtbasket.Rows.Count

    End Sub

    Protected Sub btnUpdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpdate.Click
        For index As Integer = 0 To gvCart.Rows.Count - 1
            Dim t As TextBox = gvCart.Rows(index).FindControl("TextBox1")
            dtbasket.Rows(index).Item(5) = t.Text
            dtbasket.Rows(index).Item(6) = Double.Parse(t.Text) * Double.Parse(dtbasket.Rows(index).Item(4))
        Next
        Session("basket") = dtbasket
        Response.Redirect("frmCart.aspx")

    End Sub

    Protected Sub btnUpdate0_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpdate0.Click

    End Sub
End Class
