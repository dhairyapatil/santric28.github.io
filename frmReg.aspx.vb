Imports System.Data.SqlClient
Imports System.Web.Configuration
Partial Class frmReg
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection(ConfigurationManager.ConnectionStrings("sqlConn").ConnectionString)
    Protected Sub btnCreat_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCreat.Click
        'Try
        cn.Open()
        Dim cmd As New SqlCommand("INSERT INTO tblUInfo (U_Name, U_EID, U_Pwd, U_DOB, U_Gen, U_MNo, U_Add, U_PCode) VALUES(@1,@2,@3,@4,@5,@6,@7,@8)", cn)
        cmd.Parameters.Add("@1", Data.SqlDbType.VarChar).Value = txtName.Text
        cmd.Parameters.Add("@2", Data.SqlDbType.VarChar).Value = txtUID.Text
        cmd.Parameters.Add("@3", Data.SqlDbType.VarChar).Value = txtPwd.Text
        cmd.Parameters.Add("@4", Data.SqlDbType.DateTime).Value = txtBDate.Text
        cmd.Parameters.Add("@5", Data.SqlDbType.VarChar).Value = ddlGen.SelectedItem.Text
        cmd.Parameters.Add("@6", Data.SqlDbType.VarChar).Value = txtMNo.Text
        cmd.Parameters.Add("@7", Data.SqlDbType.VarChar).Value = txtAdd.Text
        cmd.Parameters.Add("@8", Data.SqlDbType.VarChar).Value = txtPCode.Text
        cmd.ExecuteReader()
        cn.Close()
        Response.Redirect("frmRegSuccessed.aspx?nm=" + txtName.Text)
        'Catch ex As Exception
        '    Response.Redirect("frmError.aspx?error=" + ex.Message)
        'End Try       
    End Sub


End Class
