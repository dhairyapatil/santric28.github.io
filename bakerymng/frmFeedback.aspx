<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="frmFeedback.aspx.vb" Inherits="frmFeedback" %>
<asp:Content ContentPlaceHolderID ="ContentPlaceHolder1" runat="server">

    <table class="style1">
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14" valign="top">
                <table class="style1">
                    <tr>
                        <td class="style15">
                            &nbsp;</td>
                        <td>
            <asp:Label ID="lblMsg" runat="server" Font-Names="AR BONNIE" 
                Font-Size="X-Large" ForeColor="#003399" Text="YOUR FEEDBACK IS VERY IMPORTANT  FOR US"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style15">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style15">
                            &nbsp;</td>
                        <td>
            <asp:Label ID="Label5" runat="server" Font-Names="AR CENA" Font-Size="Medium" 
                ForeColor="#3366CC" Text="Enter Your Name here"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style15">
                            &nbsp;</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Font-Names="Arial" Font-Size="Large" 
                                Height="30px" Width="325px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style15">
                            &nbsp;</td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="TextBox1" ErrorMessage="Please Enter Your Name" 
                                Font-Names="Calibri" Font-Size="Small"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style15">
                            &nbsp;</td>
                        <td>
            <asp:Label ID="Label6" runat="server" Font-Names="AR CENA" Font-Size="Medium" 
                ForeColor="#3366CC" Text="Enter Your E-Mail ID Here"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style15">
                            &nbsp;</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Font-Names="Arial" Font-Size="Large" 
                                Height="30px" Width="325px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style15">
                            &nbsp;</td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="TextBox2" 
                                ErrorMessage="Please Enter Your E-Mail ID&lt;/br&gt;" Font-Names="Calibri" 
                                Font-Size="Small"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="TextBox2" ErrorMessage="Invalied E-Mail ID" 
                                Font-Names="Calibri" Font-Size="Small" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style15">
                            &nbsp;</td>
                        <td>
            <asp:Label ID="Label7" runat="server" Font-Names="AR CENA" Font-Size="Medium" 
                ForeColor="#3366CC" Text="Enter Your Feedback Here"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style15">
                            &nbsp;</td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" Font-Names="Arial" Font-Size="Medium" 
                                Height="106px" TextMode="MultiLine" Width="325px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style15">
                            &nbsp;</td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="TextBox3" ErrorMessage="Please Enter Your Feedback" 
                                Font-Names="Calibri" Font-Size="Small"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style15">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style15">
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="btnSubmit" runat="server" BackColor="#FFFCE8" 
                                BorderColor="#FF6600" Height="38px" Text="Submit" Width="112px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style15">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
            <td valign="top">
                <table class="style1">
                    <tr>
                        <td class="style16">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="style1">
                                <tr>
                                    <td class="style20">
                                    </td>
                                    <td class="style21">
                                    </td>
                                    <td class="style21">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style17">
                                        &nbsp;</td>
                                    <td>
            <asp:Label ID="Label8" runat="server" Font-Names="AR CENA" Font-Size="Medium" 
                ForeColor="#996633" 
                                            Text="Your Name Helps Us To Identify You When We Need To Suggestion  Of You Which Is Very Important For Us"></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style18">
                                    </td>
                                    <td class="style19">
                                    </td>
                                    <td class="style19">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style17">
                                        &nbsp;</td>
                                    <td>
            <asp:Label ID="Label9" runat="server" Font-Names="AR CENA" Font-Size="Medium" 
                ForeColor="#996633" 
                                            Text="We Can Contact You If We Need To For Our New Changes, Facilities  etc. That Time Your feedback helps us "></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style17">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style17">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style17">
                                        &nbsp;</td>
                                    <td>
            <asp:Label ID="Label10" runat="server" Font-Names="AR BONNIE" 
                Font-Size="X-Large" ForeColor="#003399" Text="Your Feedback"></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-family: 'AR CENA'">
                            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                                <ItemTemplate>
                                    <li style="">  
                                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' ForeColor="#996633" />
                                        <br /> 
                                        <asp:Label ID="eidLabel" runat="server" Text='<%# Eval("eid") %>' ForeColor="#999966" />
                                        <br />                                        
                                        <asp:Label ID="feedbackLabel" runat="server" Text='<%# Eval("feedback") %>'  ForeColor="#999966" />
                                        <br />
                                    </li>
                                </ItemTemplate>
                             
                                <EmptyDataTemplate>
                                   
                                </EmptyDataTemplate>
                         
                                <LayoutTemplate>
                                    <ul ID="itemPlaceholderContainer" runat="server" style="">
                                        <li ID="itemPlaceholder" runat="server" />
                                        </ul>
                                        <div style="">
                                            <asp:DataPager ID="DataPager1" runat="server">
                                                <Fields>
                                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                                        ShowLastPageButton="True" />
                                                </Fields>
                                            </asp:DataPager>
                                        </div>
                                    </LayoutTemplate>
                                    <ItemSeparatorTemplate>
                                        <br />
                                    </ItemSeparatorTemplate>
                                   
                                </asp:ListView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:dbWebBMngConnectionString %>" 
                                    SelectCommand="SELECT * FROM [tblFeeds]"></asp:SqlDataSource>
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
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">

    <style type="text/css">
        .style14
        {
            width: 400px;
        }
        .style15
        {
            width: 22px;
        }
        .style16
        {
            height: 29px;
        }
        .style17
        {
            width: 19px;
        }
        .style18
        {
            width: 19px;
            height: 42px;
        }
        .style19
        {
            height: 42px;
        }
        .style20
        {
            width: 19px;
            height: 30px;
        }
        .style21
        {
            height: 30px;
        }
    </style>

</asp:Content>
