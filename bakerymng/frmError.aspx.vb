
Partial Class frmError
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Response.Write("Error : " + Request.QueryString("error"))
    End Sub
End Class
