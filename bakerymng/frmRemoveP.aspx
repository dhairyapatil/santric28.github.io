<%@ Page Language="VB" MasterPageFile="~/mpAdminMng.master" AutoEventWireup="false" CodeFile="frmRemoveP.aspx.vb" Inherits="frmRemoveP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


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
            
                <table class="style1">
                    <tr>
            <td class="style14">
            
                <table cellpadding="2" cellspacing="2" class="style1">
                    <tr>
                        <td class="style13">
                            &nbsp;</td>
                        <td align="right">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style13">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" class="style13">
                                                    <asp:Label ID="Label2" runat="server" 
                                Font-Names="Arial" Text="Select Product name"></asp:Label>
                                                </td>
                        <td>
                            <asp:DropDownList ID="ddlPCat0" runat="server" Height="32px" Width="220px" 
                                DataSourceID="SqlDataSource1" DataTextField="P_Name" DataValueField="P_Name">
                                <asp:ListItem>Select</asp:ListItem>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:sqlConn %>" 
                                SelectCommand="SELECT [P_Name] FROM [tblPMaster]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="style13">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" class="style13">
                                                    &nbsp;</td>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Remove" />
                                                </td>
                    </tr>
                    <tr>
                        <td align="right" class="style13">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            
            </td>
                        <td style="border-left-style: solid; border-left-width: thin; border-left-color: #0000FF" 
                            valign="top">
                            <table class="style1">
                                <tr>
                                    <td align="center">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center">
                                                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" 
                                                        Font-Names="Arial" Font-Underline="False" ForeColor="#0080FF" 
                                                        NavigateUrl="~/frmRemoveP.aspx">Remove Another Product</asp:HyperLink>
                                                </td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <asp:Label ID="lblMsg" runat="server" Font-Names="Arial" Font-Size="Medium" 
                                            ForeColor="#003300"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center">
                                                    &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center">
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
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>


</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">

    <style type="text/css">
        .style12
        {
            width: 810px;
        }
        .style14
        {
            background-color: White;
            -moz-border-radius: 6px;/* firefox*/;
            border-radius: 6px;
            width: 465px;
        }
        .style13
        {
            width: 208px;
        }
    </style>

</asp:Content>
