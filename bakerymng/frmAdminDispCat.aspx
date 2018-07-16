<%@ Page Language="VB" MasterPageFile="~/mpAdminMng.master" AutoEventWireup="false" CodeFile="frmAdminDispCat.aspx.vb" Inherits="frmAdminDispCat" %>


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
            <td>
                &nbsp;</td>
            <td class="tdadmin_login_bg">
                <asp:ListView ID="lvDispCat" runat="server" GroupItemCount="5" 
                DataSourceID="SqlDataSource1">
                <LayoutTemplate>
                    <table id="groupPlaceholderContainer" runat="server">
                        <tr id="groupPlaceholder" runat="server"></tr>
                    </table>
                </LayoutTemplate>
                <GroupTemplate>
                    <table id="itemPlaceholderContainer" runat="server">
                        <tr id="itemPlaceholder" runat="server"></tr>
                    </table>
                </GroupTemplate>
                <ItemTemplate>
                        <td id="Td1" runat="server" align="center" style="padding: 15px">
                            <asp:Image ID="imgCat" Height="100" Width="150" runat="server" CssClass="imgCat" ImageUrl='<%# "ghImg.ashx?img_id="+Eval("C_Name")%>'/><br />
                            <asp:Label ID="Label1" runat="server" CssClass="lbCat" Text='<%#Eval("C_Name") %>' Font-Names="Arial"></asp:Label>
                        </td>                                                    
                </ItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:sqlConn %>" 
                SelectCommand="SELECT * FROM [tblC_Master]"></asp:SqlDataSource>
                <table class="style1">
                    <tr>
                        <td class="style13">
                            &nbsp;</td>
                        <td>
                            <asp:DataPager ID="dpDCat" runat="server" PagedControlID="lvDispCat" 
                                PageSize="15">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                        ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                    <asp:NumericPagerField />
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" 
                                        ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                </Fields>
                            </asp:DataPager>
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
                &nbsp;</td>
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
            width: 893px;
        }
        .style13
        {
            width: 108px;
        }
    </style>

</asp:Content>
