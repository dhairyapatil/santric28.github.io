Imports System.Data
Imports System.Data.SqlClient
Partial Class frmProductByCat
    Inherits System.Web.UI.Page
    Dim dtbasket As DataTable
    Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("sqlConn").ConnectionString)
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Request.QueryString("cat") Is Nothing Then
            lblCat.Text = Request.QueryString("cat")
            Response.Cookies("cat").Value = lblCat.Text
        End If
      
    End Sub
End Class
