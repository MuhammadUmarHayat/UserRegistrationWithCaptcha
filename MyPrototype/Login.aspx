<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MyPrototype.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 50%;
            height: 111px;
        }
        .auto-style2 {
            color: #660066;
            text-align: center;
            font-size: xx-large;
        }
        .auto-style3 {
            width: 206px;
        }
        .auto-style4 {
            color: #6600CC;
        }
        .auto-style5 {
            width: 175px;
        }
        .auto-style6 {
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="3"><strong>Login </strong></td>
                </tr>
                <tr>
                    <td class="auto-style3">Enter user name</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" CssClass="auto-style6" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Enter Password</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtPw" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPw" CssClass="auto-style6" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/RegistrationForm.aspx">Register Now</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5"><strong>
                        <asp:Label ID="lblResult" runat="server" CssClass="auto-style4"></asp:Label>
                        </strong></td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
