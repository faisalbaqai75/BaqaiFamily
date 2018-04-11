<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SupportUs.aspx.cs" Inherits="SupportUs" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 3.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

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

    <link href="css/NavBarStyleSheet.css" rel="stylesheet" />
</head>
<body bgcolor="#ccffcc">

    <div align="right">
        <asp:Label ID="lblLogin" EnableViewState="false" runat="server" Text=""></asp:Label>
    </div>

    <table border="1" cellpadding="10" cellspacing="0" width="100%">
        <tr>
            <!--#include virtual="NavBar.inc"-->
            <td>
                <div valign="top">
                    <table cellpadding='2' cellspacing='0' border='1'>
                        <tr>
                            <td>
                                <ul>
                                    <li><a href="https://www.ebates.com/r/FAISAL159?eeid=28187">Sign up</a> for E-Bates, earn cashback on shopping</li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <ul>
                                    <li>Donate thru PayPal:
                                        <br />
                                        <form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
                                            <input type="hidden" name="cmd" value="_s-xclick" />
                                            <input type="hidden" name="hosted_button_id" value="Q2VJ23U2KBVX8" />
                                            <input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!" />
                                            <img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1" />
                                        </form>
                                    </li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <ul>
                                    <li>Sign up for <a href="https://ibotta.com/r/qayyyb">ibotta</a> account, earn free cashback on grocery.</li>
                                </ul>
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
</body>
</html>
