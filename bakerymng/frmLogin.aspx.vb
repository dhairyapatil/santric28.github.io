Imports System.Data.SqlClient
Imports System.Web.Configuration
Partial Class frmLogin
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection(ConfigurationManager.ConnectionStrings("sqlConn").ConnectionString)
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Request.QueryString Is Nothing And Not Request.Cookies("uid") Is Nothing Then
            Dim aCookie As HttpCookie
            Dim i As Integer
            Dim cookieName As String
            Dim limit As Integer = Request.Cookies.Count - 1

            For i = 1 To limit
                cookieName = Request.Cookies(i).Name
                aCookie = New HttpCookie(cookieName)
                aCookie.Expires = DateTime.Now.AddDays(-1)
                Response.Cookies.Add(aCookie)
            Next
            Response.Redirect("Default.aspx")
        Else
        End If
    End Sub


    Protected Sub btnLogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogin.Click
        Dim cmd As New SqlCommand("select U_Name, U_Pwd from tblUInfo where U_EID=@1", cn)
        cmd.Parameters.Add("@1", Data.SqlDbType.VarChar).Value = txtAID.Text
        cn.Open()
        Dim dr As SqlDataReader = cmd.ExecuteReader()
        If dr.Read() Then

            If dr(1).ToString() = txtPwd.Text Then
                Response.Cookies("uname").Value = dr(0).ToString()
                Response.Cookies("uid").Value = txtAID.Text
                If Request.QueryString("ret") Is Nothing Then
                    Response.Redirect("Default.aspx")
                Else
                    Response.Redirect("frmcdandmtran.aspx")
                End If
            Else
                lblMsg.Text = "Invalid User ID Or Password"
            End If

            
            cn.Close()

           

        Else
            cn.Close()
            lblMsg.Text = "Invalid User ID Or Password"
        End If

    End Sub
End Class
