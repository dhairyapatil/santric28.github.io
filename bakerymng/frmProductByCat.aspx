<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="frmProductByCat.aspx.vb" Inherits="frmProductByCat" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="style1">
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td class="style20">
                            &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
                            &nbsp;</td>
            <td class="style20">
                <table cellpadding="0" cellspacing="0" class="style1">
                    <tr>
                        <td class="style18">
                <asp:Label ID="Label3" runat="server" Font-Names="Arial" 
                    Text="Products By Catgories"></asp:Label>
                        </td>
                        <td class="style16">
                <asp:Label ID="lblCat" runat="server" Font-Names="Arial" ForeColor="#333300"></asp:Label>
                        </td>
                        <td align="right" class="style17">
                            <asp:HyperLink ID="HyperLink4" runat="server" Font-Names="Arial" 
                                Font-Underline="False" ForeColor="#006600" NavigateUrl="~/frmCategory.aspx">Go 
                            To Categories</asp:HyperLink>
                        </td>
                        <td align="right">
                            <asp:HyperLink ID="HyperLink5" runat="server" Font-Names="Arial" 
                                Font-Underline="False" ForeColor="#006600" NavigateUrl="~/frmCart.aspx">Show 
                            Cart</asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19" valign="top">
                &nbsp;</td>
            <td class="style20">
                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" 
                    GroupItemCount="3">
                    <EmptyItemTemplate>
                        <td runat="server" />
                        </EmptyItemTemplate>
                        <ItemTemplate>
                            <td runat="server" class="tdHover">
                                <asp:Image ID="imgCat" Height="150px" CssClass="imgbg" Width="200px" 
                                    runat="server"  ImageUrl='<%# "ghImg_PMaster.ashx?img_id="+Eval("P_Name") %>'/> 
                                <br /><br />
                                <asp:Label ID="P_NameLabel" runat="server" Text='<%# Eval("P_Name") %>' />
                                <br />
                                Price: 
                                <asp:Label ID="P_CPriceLabel" runat="server" Text='<%# Eval("P_CPrice") %>' />
                                <br />
                                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#006600" 
                                    NavigateUrl='<%# "frmAddToCart.aspx?Nm="+Eval("P_Name") %>'>Add To Cart</asp:HyperLink>&nbsp&nbsp&nbsp
                                <asp:HyperLink ID="hlDetails" runat="server" 
                                    NavigateUrl='<%# "frmPDetails.aspx?pid="+Eval("P_Name") %>' ForeColor="#000066"> Get Details</asp:HyperLink>
                            </td>
                        </ItemTemplate>                      
                        <EmptyDataTemplate>
                            <table runat="server" style="border: thin solid #800000; font-family: Arial, Helvetica, sans-serif; font-size: large; color: #800000;">
                                <tr>
                                    <td>
                                        There Is No Product Found In This Category
                                    </td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>                        
                        <LayoutTemplate>
                            <table runat="server">
                                <tr runat="server">
                                    <td runat="server">
                                        <table ID="groupPlaceholderContainer" runat="server" border="0" style="">
                                            <tr ID="groupPlaceholder" runat="server">
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr runat="server">
                                    <td runat="server" style="">
                                    </td>
                                </tr>
                            </table>
                        </LayoutTemplate>                       
                        <GroupTemplate>
                            <tr ID="itemPlaceholderContainer" runat="server">
                                <td ID="itemPlaceholder" runat="server">
                                </td>
                            </tr>
                        </GroupTemplate>                       
                    </asp:ListView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:sqlConn %>" 
                        SelectCommand="SELECT * FROM [tblPMaster] WHERE ([P_Cat] = @P_Cat)">
                        <SelectParameters>
                            <asp:QueryStringParameter DefaultValue="Bread" Name="P_Cat" 
                                QueryStringField="cat" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td class="style20">
                <asp:DataPager ID="DataPager1" runat="server" PagedControlID="ListView1" 
                    PageSize="12">
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
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td class="style20">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">

    <style type="text/css">
        .style13
        {
            width: 682px;
        }
        .style14
        {
            width: 231px;
        }
            .style16
            {
                width: 133px;
            }
            .style17
            {
                width: 208px;
            }
        .style18
        {
            width: 167px;
        }
        .style19
        {
            width: 84px;
        }
        .style20
        {
            width: 771px;
        }
    </style>

</asp:Content>
