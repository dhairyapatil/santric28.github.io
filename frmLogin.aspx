<%@ Page Language="VB" AutoEventWireup="false"  MasterPageFile="~/MasterPage.master" CodeFile="frmLogin.aspx.vb" Inherits="frmLogin" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <script type="text/javascript">
    window.history.forward(1);
    </script>
    
    <table class="style1">
    <tr>
        <td>
            &nbsp;</td>
        <td class="style13">
            <table class="style1">
                <tr>
                    <td class="style15">
                        Not Member Yet?</td>
                    <td>
                        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/frmReg.aspx">Sign 
                        Up Here</asp:HyperLink>
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
            <table class="tblmiddle">
                <tr>
                    <td>
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
                                        <asp:Label ID="Label1" runat="server" Font-Names="Arial" Text="User ID"></asp:Label>
                                        </td>
                                    <td>
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
                                    <td>
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
                                    <td>
                                        &nbsp;</td>
                                    <td class="style13">
                                        <asp:Button ID="btnLogin" runat="server" Height="35px" Text="Login" 
                                            Width="118px" />
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
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
        width: 667px;
    }
        .style14
        {
        width: 307px;
    }
        .style15
        {
            width: 119px;
        }
        </style>
    </asp:Content>
    