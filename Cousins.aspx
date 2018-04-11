<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cousins.aspx.cs" Inherits="Cousins" %>

<%@ Import Namespace="System.Linq" %>

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
    <title><%if (_PersonInfo != null) { Response.Write(_PersonInfo.FullName); } %></title>
    <link href="css/TreeTemplate.css" rel="stylesheet" />
    <link href="css/NavBarStyleSheet.css" rel="stylesheet" />
</head>
<body bgcolor="#ccffcc">

    <div align="right">
        <asp:Label ID="lblLogin" EnableViewState="false" runat="server" Text="Label"></asp:Label>
    </div>


    <form id="form1" runat="server">

        <table border="1" cellpadding="10" cellspacing="0" width="100%">
            <tr>
                <!--#include virtual="NavBar.inc"-->
                <td> 
                    <div style="padding-left:20px;"><%Response.Write(ExtMethods.Bold("Cousins of: ") + ExtMethods.Hyperlink(_PersonInfo.FullName, "./PersonInfo.aspx?PersonId=" + _PersonInfo.PersonID));%>
                        <table><tr><td>
                        <%
                            Response.Write("<br/>");
                            if (_PersonInfo != null && _PersonInfo.FatherID > 0 && _PersonInfo.Father.Siblings != null)
                            {
                                //Cousins from Father side
                                ExtMethods.WriteLine(Response, "Father Side");
                                foreach (PersonInfo fatherSibling in _PersonInfo.Father.Siblings)
                                {
                                    var cousins = fatherSibling.AllChildren;
                                    if (cousins != null)
                                    {
                                        Response.Write("<ul>");
                                        Response.Write("<li>" + ExtMethods.Hyperlink(fatherSibling.FullName, "./PersonInfo.aspx?PersonId=" + fatherSibling.PersonID));
                                        Response.Write("<ul>");
                                        foreach (PersonInfo cousin in cousins)
                                        {
                                            Response.Write("<li>" + ExtMethods.Hyperlink(cousin.FullName, "./PersonInfo.aspx?PersonId=" + cousin.PersonID) + "</li>");
                                        }
                                        Response.Write("</li>");
                                        Response.Write("</ul>");
                                        Response.Write("</ul>");
                                    }
                                }
                            }

                            if (_PersonInfo != null && _PersonInfo.Mother != null && _PersonInfo.Mother.Siblings != null)
                            {
                                //Cousins from Mother side
                                ExtMethods.WriteLine(Response, "Mother Side");

                                foreach (PersonInfo motherSibling in _PersonInfo.Mother.Siblings)
                                {
                                    var cousins = motherSibling.AllChildren;
                                    if (cousins != null)
                                    {
                                        Response.Write("<ul>");
                                        Response.Write("<li>" + ExtMethods.Hyperlink(motherSibling.FullName, "./PersonInfo.aspx?PersonId=" + motherSibling.PersonID));
                                        Response.Write("<ul>");
                                        foreach (PersonInfo cousin in cousins)
                                        {
                                            Response.Write("<li>" + ExtMethods.Hyperlink(cousin.FullName, "./PersonInfo.aspx?PersonId=" + cousin.PersonID) + "</li>");
                                        }
                                        Response.Write("</li>");
                                        Response.Write("</ul>");
                                        Response.Write("</ul>");
                                    }
                                }
                            }
                             %>
                            </td></tr></table>
                    </div>
                </td>
            </tr>
            <tr>
                <td> &nbsp;</td>
            </tr>
        </table>
        <br />
    </form>
</body>
</html>
