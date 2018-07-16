<%@ Page Language="VB"  MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="frmReg.aspx.vb" Inherits="frmReg" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <table class="style1" id="ddl">
        <tr>
            <td class="style18">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#F0F0F0" class="style18" style="border: 1px solid #D6ABAB">
                <table class="style1" style="padding: 8px" cellpadding="0" cellspacing="0">
                    <tr>
                        <td valign="top">
                            <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Names="Arial" 
                                Text="Name"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtName" runat="server" Height="25px" Width="300px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtName" ErrorMessage="You Can't Empty Name" 
                                Font-Names="Arial" Font-Size="Small" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top">
                            <asp:Label ID="Label4" runat="server" Font-Bold="False" Font-Names="Arial" 
                                Text="Enter Your Email ID"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtUID" runat="server" Height="25px" Width="300px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style24">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtUID" ErrorMessage="You Can't Empty E-Mail ID &lt;br/&gt;" 
                                Font-Names="Arial" Font-Size="Small"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="txtUID" ErrorMessage="Invalid E-Mail ID" Font-Names="Arial" 
                                Font-Size="Small" SetFocusOnError="True" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top">
                            <asp:Label ID="Label5" runat="server" Font-Bold="False" Font-Names="Arial" 
                                Text="Creat Password"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtPwd" runat="server" Height="25px" Width="300px" 
                                TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="txtPwd" ErrorMessage="You Can't Empty E-Mail ID &lt;br/&gt;" 
                                Font-Names="Arial" Font-Size="Small" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                ControlToCompare="txtCPwd" ControlToValidate="txtPwd" 
                                ErrorMessage="Password And Confirm Password Does Not Match" Font-Names="Arial" 
                                Font-Size="Small"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top">
                            <asp:Label ID="Label6" runat="server" Font-Bold="False" Font-Names="Arial" 
                                Text="Confirm Your Password"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtCPwd" runat="server" Height="25px" Width="300px" 
                                TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <table cellpadding="0" cellspacing="0" class="style1">
                                <tr>
                                    <td class="style19">
                            <asp:Label ID="Label7" runat="server" Font-Bold="False" Font-Names="Arial" 
                                Text="Birthday"></asp:Label>
                                    </td>
                                    <td>
                            <asp:TextBox ID="txtBDate" runat="server" Height="25px" Width="175px" 
                                            ToolTip="Date Format : mm/dd/yyyy  eg. 01/02/2010"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                ControlToValidate="txtBDate" ErrorMessage="You Can't Empty DOB &lt;br/&gt;" 
                                Font-Names="Arial" Font-Size="Small" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                                ErrorMessage="Please Enter Valid Date" ControlToValidate="txtBDate" 
                                Font-Names="Arial" Font-Size="Small" MaximumValue="1/1/2099" 
                                MinimumValue="1/1/1970" Type="Date"></asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table cellpadding="0" cellspacing="0" class="style1">
                                <tr>
                                    <td class="style23">
                            <asp:Label ID="Label19" runat="server" Font-Bold="False" Font-Names="Arial" 
                                Text="Gender"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddlGen" runat="server" Height="30px" Width="180px">
                                            <asp:ListItem Value="0">Select</asp:ListItem>
                                            <asp:ListItem>Male</asp:ListItem>
                                            <asp:ListItem>Female</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style23">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                ControlToValidate="ddlGen" ErrorMessage="Select Gender" 
                                Font-Names="Arial" Font-Size="Small" InitialValue="0"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top">
                            <table cellpadding="0" cellspacing="0" class="style1">
                                <tr>
                                    <td class="style19">
                            <asp:Label ID="Label20" runat="server" Font-Bold="False" Font-Names="Arial" 
                                Text="Mobile No"></asp:Label>
                                    </td>
                                    <td>
                            <asp:TextBox ID="txtMNo" runat="server" Height="25px" Width="175px" 
                                            ToolTip="Date Format : dd/mm/yyyy  eg. 01/02/2010"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="txtMNo" ErrorMessage="You Can't Empty Mob. No.&lt;br/&gt;" 
                                Font-Names="Arial" Font-Size="Small"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                ControlToValidate="txtMNo" 
                                ErrorMessage="Mob. No. Must Be 10 Digits And Neumric" Font-Names="Arial" 
                                Font-Size="Small" SetFocusOnError="True" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top">
                            <asp:Label ID="Label9" runat="server" Font-Bold="False" Font-Names="Arial" 
                                Text="Enter Your Address"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtAdd" runat="server" Height="45px" Width="300px" 
                                TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                ControlToValidate="txtAdd" ErrorMessage="You Can't Empty Address" 
                                Font-Names="Arial" Font-Size="Small"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top">
                            <asp:Label ID="Label10" runat="server" Font-Bold="False" Font-Names="Arial" 
                                Text="Enter Pincode"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtPCode" runat="server" Height="25px" Width="300px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                ControlToValidate="txtPCode" 
                                ErrorMessage="You Can't Empty Pincode No.&lt;br/&gt;" Font-Names="Arial" 
                                Font-Size="Small"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                                ControlToValidate="txtPCode" 
                                ErrorMessage="Pincode Must Be 6 Digits And Neumric" Font-Names="Arial" 
                                Font-Size="Small" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Button ID="btnCreat" runat="server" BackColor="#5353FF" 
                                BorderColor="#000099" BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial" 
                                ForeColor="White" Height="30px" Text="Creat" Width="100px" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
            <td class="style21">
                &nbsp;</td>
            <td class="style17" valign="top">
                <table class="style1">
                    <tr>
                        <td class="style22" valign="top">
                            <table class="style1">
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
                        <td>
                                    <asp:Image ID="Image2" runat="server" Height="150px" Width="280px" 
                                        CssClass="img" BackColor="#6699FF" ImageUrl="~/ico_Default/img2.jpg" />
                                </td>
                    </tr>
                    <tr>
                        <td class="style22" valign="top">
                            <table class="style1">
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
                        <td>
                                    <asp:Image ID="Image3" runat="server" Height="150px" Width="280px" 
                                        CssClass="img" BackColor="#6699FF" ImageUrl="~/ico_Default/img3.jpg" />
                                </td>
                    </tr>
                    <tr>
                        <td class="style22" valign="top">
                            <table class="style1">
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
                        <td>
                                    <asp:Image ID="Image4" runat="server" Height="150px" Width="280px" 
                                        CssClass="img" BackColor="#6699FF" ImageUrl="~/ico_Default/img5.jpg" />
                                </td>
                    </tr>
                    <tr>
                        <td class="style22" valign="top">
                            <table class="style1">
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
                        <td>
                                    <asp:Image ID="Image5" runat="server" Height="150px" Width="280px" 
                                        CssClass="img" BackColor="#6699FF" 
                                        ImageUrl="~/ico_Default/1page_img1.jpg" />
                                </td>
                    </tr>
                </table>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style18">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>



</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">

    <style type="text/css">
        .style17
        {
            width: 621px;
        }
    .style18
    {
        width: 305px;
    }
    .style19
    {
        width: 152px;
    }
        .style21
        {
            width: 33px;
        }
        .style22
        {
            width: 307px;
        }
    .style23
    {
        width: 124px;
    }
        .style24
        {
            height: 48px;
        }
    </style>

</asp:Content>
