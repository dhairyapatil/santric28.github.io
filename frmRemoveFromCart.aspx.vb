
Partial Class frmRemoveFromCart
    Inherits System.Web.UI.Page
    Dim clsC As New clsCart_dt()
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        clsC.funRemove(Request.QueryString("pid"))
        Response.Redirect("frmCart.aspx")
    End Sub
End Class
