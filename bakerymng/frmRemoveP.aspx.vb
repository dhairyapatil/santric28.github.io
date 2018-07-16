Imports System.Data.SqlClient
Imports System.Web.Configuration
Imports System.Data
Partial Class frmRemoveP
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection(ConfigurationManager.ConnectionStrings("sqlConn").ConnectionString)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Request.Cookies("adminid") Is Nothing Then
            Response.Redirect("frmAdminLogin.aspx")
        End If

    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim cmd As New SqlCommand("DELETE FROM tblPMaster where P_Name=@2", cn)
        cmd.Parameters.Add("@2", Data.SqlDbType.VarChar).Value = ddlPCat0.Text
        cn.Open()
        cmd.ExecuteReader()
        cn.Close()
        lblMsg.Text = "Category Removed Successfully."
        ddlPCat0.Enabled = False
        Button1.Enabled = False
    End Sub
End Class
