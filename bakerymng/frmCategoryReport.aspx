<%@ Page Language="VB" MasterPageFile="~/mpAdminMng.master" AutoEventWireup="false" CodeFile="frmCategoryReport.aspx.vb" Inherits="frmCategoryReport" %>

<%@ Register assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td bgcolor="White" class="style14">
                <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
                    AutoDataBind="True" Height="1033px" ReportSourceID="CrystalReportSource1" 
                    Width="901px" />
                <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
                    <Report FileName="rptCategory.rpt">
                        <DataSources>
                            <CR:DataSourceRef DataSourceID="SqlDataSource1" TableName="tblC_Master" />
                        </DataSources>
                    </Report>
                </CR:CrystalReportSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:dbWebBMngConnectionString %>" 
                    SelectCommand="SELECT [C_Name] FROM [tblC_Master]"></asp:SqlDataSource>
            </td>
            <td class="style13">
            </td>
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
            width: 781px;
        }
        .style13
        {
            height: 23px;
        }
        .style14
        {
            width: 781px;
            height: 23px;
        }
    </style>

</asp:Content>
