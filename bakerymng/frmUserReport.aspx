<%@ Page Language="VB" MasterPageFile="~/mpAdminMng.master" AutoEventWireup="false" CodeFile="frmUserReport.aspx.vb" Inherits="frmUserReport" %>
<%@ Register assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server"><table class="style1">
    <tr>
        <td>
            &nbsp;</td>
        <td class="style12">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td bgcolor="White" class="style12">
            <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
                AutoDataBind="True" Height="1033px" ReportSourceID="CrystalReportSource1" 
                Width="901px" />
            <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
                <Report FileName="rptUser.rpt">
                    <DataSources>
                        <CR:DataSourceRef DataSourceID="SqlDataSource1" TableName="tblUInfo" />
                    </DataSources>
                </Report>
            </CR:CrystalReportSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:dbWebBMngConnectionString %>" 
                SelectCommand="SELECT [U_Name], [U_EID], [U_DOB], [U_Gen], [U_MNo] FROM [tblUInfo]">
            </asp:SqlDataSource>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style12">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .style12
    {
        width: 838px;
    }
</style>



</asp:Content>
