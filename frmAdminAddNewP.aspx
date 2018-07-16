<%@ Page Language="VB" MasterPageFile="~/mpAdminMng.master" AutoEventWireup="false" CodeFile="frmAdminAddNewP.aspx.vb" Inherits="frmAdminAddNewP" %>
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
                                                    <asp:Label ID="Label1" runat="server" 
                                Font-Names="Arial" Text="Select Product Category"></asp:Label>
                                                </td>
                        <td>
                            <asp:DropDownList ID="ddlPCat" runat="server" Height="32px" Width="220px">
                                <asp:ListItem>Select</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="style13">
                            &nbsp;</td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                ControlToValidate="ddlPCat" ErrorMessage="Select Product Category" 
                                Font-Names="Arial" Font-Size="Small" InitialValue="Select"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="style13">
                                                    <asp:Label ID="Label2" runat="server" 
                                Font-Names="Arial" Text="Product name"></asp:Label>
                                                </td>
                        <td>
                                                    <asp:TextBox ID="txtPName" runat="server" Height="25px" 
                                Width="217px"></asp:TextBox>
                                                </td>
                    </tr>
                    <tr>
                        <td align="right" class="style13">
                            &nbsp;</td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtPName" ErrorMessage="You Can't Empty Product Name" 
                                Font-Names="Arial" Font-Size="Small" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                </td>
                    </tr>
                    <tr>
                        <td align="right" class="style13">
                                                    <asp:Label ID="Label3" runat="server" 
                                Font-Names="Arial" Text="Brows Product Image"></asp:Label>
                                                </td>
                        <td>
                                                    <asp:FileUpload ID="fuImage" runat="server" />
                                                </td>
                    </tr>
                    <tr>
                        <td align="right" class="style13">
                            &nbsp;</td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="fuImage" ErrorMessage="Browse Product Image" 
                                Font-Names="Arial" Font-Size="Small" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                </td>
                    </tr>
                    <tr>
                        <td align="right" class="style13">
                                                    <asp:Label ID="Label4" runat="server" 
                                Font-Names="Arial" Text="MRP"></asp:Label>
                                                </td>
                        <td>
                                                    <asp:TextBox ID="txtPMRP" runat="server" Height="25px" 
                                Width="217px"></asp:TextBox>
                                                </td>
                    </tr>
                    <tr>
                        <td align="right" class="style13">
                            &nbsp;</td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="txtPMRP" ErrorMessage="You Can't Empty Product MRP &lt;br/&gt;" 
                                Font-Names="Arial" Font-Size="Small" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                <asp:RangeValidator ID="rvMrp" runat="server" 
                                ControlToValidate="txtPMRP" ErrorMessage="MRP Must Be Neumeric" 
                                Font-Names="Arial" Font-Size="Small" MinimumValue="0" Type="Double"></asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="style13">
                                                    <asp:Label ID="Label5" runat="server" 
                                Font-Names="Arial" Text="Discount"></asp:Label>
                                                </td>
                        <td>
                                                    <asp:TextBox ID="txtDisc" runat="server" Height="25px" 
                                Width="217px"></asp:TextBox>
                                                </td>
                    </tr>
                    <tr>
                        <td align="right" class="style13">
                            &nbsp;</td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="txtDisc" ErrorMessage="You Can't Empty Discount &lt;br/&gt;" 
                                Font-Names="Arial" Font-Size="Small" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                <asp:RangeValidator ID="RangeValidator2" runat="server" 
                                ControlToValidate="txtDisc" 
                                ErrorMessage="Discount Must Be Neumeric And In Percent And  0-100%" 
                                Font-Names="Arial" Font-Size="Small" MaximumValue="100" MinimumValue="0" 
                                Type="Double"></asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="style13" valign="top">
                                                    <asp:Label ID="Label6" runat="server" 
                                Font-Names="Arial" Text="Discription"></asp:Label>
                                                </td>
                        <td>
                                                    <asp:TextBox ID="txtD" runat="server" Height="67px" 
                                Width="241px" TextMode="MultiLine"></asp:TextBox>
                                                </td>
                    </tr>
                    <tr>
                        <td align="right" class="style13">
                            &nbsp;</td>
                        <td>
                                        <asp:Button ID="btnAddNProduct" runat="server" Height="35px" 
                                Text="Add New Product" />
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
                                                        NavigateUrl="~/frmAdminAddNewP.aspx">Add New Product</asp:HyperLink>
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
                                                    <asp:Label ID="lblPName" runat="server" Font-Names="Arial"></asp:Label>
                                                </td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <asp:Image ID="imgP" runat="server" Height="100px" Width="170px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">
                                                    <asp:Label ID="lblPWDisc" runat="server" Font-Names="Arial"></asp:Label>
                                    </td>
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
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">

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
