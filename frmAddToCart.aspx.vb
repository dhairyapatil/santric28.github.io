Imports System.Data
Imports System.Data.SqlClient
Partial Class frmAddToCart
    Inherits System.Web.UI.Page
    Dim dtbasket As DataTable = Nothing
    Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("sqlConn").ConnectionString)
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


        'If Not Request("delNm") = Nothing Then
        '    For i As Integer = 0 To dtbasket.Rows.Count - 1
        '        If dtbasket.Rows(i).Item(1).ToString() = Request.QueryString("delNm").ToString() Then
        '            dtbasket.Rows(i).Delete()
        '            Exit For
        '        End If
        '    Next
        'End If

        If Not Request("Nm") Is Nothing Then
            Dim found As Boolean = False

            For i As Integer = 0 To dtbasket.Rows.Count - 1
                If dtbasket.Rows(i).Item(2).ToString() = Request("Nm").ToString() Then
                    found = True
                End If
            Next

            If found = False Then
                Dim cmd As New SqlCommand("SELECT * FROM tblPMaster WHERE P_Name=@nm", con)
                cmd.Parameters.Add("@nm", SqlDbType.VarChar).Value = Request("Nm")
                con.Open()
                Dim dr As SqlDataReader = cmd.ExecuteReader()
                If dr.Read() Then
                    dtbasket.Rows.Add(dtbasket.Rows.Count + 1, dr(8).ToString(), dr(1).ToString(), dr(2).ToString(), dr(5).ToString(), "1", dr(5).ToString())
                End If
            End If

            Session("basket") = dtbasket
            Response.Redirect("frmProductByCat.aspx?cat=" + Request.Cookies("cat").Value)
        End If
    End Sub
End Class
