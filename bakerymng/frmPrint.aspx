<%@ Page Language="VB" AutoEventWireup="false" CodeFile="frmPrint.aspx.vb" Inherits="frmPrint" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 752px;
        }
        .style3
        {
            width: 197px;
        }
        .style4
        {
            width: 126px;
        }
        .style5
        {
            width: 312px;
        }
        .style6
        {
            width: 120px;
        }
        .style7
        {
            width: 149px;
        }
        .style16
        {
            width: 85px;
        }
        .style17
        {
            width: 319px;
        }
        .style18
        {
            width: 154px;
        }
        .style11
        {
            width: 125px;
        }
        .style12
        {
            width: 484px;
        }
        .style13
        {
            width: 359px;
        }
        .style19
        {
            width: 129px;
        }
        .style20
        {
            width: 342px;
        }
        .style21
        {
            width: 133px;
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
                <table class="style1">
                    <tr>
                        <td align="right" class="style19">
                            <asp:Label ID="Label27" runat="server" Font-Names="Arial" Font-Size="Small" 
                                ForeColor="#003300" Text="Press Ctr + P To Print"></asp:Label>
                        </td>
                        <td class="style21">
                            &nbsp;</td>
                        <td class="style20">
                            &nbsp;</td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="Arial" 
                                Font-Size="Small" Font-Underline="False" ForeColor="#663300" 
                                NavigateUrl="~/Default.aspx">Go To Home</asp:HyperLink>
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
            <td class="style2" bgcolor="#99CCFF">
                <table id="tblHeader" class="style1">
                    <tr>
                        <td class="style11" valign="bottom">
                            <asp:Image ID="Image5" runat="server" Height="70px" 
                                ImageUrl="~/ico_master/logo_bakery.png" Width="70px" />
                        </td>
                        <td class="style12" valign="bottom">
                            <table class="style1" cellpadding="0">
                                <tr>
                                    <td class="style13">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style13">
                            <asp:Label ID="Label1" runat="server" Font-Names="Forte" Font-Size="30pt" 
                                ForeColor="#0000CC" Text="Online-Bakery"></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </td>
                        <td valign="bottom">
                            <table class="style1">
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="right">
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
            <td class="style2" style="border: thin solid #800080">
                <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <table class="style1">
                            <tr>
                                <td class="style4">
                                    <asp:Label ID="Label11" runat="server" Font-Names="Arial" Text="Booking ID"></asp:Label>
                                </td>
                                <td class="style5">
                                    <asp:Label ID="B_IDLabel" runat="server" Text='<%# Bind("B_ID") %>' />
                                </td>
                                <td class="style6">
                                    <asp:Label ID="Label10" runat="server" Font-Names="Arial" Text="Booking Date"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="B_DateLabel" runat="server" Text='<%# Eval("B_Date","{0:MM/dd/yyyy}") %>' />
                                </td>
                            </tr>
                        </table>
                        <table class="style1">
                            <tr>
                                <td class="style3">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style3">
                                    <asp:Label ID="Label7" runat="server" Font-Names="Arial" Text="Customer Name"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="C_MNoLabel0" runat="server" Text='<%# Bind("C_Name") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="style3">
                                    <asp:Label ID="Label8" runat="server" Font-Names="Arial" Text="Mobile No"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="C_MNoLabel" runat="server" Text='<%# Bind("C_MNo") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="style3">
                                    <asp:Label ID="Label9" runat="server" Font-Names="Arial" Text="Email ID"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="C_EIDLabel" runat="server" Text='<%# Bind("C_EID") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="style3">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                        <table class="style1">
                            <tr>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:GridView ID="gvCart" runat="server" AutoGenerateColumns="False" 
                                        DataSourceID="SqlDataSource2" Width="734px">
                                        <RowStyle Font-Names="Arial" Font-Size="Small" />
                                        <Columns>
                                            <asp:BoundField DataField="I_Name" HeaderText="Item Name">
                                                <ItemStyle Width="300px" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="P_Item" HeaderText="Price Per Item">
                                                <ItemStyle Width="150px" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="I_Qt" HeaderText="Quantity" />
                                            <asp:BoundField DataField="amt" HeaderText="Amount" />
                                        </Columns>
                                        <HeaderStyle Font-Bold="False" Font-Names="Calibri" />
                                    </asp:GridView>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="style1">
                                        <tr>
                                            <td class="style16">
                                                &nbsp;</td>
                                            <td class="style17">
                                                &nbsp;</td>
                                            <td class="style18">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style16">
                                                <asp:Label ID="Label3" runat="server" Font-Names="Arial" Text="Total Items"></asp:Label>
                                            </td>
                                            <td class="style17">
                                                <asp:Label ID="T_ItemLabel" runat="server" Text='<%# Bind("T_Item") %>' />
                                            </td>
                                            <td class="style18">
                                                <asp:Label ID="Label4" runat="server" Font-Names="Arial" Text="Total Amount"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="T_AMTLabel" runat="server" Text='<%# Bind("T_AMT") %>' />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="style1">
                                        <tr>
                                            <td class="style7">
                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                    ConnectionString="<%$ ConnectionStrings:sqlConn %>" 
                                                    SelectCommand="SELECT * FROM [Table3] WHERE ([B_ID] = @B_ID)">
                                                    <SelectParameters>
                                                        <asp:QueryStringParameter DefaultValue="0" Name="B_ID" QueryStringField="id" 
                                                            Type="Int32" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                            </td>
                                            <td>
                                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                                    ConnectionString="<%$ ConnectionStrings:sqlConn %>" 
                                                    SelectCommand="SELECT * FROM [Table3] WHERE ([B_ID] = @B_ID)">
                                                    <SelectParameters>
                                                        <asp:QueryStringParameter DefaultValue="0" Name="B_ID" QueryStringField="id" 
                                                            Type="Int32" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style7">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style7">
                                                <asp:Label ID="Label12" runat="server" Font-Names="Arial" 
                                                    Text="Address (Deliver To)"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="D_AddLabel" runat="server" Text='<%# Bind("D_Add") %>' />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style7">
                                                <asp:Label ID="Label26" runat="server" Font-Names="Arial" Text="Pin Code"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="D_PCodeLabel" runat="server" Text='<%# Bind("D_PCode") %>' />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style7">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:FormView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:sqlConn %>" 
                    SelectCommand="SELECT * FROM [tblBBasic] WHERE ([B_ID] = @B_ID)">
                    <SelectParameters>
                        <asp:QueryStringParameter DefaultValue="0" Name="B_ID" QueryStringField="id" 
                            Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
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
