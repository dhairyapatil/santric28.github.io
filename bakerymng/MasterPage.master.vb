Imports System.Data
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage
    Dim dtbasket As DataTable = Nothing
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Request.Cookies("uname") Is Nothing And Not Request.Cookies("uid") Is Nothing Then
            lblUName.Text = "Wellcome, " + Request.Cookies("uname").Value
            hlLogin.Text = "Logout"
        Else

        End If
        If Not Session("basket") Is Nothing Then
            lblCItem.Text = "Cart Items ( " + CType(Session("basket"), DataTable).Rows.Count.ToString() + " )"
        Else
            lblCItem.Text = "Cart Items ( 0 )"
        End If

    End Sub
End Class

