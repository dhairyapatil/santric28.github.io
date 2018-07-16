Imports System.Data.SqlClient
Imports System.Web.Configuration
Imports System.Data
Partial Class frmChangeP
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection(ConfigurationManager.ConnectionStrings("sqlConn").ConnectionString)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Request.Cookies("adminid") Is Nothing Then
            Response.Redirect("frmAdminLogin.aspx")
        End If

    End Sub

    Protected Sub btnAddNProduct_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAddNProduct.Click
        Dim img(fuImage.PostedFile.ContentLength) As Byte
        fuImage.PostedFile.InputStream.Read(img, 0, fuImage.PostedFile.ContentLength)
        Dim cmd As New SqlCommand("UPDATE tblPMaster SET P_Cat =@2, P_Img =@3, P_MRP =@4, P_Disc =@5, P_CPrice =@6, P_Qt =@7, P_Discription =@8 where P_Name=@2", cn)
        cmd.Parameters.Add("@1", Data.SqlDbType.VarChar).Value = ddlPCat.SelectedItem.Text
        cmd.Parameters.Add("@2", Data.SqlDbType.VarChar).Value = ddlPCat0.Text
        cmd.Parameters.Add("@3", Data.SqlDbType.Image).Value = img
        cmd.Parameters.Add("@4", Data.SqlDbType.Float).Value = Convert.ToDecimal(txtPMRP.Text)
        cmd.Parameters.Add("@5", Data.SqlDbType.Float).Value = Convert.ToDecimal(txtDisc.Text)
        cmd.Parameters.Add("@6", Data.SqlDbType.Float).Value = Convert.ToDecimal(txtPMRP.Text) - (Convert.ToDecimal(txtDisc.Text) / 100) * Convert.ToDecimal(txtPMRP.Text)
        cmd.Parameters.Add("@7", Data.SqlDbType.Int).Value = 0
        cmd.Parameters.Add("@8", Data.SqlDbType.VarChar).Value = txtD.Text
        cn.Open()
        cmd.ExecuteReader()
        cn.Close()
        lblMsg.Text = "Category Updated Successfully."
        ddlPCat.Enabled = False
        ddlPCat0.Enabled = False
        fuImage.Enabled = False
        txtPMRP.Enabled = False
        txtDisc.Enabled = False
        btnAddNProduct.Enabled = False
        lblPName.Text = ddlPCat0.Text
        lblPWDisc.Text = "Price With Disc. : " + (Convert.ToDecimal(txtPMRP.Text) - (Convert.ToDecimal(txtDisc.Text) / 100) * Convert.ToDecimal(txtPMRP.Text)).ToString()
        imgP.ImageUrl = "ghImg_PMaster.ashx?img_id=" + ddlPCat0.Text
    End Sub
End Class
