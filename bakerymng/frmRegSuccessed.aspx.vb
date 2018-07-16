
Partial Class frmRegSuccessed
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label1.Text = Request.QueryString("nm") + "Congrachulation...! You Have Regestered successfully."
    End Sub
End Class
