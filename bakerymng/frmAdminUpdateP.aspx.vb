Imports System.Data.SqlClient
Imports System.Web.Configuration
Imports System.Data
Partial Class frmAdminUpdateP
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

    Protected Sub btnChangeCat_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnChangeCat.Click
        Dim img(fuImage.PostedFile.ContentLength) As Byte
        fuImage.PostedFile.InputStream.Read(img, 0, fuImage.PostedFile.ContentLength)
        Dim cmd As New SqlCommand("UPDATE tblC_Master SET C_Name = @nm, C_Img=@img WHERE (C_Name = @nnm)", cn)
        cmd.Parameters.Add("@nnm", Data.SqlDbType.VarChar).Value = ddlCat.SelectedItem.Text
        cmd.Parameters.Add("@nm", Data.SqlDbType.VarChar).Value = txtCName.Text
        cmd.Parameters.Add("@img", Data.SqlDbType.Image).Value = img
        cn.Open()
        cmd.ExecuteReader()
        cn.Close()
        lblMsgU.Text = "Category Changed Successfully."
        ddlCat.Enabled = False
        txtCName.Enabled = False
        fuImage.Enabled = False
        btnChangeCat.Enabled = False
        lblCName.Text = txtCName.Text
        imgCat.ImageUrl = "ghImg.ashx?img_id=" + txtCName.Text
        Session.Clear()
    End Sub

    Protected Sub ddlCat_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlCat.SelectedIndexChanged
        imgOldCat.ImageUrl = "ghImg.ashx?img_id=" + ddlCat.SelectedItem.Text
    End Sub
End Class
