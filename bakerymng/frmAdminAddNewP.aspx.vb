Imports System.Data.SqlClient
Imports System.Web.Configuration
Imports System.Data
Partial Class frmAdminAddNewP
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
                    ddlPCat.Items.Add(dt.Rows(index).Item(0).ToString())
                End If
            Next
            cn.Close()
        End If
       
    End Sub

    Public Function funMax() As Integer
        Dim max As Integer = 0
        Try
            Dim cmd As New SqlCommand("select max(P_ID) from tblPMaster", cn)
            cn.Open()
            max = Convert.ToInt32(cmd.ExecuteScalar())
        Catch ex As Exception
        End Try
        cn.Close()
        Return max
    End Function

    Protected Sub btnAddNProduct_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAddNProduct.Click
        Dim max As Integer = funMax() + 1
        Dim img(fuImage.PostedFile.ContentLength) As Byte
        fuImage.PostedFile.InputStream.Read(img, 0, fuImage.PostedFile.ContentLength)
        Dim cmd As New SqlCommand("INSERT INTO tblPMaster (P_Cat, P_Name, P_Img, P_MRP, P_Disc, P_CPrice, P_Qt,P_Discription,P_ID) VALUES (@1,@2,@3,@4,@5,@6,@7,@8,@9)", cn)
        cmd.Parameters.Add("@1", Data.SqlDbType.VarChar).Value = ddlPCat.SelectedItem.Text
        cmd.Parameters.Add("@2", Data.SqlDbType.VarChar).Value = txtPName.Text
        cmd.Parameters.Add("@3", Data.SqlDbType.Image).Value = img
        cmd.Parameters.Add("@4", Data.SqlDbType.Float).Value = Convert.ToDecimal(txtPMRP.Text)
        cmd.Parameters.Add("@5", Data.SqlDbType.Float).Value = Convert.ToDecimal(txtDisc.Text)
        cmd.Parameters.Add("@6", Data.SqlDbType.Float).Value = Convert.ToDecimal(txtPMRP.Text) - (Convert.ToDecimal(txtDisc.Text) / 100) * Convert.ToDecimal(txtPMRP.Text)
        cmd.Parameters.Add("@7", Data.SqlDbType.Int).Value = 0
        cmd.Parameters.Add("@8", Data.SqlDbType.VarChar).Value = txtD.Text
        cmd.Parameters.Add("@9", Data.SqlDbType.Int).Value = max
        cn.Open()
        cmd.ExecuteReader()
        cn.Close()
        lblMsg.Text = "Category Added Successfully."
        ddlPCat.Enabled = False
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
