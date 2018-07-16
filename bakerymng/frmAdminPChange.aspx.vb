Imports System.Data.SqlClient
Imports System.Web.Configuration
Imports System.Data
Partial Class frmAdminPChange
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection(ConfigurationManager.ConnectionStrings("sqlConn").ConnectionString)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Request.Cookies("adminid") Is Nothing Then
            Response.Redirect("frmAdminLogin.aspx")
        Else
            Dim cmdPCat As New SqlCommand("SELECT C_Name FROM tblC_Master", cn)
            Dim cmdPName As New SqlCommand("SELECT P_Name FROM tblPMaster", cn)
            cn.Open()
            Dim daPCat As New SqlDataAdapter(cmdPCat)
            Dim dtPCat As New DataTable()
            daPCat.Fill(dtPCat)

            For index As Integer = 0 To dtPCat.Rows.Count - 1
                If Not IsPostBack Then
                    ddlPCat.Items.Add(dtPCat.Rows(index).Item(0).ToString())
                End If
            Next

            Dim daPName As New SqlDataAdapter(cmdPName)
            Dim dtPName As New DataTable()
            daPName.Fill(dtPName)

            For index As Integer = 0 To dtPName.Rows.Count - 1
                If Not IsPostBack Then
                    ddlOldPCName.Items.Add(dtPName.Rows(index).Item(0).ToString())
                End If
            Next
            cn.Close()
        End If
    End Sub
   

    Protected Sub btnAddNProduct_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAddNProduct.Click
        Dim img(fuImage.PostedFile.ContentLength) As Byte
        fuImage.PostedFile.InputStream.Read(img, 0, fuImage.PostedFile.ContentLength)
        Dim cmd As New SqlCommand("UPDATE tblPMaster SET P_Cat = @1, P_Name = @2, P_Img = @3, P_MRP = @4, P_Disc = @5, P_CPrice = @6, P_Qt = @7 WHERE (P_Name = @oldnm)", cn)
        cmd.Parameters.Add("@oldnm", Data.SqlDbType.VarChar).Value = ddlOldPCName.SelectedItem.Text
        cmd.Parameters.Add("@1", Data.SqlDbType.VarChar).Value = ddlPCat.SelectedItem.Text
        cmd.Parameters.Add("@2", Data.SqlDbType.VarChar).Value = txtPName.Text
        cmd.Parameters.Add("@3", Data.SqlDbType.Image).Value = img
        cmd.Parameters.Add("@4", Data.SqlDbType.Float).Value = Convert.ToDecimal(txtPMRP.Text)
        cmd.Parameters.Add("@5", Data.SqlDbType.Float).Value = Convert.ToDecimal(txtDisc.Text)
        cmd.Parameters.Add("@6", Data.SqlDbType.Float).Value = Convert.ToDecimal(txtPMRP.Text) - (Convert.ToDecimal(txtDisc.Text) / 100) * Convert.ToDecimal(txtPMRP.Text)
        cmd.Parameters.Add("@7", Data.SqlDbType.Int).Value = 0
        cn.Open()
        cmd.ExecuteReader()
        cn.Close()
        lblMsg.Text = "Category Changed Successfully."
        ddlPCat.Enabled = False
        ddlOldPCName.Enabled = False
        txtPName.Enabled = False
        fuImage.Enabled = False
        txtPMRP.Enabled = False
        txtDisc.Enabled = False
        btnAddNProduct.Enabled = False
        lblPName.Text = txtPName.Text
        lblPWDisc.Text = "Price With Disc. : " + (Convert.ToDecimal(txtPMRP.Text) - (Convert.ToDecimal(txtDisc.Text) / 100) * Convert.ToDecimal(txtPMRP.Text)).ToString()
        imgP.ImageUrl = "ghImg_PMaster.ashx?img_id=" + txtPName.Text
    End Sub
End Class
