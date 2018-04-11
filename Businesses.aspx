<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Businesses.aspx.cs" Inherits="Businesses" %>

<%@ Import Namespace="System.Linq" %>

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
    <title>Baqai Family Businesses</title>

    <link href="css/TreeTemplate.css" rel="stylesheet" />
</head>
<body bgcolor="#ccffcc">
    <div align="right">
        <asp:Label ID="lblLogin" EnableViewState="false" runat="server" Text=""></asp:Label>
    </div>
    <form id="form1" runat="server">

        <table border="1" cellpadding="10" cellspacing="0" width="100%">
            <tr>
                <!--#include virtual="NavBar.inc"-->
                <td>
                    <table cellpadding="5" cellspacing="5" class="style4" border="1">
                        <tr>
                            <td>
                                <b>Baqai Medical University</b><br />
                                <img alt="" src="Images/BaqaiMedicalUniversity.jpg"
                                    style="width: 581px; height: 63px" /></td>
                        </tr>
                        <tr>
                            <td>
                                <b>Baqai Hospital</b><br />
                                [TODO: Add image &amp; Link]</td>
                        </tr>
                        <tr>
                            <td>
                                <b>Zamin CNG</b><br />
                                [TODO: Add image &amp; Link]</td>
                        </tr>
                        <tr>
                            <td>
                                <b>Zamin Container Industries</b><br />
                                <img alt="" src="Images/ZaminContainers.jpg"
                                    style="width: 471px; height: 232px" /><br />
                                [TODO: Add link]<br />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <br />
    </form>
</body>
</html>
