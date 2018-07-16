<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="frmCategory.aspx.vb" Inherits="frmCategory" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="style1">
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style13">
                <table cellpadding="0" cellspacing="0" class="style1">
                    <tr>
                        <td class="style15">
                <asp:Label ID="Label3" runat="server" Font-Names="Arial" 
                    Text="Product Catgories"></asp:Label>
                        </td>
                        <td class="style16">
                            &nbsp;</td>
                        <td align="right" class="style17">
                            <asp:HyperLink ID="HyperLink4" runat="server" Font-Names="Arial" 
                                Font-Underline="False" ForeColor="#006600" NavigateUrl="~/frmCategory.aspx">Go 
                            To Categories</asp:HyperLink>
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
            <td class="style14">
                &nbsp;</td>
            <td class="style13">
                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" 
                    GroupItemCount="3">
                    <EmptyItemTemplate>
                        <td runat="server"  />
                        </EmptyItemTemplate>
                        <ItemTemplate>                                             
                            <td runat="server" class="tdHover">
                            <a href='<%# "frmProductByCat.aspx?cat="+Eval("C_Name")%>' class="lva">  
                               <asp:Image ID="imgCat" Height="150" CssClass="imgbg" Width="200" runat="server"  ImageUrl='<%# "ghImg.ashx?img_id="+Eval("C_Name")%>'/>                                
                                <br /><br />
                               Category : 
                                <asp:Label ID="C_NameLabel" runat="server" Text='<%#Eval("C_Name") %>' />
                                <br />   
                            </a>                             
                            </td>                
                        </ItemTemplate>                       
                        <EmptyDataTemplate>
                            <table runat="server" style="">
                                <tr>
                                    <td>
                                        No data was returned.</td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>                       
                        <LayoutTemplate>
                            <table runat="server">
                                <tr runat="server" >
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
                        SelectCommand="SELECT * FROM [tblC_Master]"></asp:SqlDataSource>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style14">
                    &nbsp;</td>
                <td class="style13">
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
                <td class="style14">
                    &nbsp;</td>
                <td class="style13">
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
                width: 699px;
            }
            .style14
            {
                width: 228px;
            }
            .style15
            {
                width: 213px;
            }
            .style16
            {
                width: 253px;
            }
            .style17
            {
                width: 208px;
            }
        </style>

    </asp:Content>
