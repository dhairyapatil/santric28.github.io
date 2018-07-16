<%@ Page Language="VB" AutoEventWireup="false" CodeFile="frmcdandmtran.aspx.vb" Inherits="frmcdandmtran" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="Stylesheet" href="sscdandt.css" type="text/css"/>
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 874px;
        }
        .style15
        {
            width: 123px;
        }
        .style14
        {
            width: 615px;
        }
        .style13
        {
            width: 214px;
        }
    .cart_row_header
{
    background-color:#f2b746;
    -moz-border-radius:6px;
    border-radius:6px;
    padding:5px;
    margin:5px;
    border:none;
    font-family:Calibri;
    font-size:larger;
}


.cart_row
{
    background-color:#fceebc;
    -moz-border-radius:6px;
    border-radius:6px;
    padding:5px;
    margin:5px;
    border:none;
        font-family:Calibri;
    font-size:larger;
}
        .style16
        {
            width: 85px;
        }
        .style17
        {
            width: 298px;
        }
        .style18
        {
            width: 113px;
        }
        .style19
        {
            width: 218px;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">

    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                <table class="tblmiddle">
                    <tr>
                        <td>
                            <table class="style1">
                                <tr>
                                    <td class="style15">
                                        &nbsp;</td>
                                    <td class="style14">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style15">
                                        &nbsp;</td>
                                    <td class="style14">
                                        <table class="style1">
                                            <tr>
                                                <td class="style13">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style13">
                                                    <asp:Label ID="Label7" runat="server" Font-Names="Arial" Text="Customer Name"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblCName" runat="server" Font-Names="Arial" ForeColor="#000066"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style13">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style13">
                                                    <asp:Label ID="Label8" runat="server" Font-Names="Arial" Text="Mobile No"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblMobNo" runat="server" Font-Names="Arial" ForeColor="#000066"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style13">
                                                    <asp:Label ID="Label9" runat="server" Font-Names="Arial" Text="Email ID"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblEID" runat="server" Font-Names="Arial" ForeColor="#000066"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style13">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style13">
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
                                    <td class="style15">
                                        &nbsp;</td>
                                    <td class="style14">
                                                    <asp:Label ID="Label11" runat="server" Font-Names="Arial" 
                                            Text="Item List"></asp:Label>
                                                </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style15">
                                        &nbsp;</td>
                                    <td class="style14">
                <asp:GridView ID="gvCart" runat="server" AutoGenerateColumns="False">
                    <RowStyle Font-Names="Arial" Font-Size="Small" />
                    <Columns>
                        <asp:BoundField HeaderText="Sr. No." DataField="srno" >
                            <ItemStyle Width="100px" />
                        </asp:BoundField>
                        <asp:BoundField HeaderText="Item Name" DataField="name">
                            <ItemStyle Width="300px" />
                        </asp:BoundField>
                        <asp:BoundField HeaderText="Price Per Item" DataField="price" >
                            <ItemStyle Width="150px" />
                        </asp:BoundField>

                        <asp:BoundField DataField="qt" HeaderText="Quantity" />
                        <asp:BoundField DataField="amt" HeaderText="Amount" />

                    </Columns>
                    <HeaderStyle Font-Names="Calibri" Font-Bold="False" />
                </asp:GridView>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style15">
                                        &nbsp;</td>
                                    <td class="style14">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style15">
                                        &nbsp;</td>
                                    <td class="style14">
                                        <table class="style1">
                                            <tr>
                                                <td class="style16">
                            <asp:Label ID="Label3" runat="server" Font-Names="Arial" Text="Total Items"></asp:Label>
                                                </td>
                                                <td class="style17">
                            <asp:Label ID="lblTItems" runat="server" Font-Names="Arial">0</asp:Label>
                                                </td>
                                                <td class="style18">
                            <asp:Label ID="Label4" runat="server" Font-Names="Arial" Text="Total Amount"></asp:Label>
                                                </td>
                                                <td>
                            <asp:Label ID="lblTAmt" runat="server" Font-Names="Arial">0</asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style15">
                                        &nbsp;</td>
                                    <td class="style14">
                                        <table class="style1">
                                            <tr>
                                                <td class="style19">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style19" valign="top">
                                                    <asp:Label ID="Label10" runat="server" Font-Names="Arial" 
                                                        Text="Address (Deliver To)"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtAdd" runat="server" Height="79px" Width="245px" 
                                                        TextMode="MultiLine"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style19" valign="top">
                                                    &nbsp;</td>
                                                <td>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                                                        ControlToValidate="txtAdd" ErrorMessage="You Can't Empty Address" 
                                                        Font-Names="Arial" Font-Size="Small"></asp:RequiredFieldValidator>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="style19">
                                                    <asp:Label ID="Label26" runat="server" Font-Names="Arial" Text="Pin Code"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtPCode" runat="server" Height="25px" Width="245px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style19">
                                                    &nbsp;</td>
                                                <td>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                                                        ControlToValidate="txtPCode" ErrorMessage="You Can't Empty Card. No.&lt;br/&gt;" 
                                                        Font-Names="Arial" Font-Size="Small"></asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                                                        ControlToValidate="txtPCode" 
                                                        ErrorMessage="Pin. No. Must Be 6 Digits And Neumric" Font-Names="Arial" 
                                                        Font-Size="Small" SetFocusOnError="True" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style19">
                                                    &nbsp;</td>
                                                <td>
                                                    <asp:Button ID="btnP0" runat="server" Height="30px" Text="Enter pincode to check serviceability" 
                                                        Width="245px" BorderColor="#0099FF" BorderStyle="Solid" 
                                                        ForeColor="#000066" CausesValidation="False" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style19">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style19">
                                                    &nbsp;</td>
                                                <td>
                                                    <asp:Label ID="lblAMsg" runat="server" Font-Names="Arial"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style19">
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
                                    <td class="style15">
                                        &nbsp;</td>
                                    <td class="style14">
                                        <table id="pmng" runat="server" class="style1">
                                            <tr>
                                                <td class="style13">
                                                    &nbsp;</td>
                                                <td>
                                                    <asp:Label ID="Label22" runat="server" Font-Names="Arial" Text="Creat Payment"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style13">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style13">
                                                    <asp:Label ID="Label21" runat="server" Font-Names="Arial" 
                                                        Text="Select Your Payment Method *"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="ddlPMethod" runat="server" Height="30px" Width="245px">
                                                        <asp:ListItem Value="0">Select</asp:ListItem>
                                                        <asp:ListItem>Credit Card</asp:ListItem>
                                                        <asp:ListItem>Debit Card</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style13">
                                                    &nbsp;</td>
                                                <td>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                                        ControlToValidate="ddlPMethod" ErrorMessage="Select Payment Method" 
                                                        Font-Names="Arial" Font-Size="Small" InitialValue="0"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style13">
                                                    <asp:Label ID="Label23" runat="server" Font-Names="Arial" Text="Card Number *"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtCNo" runat="server" Height="25px" Width="245px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style13">
                                                    &nbsp;</td>
                                                <td>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                                        ControlToValidate="txtCNo" ErrorMessage="You Can't Empty Card. No.&lt;br/&gt;" 
                                                        Font-Names="Arial" Font-Size="Small"></asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                                                        ControlToValidate="txtCNo" 
                                                        ErrorMessage="Card. No. Must Be 16 Digits And Neumric" Font-Names="Arial" 
                                                        Font-Size="Small" SetFocusOnError="True" ValidationExpression="\d{16}"></asp:RegularExpressionValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style13">
                                                    <asp:Label ID="Label24" runat="server" Font-Names="Arial" Text="Expire Date *"></asp:Label>
                                                </td>
                                                <td>
                                                    <table class="style1">
                                                        <tr>
                                                            <td class="style16">
                                                                <asp:DropDownList ID="ddlEMonth" runat="server" Height="30px" Width="50px">
                                                                    <asp:ListItem Value="0">MM</asp:ListItem>
                                                                    <asp:ListItem>1</asp:ListItem>
                                                                    <asp:ListItem>2</asp:ListItem>
                                                                    <asp:ListItem>3</asp:ListItem>
                                                                    <asp:ListItem>4</asp:ListItem>
                                                                    <asp:ListItem>5</asp:ListItem>
                                                                    <asp:ListItem>6</asp:ListItem>
                                                                    <asp:ListItem>7</asp:ListItem>
                                                                    <asp:ListItem>8</asp:ListItem>
                                                                    <asp:ListItem>9</asp:ListItem>
                                                                    <asp:ListItem>10</asp:ListItem>
                                                                    <asp:ListItem>11</asp:ListItem>
                                                                    <asp:ListItem>12</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </td>
                                                            <td class="style17">
                                                                <asp:DropDownList ID="ddlEYear" runat="server" Height="30px" Width="70px">
                                                                    <asp:ListItem Value="0">YYYY</asp:ListItem>
                                                                    <asp:ListItem>2013</asp:ListItem>
                                                                    <asp:ListItem>2014</asp:ListItem>
                                                                    <asp:ListItem>2015</asp:ListItem>
                                                                    <asp:ListItem>2016</asp:ListItem>
                                                                    <asp:ListItem>2017</asp:ListItem>
                                                                    <asp:ListItem>2018</asp:ListItem>
                                                                    <asp:ListItem>2019</asp:ListItem>
                                                                    <asp:ListItem>2020</asp:ListItem>
                                                                    <asp:ListItem>2021</asp:ListItem>
                                                                    <asp:ListItem>2022</asp:ListItem>
                                                                    <asp:ListItem>2023</asp:ListItem>
                                                                    <asp:ListItem>2025</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style13">
                                                    &nbsp;</td>
                                                <td>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                                        ControlToValidate="ddlEMonth" ErrorMessage="Select Moth" Font-Names="Arial" 
                                                        Font-Size="Small" InitialValue="0"></asp:RequiredFieldValidator>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                                        ControlToValidate="ddlEYear" ErrorMessage="Select Year" Font-Names="Arial" 
                                                        Font-Size="Small" InitialValue="0"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style13">
                                                    <asp:Label ID="Label25" runat="server" Font-Names="Arial" 
                                                        Text="3 Digits CVV No *"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtCVV" runat="server" Height="25px" Width="123px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style13">
                                                    &nbsp;</td>
                                                <td>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                                                        ControlToValidate="txtCVV" ErrorMessage="You Can't Empty CVV" 
                                                        Font-Names="Arial" Font-Size="Small" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style13">
                                                    &nbsp;</td>
                                                <td>
                                                    <asp:Button ID="btnP" runat="server" Height="30px" Text="Proceed" 
                                                        Width="100px" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style13">
                                                    &nbsp;</td>
                                                <td>
                                                    <asp:Label ID="lblMsg" runat="server" Font-Names="Calibri" Font-Size="X-Small" 
                                                        ForeColor="Maroon"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style13">
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
                                    <td class="style15">
                                        &nbsp;</td>
                                    <td class="style14">
                                        &nbsp;</td>
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
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</form>

</body>
</html>
