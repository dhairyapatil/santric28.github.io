Imports System.Data.SqlClient
Imports System.Web.Configuration
Imports System.Data
Partial Class frmFeedback
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection(ConfigurationManager.ConnectionStrings("dbWebBMngConnectionString").ConnectionString)

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        Dim cmd As New SqlCommand("INSERT INTO tblFeeds (name, eid, feedback) VALUES (@1,@2,@3)", cn)
        cmd.Parameters.Add("@1", Data.SqlDbType.VarChar).Value = TextBox1.Text
        cmd.Parameters.Add("@2", Data.SqlDbType.VarChar).Value = TextBox2.Text
        cmd.Parameters.Add("@3", Data.SqlDbType.VarChar).Value = TextBox3.Text
        cn.Open()
        cmd.ExecuteReader()
        cn.Close()
        lblMsg.Text = "Thank You for Your Feedback"
        lblMsg.ForeColor = Drawing.Color.Brown
        TextBox1.Enabled = False
        TextBox2.Enabled = False
        TextBox3.Enabled = False
        btnSubmit.Enabled = False
    End Sub
End Class
