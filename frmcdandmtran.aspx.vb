Imports System.Data.SqlClient
Imports System.Web.Configuration
Imports System.Data
Partial Class frmcdandmtran
    Inherits System.Web.UI.Page
    Dim dtbasket As DataTable
    Dim cn As New SqlConnection(ConfigurationManager.ConnectionStrings("sqlConn").ConnectionString)
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        pmng.Visible = False
        If Not Session("basket") Is Nothing Then
            dtbasket = CType(Session("basket"), DataTable)
        Else
            dtbasket = New DataTable()
            dtbasket.Columns.Add("srno")
            dtbasket.Columns.Add("id")
            dtbasket.Columns.Add("name")
            dtbasket.Columns.Add("pic")
            dtbasket.Columns.Add("price")
            dtbasket.Columns.Add("qt")
            dtbasket.Columns.Add("amt")
        End If
        If Not Request.Cookies("uname") Is Nothing And Not Request.Cookies("uid") Is Nothing Then
            lblCName.Text = Request.Cookies("uname").Value
            lblEID.Text = Request.Cookies("uid").Value

            Dim cmd As New SqlCommand("select * from tblUInfo where U_EID=@1", cn)
            cmd.Parameters.Add("@1", Data.SqlDbType.VarChar).Value = lblEID.Text
            cn.Open()
            Dim dr As SqlDataReader = cmd.ExecuteReader()
            If dr.Read() Then
                lblMobNo.Text = dr(6).ToString()
                gvCart.DataSource = dtbasket
                gvCart.DataBind()
                lblTItems.Text = gvCart.Rows.Count
                Dim amt As Double = 0
                For index As Integer = 0 To dtbasket.Rows.Count - 1
                    amt = Double.Parse(dtbasket.Rows(index).Item(6)) + Double.Parse(amt)
                Next
                lblTAmt.Text = amt
            End If
            cn.Close()



        Else
            Response.Redirect("frmLogin.aspx?ret")
        End If
    End Sub

    Public Function funMax() As Integer
        Dim max As Integer = 0
        Try
            Dim cmd As New SqlCommand("select max(B_ID) from tblBBasic", cn)
            cn.Open()
            max = Convert.ToInt32(cmd.ExecuteScalar())
        Catch ex As Exception
        End Try
        cn.Close()
        Return max
    End Function

    Protected Sub btnP0_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnP0.Click
        Dim cmd As New SqlCommand("select * from tblSArea where P_Code=@1", cn)
        cmd.Parameters.Add("@1", Data.SqlDbType.VarChar).Value = txtPCode.Text
        cn.Open()
        Dim dr As SqlDataReader = cmd.ExecuteReader()
        If dr.Read() Then
            pmng.Visible = True
            lblAMsg.ForeColor = Drawing.Color.Green
            lblAMsg.Text = "Delivery Service Is Available In Your Area"
        Else
            pmng.Visible = False
            lblAMsg.Text = "Delivery Service Is not Available In Your Area"
            lblAMsg.ForeColor = Drawing.Color.Red
        End If
    End Sub

    Protected Sub btnP_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnP.Click
        Dim max As Integer = funMax() + 1
        Dim cmdi As New SqlCommand("INSERT INTO tblBBasic (B_ID, B_Date, C_MNo, C_EID, T_Item, T_AMT, D_Add, D_PCode,C_Name) VALUES (@1,@2,@3,@4,@5,@6,@7,@8,@9 )", cn)
        cmdi.Parameters.Add("@1", SqlDbType.Int).Value = max
        cmdi.Parameters.Add("@2", SqlDbType.DateTime).Value = Today.Date
        cmdi.Parameters.Add("@3", SqlDbType.VarChar).Value = lblMobNo.Text
        cmdi.Parameters.Add("@4", SqlDbType.VarChar).Value = lblEID.Text
        cmdi.Parameters.Add("@5", SqlDbType.Int).Value = lblTItems.Text
        cmdi.Parameters.Add("@6", SqlDbType.Float).Value = Double.Parse(lblTAmt.Text)
        cmdi.Parameters.Add("@7", SqlDbType.VarChar).Value = txtAdd.Text
        cmdi.Parameters.Add("@8", SqlDbType.VarChar).Value = txtPCode.Text
        cmdi.Parameters.Add("@9", SqlDbType.VarChar).Value = lblCName.Text
        cn.Open()
        cmdi.ExecuteReader()
        cn.Close()

        For i As Integer = 0 To gvCart.Rows.Count - 1
            Dim cmd1 As New SqlCommand("INSERT INTO Table3 (B_ID, I_Name, P_Item, I_Qt, amt) VALUES (@1,@2,@3,@4,@5 )", cn)
            cmd1.Parameters.Add("@1", SqlDbType.Int).Value = max
            cmd1.Parameters.Add("@2", SqlDbType.VarChar).Value = gvCart.Rows(i).Cells(1).Text
            cmd1.Parameters.Add("@3", SqlDbType.Float).Value = gvCart.Rows(i).Cells(2).Text
            cmd1.Parameters.Add("@4", SqlDbType.Int).Value = gvCart.Rows(i).Cells(3).Text
            cmd1.Parameters.Add("@5", SqlDbType.Float).Value = gvCart.Rows(i).Cells(4).Text
            cn.Open()
            cmd1.ExecuteReader()
            cn.Close()
        Next
        Response.Redirect("frmPrint.aspx?id=" + max.ToString())
    End Sub
End Class
