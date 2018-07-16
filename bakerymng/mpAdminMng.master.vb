
Partial Class mpAdminMng
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Request.Cookies("adminid") Is Nothing Then
            a_menu.Visible = False
            hpLogin.Visible = False
        Else
            a_menu.Visible = True
            hpLogin.Visible = True
            hpLogin.Text = "Logout"
        End If
    End Sub
End Class

