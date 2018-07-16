<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="frmPDetails.aspx.vb" Inherits="frmPDetails" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style13">
                <table cellpadding="0" cellspacing="0" class="style1">
                    <tr>
                        <td class="style18">
                <asp:Label ID="Label3" runat="server" Font-Names="Arial" 
                    Text="Products Details"></asp:Label>
                        </td>
                        <td class="style16">
                            &nbsp;</td>
                        <td align="right" class="style17">
                            <asp:HyperLink ID="HyperLink4" runat="server" Font-Names="Arial" 
                                Font-Underline="False" ForeColor="#006600" 
                                NavigateUrl="~/frmProductByCat.aspx">Go 
                            Products</asp:HyperLink>
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
            <td class="style13">
                <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" 
                    Font-Names="Arial" Width="830px">  
                    <ItemTemplate>
                       
                        <table bgcolor="#F4EBE1" cellpadding="5" cellspacing="2" class="style1">
                            <tr>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="style1">
                                        <tr>
                                            <td class="style19" valign="top">
                                                <asp:Image ID="imgCat" runat="server" CssClass="imgbg" Height="230px" 
                                                    ImageUrl='<%# "ghImg_PMaster.ashx?img_id="+Eval("P_Name")%>' Width="350px" />
                                            </td>
                                            <td valign="top">
                                                <table class="style1">
                                                    <tr>
                                                        <td class="style21">
                                                            &nbsp;</td>
                                                        <td class="style20">
                                                            Name</td>
                                                        <td>
                                                            <asp:Label ID="P_NameLabel" runat="server" Text='<%# Bind("P_Name") %>' />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style21">
                                                            &nbsp;</td>
                                                        <td class="style20">
                                                            Category</td>
                                                        <td>
                                                            <asp:Label ID="P_CatLabel" runat="server" Text='<%# Bind("P_Cat") %>' />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style21">
                                                            &nbsp;</td>
                                                        <td class="style20">
                                                            MRP</td>
                                                        <td>
                                                            <asp:Label ID="P_MRPLabel" runat="server" Text='<%# Bind("P_MRP") %>' />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style21">
                                                            &nbsp;</td>
                                                        <td class="style20">
                                                            Discount</td>
                                                        <td>
                                                            <asp:Label ID="P_DiscLabel" runat="server" Text='<%# Bind("P_Disc") %>' />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style21">
                                                            &nbsp;</td>
                                                        <td class="style20">
                                                            Our Price</td>
                                                        <td>
                                                            <asp:Label ID="P_CPriceLabel" runat="server" Text='<%# Bind("P_CPrice") %>' />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style21">
                                                            &nbsp;</td>
                                                        <td class="style20">
                                                            &nbsp;</td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style21">
                                                            &nbsp;</td>
                                                        <td class="style20">
                                                            &nbsp;</td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="color: #003300">
                                    Discription</td>
                            </tr>
                            <tr>
                                <td align="justify">
                                    <asp:Label ID="P_DiscriptionLabel" runat="server" Font-Names="Calibri" 
                                        Font-Size="Small" Text='<%# Bind("P_Discription") %>' />
                                </td>
                            </tr>
                        </table>
                       
                    </ItemTemplate>
                </asp:FormView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:sqlConn %>" 
                    SelectCommand="SELECT * FROM [tblPMaster] WHERE ([P_Name] = @P_Name)">
                    <SelectParameters>
                        <asp:QueryStringParameter DefaultValue="0" Name="P_Name" QueryStringField="pid" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
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
            width: 834px;
        }
        .style18
        {
            width: 167px;
        }
            .style16
            {
                width: 429px;
            }
            .style17
            {
                width: 208px;
            }
        .style19
        {
            width: 335px;
        }
        .style20
        {
            width: 135px;
        }
        .style21
        {
            width: 12px;
        }
        </style>

</asp:Content>
