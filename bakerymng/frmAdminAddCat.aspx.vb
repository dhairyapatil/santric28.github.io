Imports System.Data.SqlClient
Imports System.Web.Configuration
Partial Class frmAdminAddCat
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection(ConfigurationManager.ConnectionStrings("sqlConn").ConnectionString)
    Protected Sub btnAddCat_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAddCat.Click
        Dim img(fuImage.PostedFile.ContentLength) As Byte
        fuImage.PostedFile.InputStream.Read(img, 0, fuImage.PostedFile.ContentLength)
        Dim cmd As New SqlCommand("INSERT INTO tblC_Master (C_Name, C_Img) VALUES(@nm,@img )", cn)
        cmd.Parameters.Add("@nm", Data.SqlDbType.VarChar).Value = txtCName.Text
        cmd.Parameters.Add("@img", Data.SqlDbType.Image).Value = img
        cn.Open()
        cmd.ExecuteReader()
        cn.Close()
        lblMsgU.Text = "Category Added Successfully."
        txtCName.Enabled = False
        fuImage.Enabled = False
        btnAddCat.Enabled = False
        lblCName.Text = txtCName.Text
        imgCat.ImageUrl = "ghImg.ashx?img_id=" + txtCName.Text

    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Request.Cookies("adminid") Is Nothing Then
            Response.Redirect("frmAdminLogin.aspx")
        End If
    End Sub
End Class
