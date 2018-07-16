<%@ WebHandler Language="VB" Class="ghImg" %>

Imports System
Imports System.Web
Imports System.Data.SqlClient
Imports System.Web.Configuration

Public Class ghImg : Implements IHttpHandler
    Dim cn As New SqlConnection(ConfigurationManager.ConnectionStrings("sqlConn").ConnectionString)
    
    
    Public Sub ProcessRequest(ByVal context As HttpContext) Implements IHttpHandler.ProcessRequest
        context.Response.BinaryWrite(funRetriveImg(context.Request.QueryString("img_id")))
        context.Response.End()
    End Sub
 
    Public Function funRetriveImg(ByVal img_name As String) As Byte()
        cn.Open()
        Dim cmd As New SqlCommand("SELECT C_Img FROM tblC_Master WHERE (C_Name = @nm)", cn)
        cmd.Parameters.Add("@nm", Data.SqlDbType.VarChar).Value = img_name       
        Dim dr As SqlDataReader = cmd.ExecuteReader()
        dr.Read()
        Dim img_byte() As Byte = dr(0)
        cn.Close()
        Return img_byte        
    End Function
    
    Public ReadOnly Property IsReusable() As Boolean Implements IHttpHandler.IsReusable
        Get
            Return False
        End Get
    End Property

End Class