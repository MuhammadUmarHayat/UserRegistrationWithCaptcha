<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="MyPrototype.RegistrationForm" %>
<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cap" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 65%;
            height: 206px;
        }
        .auto-style2 {
            font-size: x-large;
            text-align: center;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
            width: 221px;
        }
        .auto-style7 {
            width: 221px;
        }
        .auto-style8 {
            height: 23px;
            width: 197px;
        }
        .auto-style9 {
            width: 197px;
        }
        .auto-style10 {
            color: #FF0000;
        }
        .auto-style11 {
            color: #660066;
        }
        .auto-style12 {
            color: #333300;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>


            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="3"><strong>Registration Form</strong></td>
                </tr>
                <tr>
                    <td class="auto-style6">Enter full name</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" CssClass="auto-style10" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">enter Sir Name</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtSirName" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSirName" CssClass="auto-style10" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">enter user name</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtUsername" CssClass="auto-style10" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Enter password</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtPw" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPw" CssClass="auto-style10" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">confirm password</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtRPw" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtRPw" CssClass="auto-style10" ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtRPw" ControlToValidate="txtPw" CssClass="auto-style10" ErrorMessage="Not Matched"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">email</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtEmail" CssClass="auto-style10" ErrorMessage="*"></asp:RequiredFieldValidator>
                        <strong>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" CssClass="auto-style12" ErrorMessage="not correct formate" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style7">Confirm email</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtREmail" runat="server"></asp:TextBox>
                        <strong>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtREmail" CssClass="auto-style12" ErrorMessage="not correct formate" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </strong></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtREmail" CssClass="auto-style10" ErrorMessage="*"></asp:RequiredFieldValidator>
                        <strong>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtEmail" ControlToValidate="txtREmail" CssClass="auto-style10" ErrorMessage="Not matched"></asp:CompareValidator>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style7">Preferred language</td>
                    <td class="auto-style9">
                        <asp:DropDownList ID="ddlLanguage" runat="server">
                            <asp:ListItem>Urdu</asp:ListItem>
                            <asp:ListItem>English</asp:ListItem>
                            <asp:ListItem>Pushto</asp:ListItem>
                            <asp:ListItem>Chinees</asp:ListItem>
                            <asp:ListItem>French</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ddlLanguage" CssClass="auto-style10" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
    <td class="auto-style7">CAPTCHA</td>
    <td class="auto-style9">
        <cap:CaptchaControl ID="captcha1" runat="server" CaptchaLength="5" CaptchaHeight="50" CaptchaWidth="200" CaptchaLineNoise="None" CaptchaMinTimeout="3" CaptchaMaxTimeout="240" ForeColor="Blue" BackColor="Yellow" CaptchaChars="ABCDEFGHIJKLMNOPQRSTUVWX123456789" Height="46px" Width="200px" />
    </td>
    <td>
        &nbsp;
    </td>
</tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtCapcha" runat="server" Width="179px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtCapcha" CssClass="auto-style10" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">&lt;-Back</asp:HyperLink>
                    </td>
                    <td class="auto-style9">
                        <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Register Now" />
                        &nbsp;
                        <asp:Button ID="btnCancel" runat="server" CausesValidation="False" Text="Cancel" />
                    </td>
                    <td><strong>
                        <asp:Label ID="lblResult" runat="server" CssClass="auto-style11"></asp:Label>
                        </strong></td>
                </tr>
            </table>


        </div>
    </form>
</body>
</html>
