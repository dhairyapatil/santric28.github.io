Imports System.Data.SqlClient
Imports System.Web.Configuration
Imports System.Data
Partial Class frmAdminRemovecat
    Inherits System.Web.UI.Page

    Dim cn As New SqlConnection(ConfigurationManager.ConnectionStrings("sqlConn").ConnectionString)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Request.Cookies("adminid") Is Nothing Then
            Response.Redirect("frmAdminLogin.aspx")
        Else

            Dim cmd As New SqlCommand("SELECT C_Name FROM tblC_Master", cn)
            cn.Open()
            Dim da As New SqlDataAdapter(cmd)
            Dim dt As New DataTable()
            da.Fill(dt)

            For index As Integer = 0 To dt.Rows.Count - 1
                If Not IsPostBack Then
                    ddlCat.Items.Add(dt.Rows(index).Item(0).ToString())
                End If
            Next
            cn.Close()
        End If

    End Sub
    Protected Sub ddlCat_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlCat.SelectedIndexChanged
        imgOldCat.ImageUrl = "ghImg.ashx?img_id=" + ddlCat.SelectedItem.Text
    End Sub

    Protected Sub btnCatDelete_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCatDelete.Click
        Dim cmd As New SqlCommand("DELETE FROM tblC_Master WHERE (C_Name = @nnm)", cn)
        cmd.Parameters.Add("@nnm", Data.SqlDbType.VarChar).Value = ddlCat.SelectedItem.Text
        cn.Open()
        cmd.ExecuteReader()
        cn.Close()
        lblMsgU.Text = "Category Removed Successfully."
        ddlCat.Enabled = False
        btnCatDelete.Enabled = False
        Session.Clear()
    End Sub
End Class
