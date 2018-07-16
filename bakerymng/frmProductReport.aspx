<%@ Page Language="VB" MasterPageFile="~/mpAdminMng.master"AutoEventWireup="false" CodeFile="frmProductReport.aspx.vb" Inherits="frmProductReport" %>
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
                <Report FileName="rptProducts.rpt">
                    <DataSources>
                        <CR:DataSourceRef DataSourceID="SqlDataSource1" TableName="tblPMaster" />
                    </DataSources>
                </Report>
            </CR:CrystalReportSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:dbWebBMngConnectionString %>" 
                SelectCommand="SELECT [P_Cat], [P_Name], [P_MRP], [P_Disc], [P_CPrice], [P_ID] FROM [tblPMaster]">
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
        width: 837px;
    }
</style>


</asp:Content>

