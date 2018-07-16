<%@ Page Language="VB" MasterPageFile="~/mpAdminMng.master" AutoEventWireup="false" CodeFile="frmAdminLogin.aspx.vb" Inherits="frmAdminLogin" %>


<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="style1">
        <tr>
            <td align="right">
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="Calibri" 
                    Font-Underline="False" ForeColor="White" NavigateUrl="~/Default.aspx">Go To 
                Home</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style10">
                            <table class="style1">
                                <tr>
                                    <td align="center">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <asp:Label ID="lblMsg" runat="server" Font-Names="Calibri" Font-Size="Small" 
                                            ForeColor="Maroon"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                            <table cellpadding="2" cellspacing="2" class="style1">
                                <tr>
                                    <td align="right" class="style14">
                                        <asp:Label ID="Label1" runat="server" Font-Names="Arial" Text="Admin ID"></asp:Label>
                                        </td>
                                    <td class="style12">
                                        &nbsp;</td>
                                    <td class="style13">
                                        <asp:TextBox ID="txtAID" runat="server" Height="25px" Width="200px"></asp:TextBox>
                                        </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="right" class="style14">
                                        <asp:Label ID="Label2" runat="server" Font-Names="Arial" Text="Password"></asp:Label>
                                        </td>
                                    <td class="style12">
                                        &nbsp;</td>
                                    <td class="style13">
                                        <asp:TextBox ID="txtPwd" runat="server" Height="25px" Width="200px" 
                                            TextMode="Password"></asp:TextBox>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style14">
                                        &nbsp;</td>
                                    <td class="style12">
                                        &nbsp;</td>
                                    <td class="style13">
                                        <asp:Button ID="btnLogin" runat="server" Height="35px" Text="Login As Admin" />
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            &nbsp;</td>
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
        .style10
        {
            background-color: White;
            -moz-border-radius: 6px;/* firefox*/;
            border-radius: 6px;
            width: 472px;
        }
        .style12
        {
            width: 3px;
        }
        .style13
        {
            width: 201px;
        }
        .style14
        {
            width: 236px;
        }
        </style>

</asp:Content>
