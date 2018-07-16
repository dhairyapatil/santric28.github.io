
Partial Class frmUpdateCart
    Inherits System.Web.UI.Page
    Dim clsC As New clsCart_dt()
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Response.Write(Request.QueryString("pid"))
    End Sub
End Class
