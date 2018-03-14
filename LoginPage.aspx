<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="LoginPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-3404660-2"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        var host = window.location.hostname;
        if (host != "localhost") {
            gtag('js', new Date());
            gtag('config', 'UA-3404660-2');
        }
    </script>
    <title>Welcome to Baqai Family</title>
    <link href="NavBarStyleSheet.css" rel="stylesheet" />
</head>
<body bgcolor="#ccffcc">

    <div align="right">
        <asp:Label ID="lblLogin" runat="server" Text="Label"></asp:Label>
    </div>

    <form id="form1" runat="server">

        <br />
        <table border="1" cellpadding="10" cellspacing="0" width="100%">
            <tr>
                <!--#include virtual="NavBar.inc"-->
                <td valign="top">
                    <table border="1" cellpadding="1" cellspacing="1" class="style2">
                        <tr>
                            <td class="style3">
                                <div>
                                    UserName:&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    <br />
                                    Password:&nbsp;&nbsp;        
                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                    <br />
                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
                                    <br />
                                    <br />

                                </div>
                            </td>
                        </tr>
                    </table>
                    <div>
                    </div>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
