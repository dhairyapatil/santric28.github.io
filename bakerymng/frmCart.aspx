<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="frmCart.aspx.vb" Inherits="frmCart" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="style1">
        <tr>
            <td class="style20">
                &nbsp;</td>
            <td class="style23">
                &nbsp;</td>
            <td>
                            &nbsp;</td>
        </tr>
        <tr>
            <td class="style20">
                &nbsp;</td>
            <td class="style23">
                <table class="style1" bgcolor="#FF6600">
                    <tr>
                        <td class="style16">
                            <asp:Label ID="Label3" runat="server" Font-Names="Arial" Text="Total Items"></asp:Label>
                        </td>
                        <td class="style17">
                            <asp:Label ID="lblTItems" runat="server" Font-Names="Arial">0</asp:Label>
                        </td>
                        <td class="style19">
                            &nbsp;</td>
                        <td class="style18">
                            <asp:Label ID="Label4" runat="server" Font-Names="Arial" Text="Total Amount"></asp:Label>
                        </td>
                        <td class="style25">
                            <asp:Label ID="lblTAmt" runat="server" Font-Names="Arial">0</asp:Label>
                        </td>
                        <td>
                            <asp:HyperLink ID="HyperLink4" runat="server" Font-Names="Arial" 
                                Font-Underline="False" ForeColor="#006600" 
                    NavigateUrl="~/frmCategory.aspx">Go 
                            To Categories</asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                            &nbsp;</td>
        </tr>
        <tr>
            <td class="style20">
                &nbsp;</td>
            <td class="style23">
                <asp:GridView ID="gvCart" runat="server" AutoGenerateColumns="False">
                    <RowStyle CssClass="cart_row" />
                    <Columns>
                        <asp:BoundField HeaderText="Sr. No." DataField="srno" >
                            <ItemStyle Width="100px" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="Image">
                            <ItemTemplate>
                                <asp:Image ID="Image1" Height="80" Width="130" runat="server" ImageUrl='<%# "ghImg_PMaster.ashx?img_id="+Eval("name")%>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField HeaderText="Item Name" DataField="name">
                            <ItemStyle Width="300px" />
                        </asp:BoundField>
                        <asp:BoundField HeaderText="Price Per Item" DataField="price" >
                            <ItemStyle Width="150px" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="Quantity">
                            <ItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Width="70" Text='<%# Bind("qt") %>' ></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Amount">
                        <ItemTemplate>
                            <asp:Label ID="lblamt" runat="server" Text='<%#Eval("amt")%>'></asp:Label>
                        </ItemTemplate>                         
                        </asp:TemplateField>
                        <asp:TemplateField>
                        <ItemTemplate>
                               <asp:HyperLink ID="HyperLink1"  NavigateUrl='<%# "?delID="+Eval("id")%>' runat="server">Remove</asp:HyperLink>
                        </ItemTemplate>                         
                        </asp:TemplateField>

                    </Columns>
                    <HeaderStyle CssClass="cart_row_header" />
                </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style20">
                &nbsp;</td>
            <td class="style23">
                <table class="style1">
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style30">
                            &nbsp;</td>
                        <td class="style27">
                            <asp:Button ID="btnUpdate" runat="server" Text="Update" Width="77px" 
                                Height="36px" />
                        </td>
                        <td>
                            <asp:Button ID="btnUpdate0" runat="server" Text="Buy Now" Width="77px" 
                                Height="36px" PostBackUrl="~/frmcdandmtran.aspx" />
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style20">
                &nbsp;</td>
            <td class="style23">
                <table class="style1">
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style29">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style20">
                &nbsp;</td>
            <td class="style23">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style20">
                &nbsp;</td>
            <td class="style23">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">

    <style type="text/css">
        .style16
        {
            width: 76px;
        }
        .style17
        {
            width: 130px;
        }
        .style18
        {
            width: 119px;
        }
        .style19
        {
            width: 108px;
        }
        .style20
        {
            width: 64px;
        }
        .style23
        {
            width: 843px;
        }
        .style25
        {
            width: 251px;
        }
        .style27
        {
            width: 25px;
        }
        .style29
        {
            width: 609px;
        }
        .style30
        {
            width: 603px;
        }
    </style>

</asp:Content>
