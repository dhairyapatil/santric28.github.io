<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <table class="style1">
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <table class="tbl1">
                <tr>
                    <td class="style8" valign="top">
                        <table class="style1">
                            <tr>
                                <td style="margin-left: 10px">
                                    <table class="style1">
                                        <tr>
                                            <td>
                                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Calibri" 
                                        Font-Size="X-Large" ForeColor="#6D1D1D" Text="Product :"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td class="style12">
                                <ul class="ulProduct">
                                    <li><a href="#">Celebration Cakes</a></li>
                                    <li><a href="#">Donuts</a></li>
                                    <li><a href="#">Cookies</a></li>
                                    <li><a href="#">Eggs</a></li>
                                    <li><a href="#">Milk</a></li>
                                    <li><a href="#">Muffins</a></li>
                                    <li><a href="#">Roolls</a></li>
                                </ul>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                    <td class="style9" valign="top">
                        <table class="style1">
                            <tr>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                                        ForeColor="#6D1D1D" Text="Welcome !"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="style1">
                                        <tr>
                                            <td class="style10">
                                                <asp:Image ID="Image5" runat="server" CssClass="img" Height="105px" 
                                                    ImageUrl="~/ico_Default/1page_img1.jpg" Width="150px" />
                                            </td>
                                            <td>
                                                <asp:Image ID="Image6" runat="server" CssClass="img" Height="105px" 
                                                    ImageUrl="~/ico_Default/1page_img2.jpg" Width="150px" />
                                            </td>
                                            <td>
                                                <asp:Image ID="Image7" runat="server" CssClass="img" Height="105px" 
                                                    ImageUrl="~/ico_Default/1page_img3.jpg" Width="150px" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Font-Names="Calibri" Font-Size="Medium" 
                                        ForeColor="#996633" 
                                        
                                        Text="we believe that bread should always be healthy and natural. That's why our delicious breads are baked fresh every day using a sourdough base with no added sugar, preservatives or cholesterol. "></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Font-Names="Calibri" Font-Size="Medium" 
                                        ForeColor="#996633" 
                                        Text="We also bake bread to suit people with dietary restrictions. Check out our range of gluten-free, dairy-free and low GI breads. "></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                    <td valign="top">
                        <table class="style1">
                            <tr>
                                <td>
                                    <asp:Image ID="Image8" runat="server" Height="250px" Width="280px" 
                                        ImageUrl="~/ico_Default/sweet_1.jpg" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Image ID="Image9" runat="server" Height="100px" Width="280px" 
                                        CssClass="img" ImageUrl="~/ico_Default/banner-2.jpg" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>

</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .style7
    {
        width: 654px;
    }
        .style8
        {
            width: 174px;
        }
        .style9
        {
            width: 477px;
        }
        .style10
        {
            width: 153px;
        }
    .style11
    {
        width: 11px;
    }
    .style12
    {
        height: 137px;
    }
        </style>
</asp:Content>