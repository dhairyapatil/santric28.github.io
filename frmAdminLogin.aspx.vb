
Partial Class frmAdminLogin
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Request.Cookies("adminid") Is Nothing Then
            Dim aCookie As HttpCookie
            Dim i As Integer
            Dim cookieName As String
            Dim limit As Integer = Request.Cookies.Count - 1
            For i = 0 To limit
                cookieName = Request.Cookies(i).Name
                aCookie = New HttpCookie(cookieName)
                aCookie.Expires = DateTime.Now.AddDays(-1)
                Response.Cookies.Add(aCookie)
            Next
            Response.Redirect("frmAdminHome.aspx")
        End If
    End Sub

    Protected Sub btnLogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogin.Click

        If txtAID.Text = "admin" And txtPwd.Text = "admin" Then
            Response.Cookies("adminid").Value = "admin"
            Response.Redirect("frmAdminHome.aspx")
            Session.Clear()
        Else
            lblMsg.Text = "Invalied Admin ID Or Password"
        End If

    End Sub
End Class
