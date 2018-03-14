<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AllMembers.aspx.cs" Inherits="AllMembers" %>

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
    <title>Welcome to Baqai Family</title>

    <link href="NavBarStyleSheet.css" rel="stylesheet" />
</head>
<body bgcolor="#ccffcc">

    <div align="right">
        <asp:Label ID="lblLogin" runat="server" Text=""></asp:Label>
    </div>
    <form id="form1" runat="server">

        <table border="1" cellpadding="10" cellspacing="0" width="100%">
            <tr>
                <!--#include virtual="NavBar.inc"-->
                <td>
                    <div>
                        <table cellpadding='2' cellspacing='0' border='1'>

                            <%
                                char ch = '0';
                                var personInfos = _db.PersonInfos.Where(p => p.PersonID > 0);
                                //_db.Log = Response.Output;
                                if (_OccupationId != null && _OccupationId > 0)
                                    personInfos = personInfos.Where(p => p.OccupationID == _OccupationId);

                                //foreach (PersonInfo person in personInfos.OrderBy(p => p.FullName))
                                //Using this single 'Select', now it generates only 1 query instead of 10s of query.
                                foreach (var person in personInfos.OrderBy(p => p.FullName).Select(s => new { s.PersonID, s.FatherID, s.Gender, s.FullName, Father = new { FullName = s.Father.FullName } }))
                                {
                                    string fatherName = string.Empty;

                                    if (person.FatherID != null && person.FatherID != 0)
                                    {
                                        fatherName = person.Gender == "Male" ? " (S/O " : " (D/O ";
                                        fatherName += person.Father.FullName + ")";
                                    }

                                    if (char.ToUpper(person.FullName[0]) != ch)
                                    {
                                        ch = char.ToUpper(person.FullName[0]);
                                        Response.Write("</tr>");
                                        Response.Write("</table>");

                                        Response.Write("<BR/><B>" + ch + "</B><BR/>");

                                        Response.Write("<table cellpadding=2 cellspacing=0 border=1>");
                                    }
                                    Response.Write("<tr>");
                                    Response.Write("<td>" + ExtMethods.Hyperlink(person.FullName, "./PersonInfo.aspx?PersonID=" + person.PersonID) + fatherName + "</td>");


                                    Response.Write("</tr>");
                                }
                            %>
                        </table>
                    </div>
                </td>
            </tr>
        </table>
        <br />
    </form>
</body>
</html>
