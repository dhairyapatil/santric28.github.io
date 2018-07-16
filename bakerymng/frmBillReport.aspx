<%@ Page Language="VB" MasterPageFile="~/mpAdminMng.master" AutoEventWireup="false" CodeFile="frmBillReport.aspx.vb" Inherits="frmBillReport" %>

<%@ Register assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server"><table class="style1">
    <tr>
        <td>
            &nbsp;</td>
        <td class="style12">
            <table class="style1">
                <tr>
                    <td class="style8">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:dbWebBMngConnectionString %>" 
                
                            SelectCommand="SELECT [B_ID], [B_Date], [C_MNo], [T_Item], [T_AMT], [C_Name] FROM [tblBBasic] WHERE (([B_Date] &gt;= @B_Date) AND ([B_Date] &lt;= @B_Date2))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" DbType="datetime" 
                        DefaultValue="1/1/2009" Name="B_Date" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox2" DbType="datetime" 
                        DefaultValue="1/1/2099" Name="B_Date2" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
                    </td>
                    <td class="style9">
            <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
                <Report FileName="rptBillReport.rpt">
                    <DataSources>
                        <CR:DataSourceRef DataSourceID="SqlDataSource1" TableName="tblBBasic" />
                    </DataSources>
                </Report>
            </CR:CrystalReportSource>
                    </td>
                    <td class="style13">
                        &nbsp;</td>
                    <td class="style11">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr style="color: #FFFFFF">
                    <td class="style8">
                        From Date</td>
                    <td class="style9">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td class="style13">
                        To Date</td>
                    <td class="style11">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Genrate By Date" />
                    </td>
                </tr>
                <tr>
                    <td class="style8">
                        &nbsp;</td>
                    <td class="style9">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox1" ErrorMessage="Enter Date&lt;br/&gt;" 
                            Font-Names="Calibri" Font-Size="Small"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" 
                            ControlToValidate="TextBox1" ErrorMessage="Invalid Date" Font-Names="Calibri" 
                            Font-Size="Small" MaximumValue="01/01/2099" MinimumValue="01/01/1990" 
                            Type="Date"></asp:RangeValidator>
                    </td>
                    <td class="style13">
                        &nbsp;</td>
                    <td class="style11">
                        <asp:RangeValidator ID="RangeValidator2" runat="server" 
                            ControlToValidate="TextBox2" ErrorMessage="Invalid Date" Font-Names="Calibri" 
                            Font-Size="Small" MaximumValue="01/01/2099" MinimumValue="01/01/1990" 
                            Type="Date"></asp:RangeValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="TextBox2" ErrorMessage="Enter Date&lt;br/&gt;" 
                            Font-Names="Calibri" Font-Size="Small"></asp:RequiredFieldValidator>
                        </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style12">
                <table class="style1">
                    <tr>
                        <td class="style10">
                           
            <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
                AutoDataBind="True" Height="1033px" ReportSourceID="CrystalReportSource1" 
                Width="901px" />
                           
                        </td>
                    </tr>
                </table>
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
        width: 999px;
    }
    div.crystalstyle div {position:absolute; z-index:25}
    .ad7344e7cf-ca88-428d-9f6a-3ea0f197adf3-0 {border-color:#000000;border-left-width:0;border-right-width:0;border-top-width:0;border-bottom-width:0;}
	.fcf7270461-6ecf-463a-ba64-989fe4884c76-0 {font-size:9pt;color:#000000;font-family:Arial;font-weight:normal;text-decoration:underline;}
	.fcf7270461-6ecf-463a-ba64-989fe4884c76-1 {font-size:9pt;color:#000000;font-family:Arial;font-weight:normal;}
	.fcfcfb06a4-7cd7-44fd-be65-09d79e78105f-0 {font-size:9pt;color:#000000;font-family:Arial;font-weight:normal;text-decoration:underline;}
	.fcfcfb06a4-7cd7-44fd-be65-09d79e78105f-1 {font-size:9pt;color:#000000;font-family:Arial;font-weight:normal;}
	    .style8
        {
            width: 151px;
        }
        .style9
        {
            width: 190px;
        }
        .style13
        {
            width: 141px;
        }
        </style>


</asp:Content>
