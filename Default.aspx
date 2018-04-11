<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Import Namespace="System.Linq" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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

    <form id="form1" runat="server">

        <div align="right">
            <asp:Label ID="lblLogin" EnableViewState="false" runat="server" Text="Label"></asp:Label>
        </div>



        <table border="1" cellpadding="10" cellspacing="0" width="100%">
            <tr>
                <!--#include virtual="NavBar.inc"-->
                <td class="style4">
                    <table cellspacing="1" class="style5">
                        <tr>
                            <td class="style8">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style7">
                                <%
                                    using (MyFamilyDatabaseDataContext dc = new MyFamilyDatabaseDataContext())
                                    {
                                        System.Collections.Generic.List<int> picIds = new System.Collections.Generic.List<int>();
                                        foreach (string imageId in System.IO.Directory.GetFiles(Request.PhysicalApplicationPath + "\\images\\", "*.jpg"))
                                        {
                                            System.IO.FileInfo fi = new System.IO.FileInfo(imageId);

                                            //TODO: Remove size check once we don't have bandwith and storage limitation
                                            if (Regex.IsMatch(fi.Name, @"\d+\.jpg") && fi.Length < 20 * 1024)//File size less than 20K
                                            {
                                                picIds.Add(Convert.ToInt32(Regex.Match(fi.Name, @"\d+").Value));
                                            }
                                        }

                                        //Above build list of IDs for images and now query Database to get list o male from the list. This way we have only 1 round-trip query.
                                        //If we do same thing in the loop, that was generating many Sql Queries and perf was slower.
                                        
                                        //Showing only picture of Males.
                                        foreach (var personId in dc.PersonInfos.Where(p => p.Gender == "Male" && picIds.Contains(p.PersonID)).Select(s => s.PersonID))
                                        {
                                            Response.Write(string.Format("<a href='./PersonInfo.aspx?PersonID={0}'><img alt='' src='images/{1}' width='100' height='125' style='border-width: 1px' /></a>", personId, personId + ".jpg"));
                                        }
                                    }
                                
                                %> 
                            </td>
                        </tr>
                    </table>
                    <br />
                    <table cellspacing="1" class="style5">
                        <tr>
                            <td class="style8">Family History</td>
                        </tr>
                        <tr>
                            <td style="font-size: large">Comming Soon...</td>
                        </tr>
                    </table>
                    <br />
                    <table cellspacing="1" class="style5">
                        <tr>
                            <td class="style8">Support Us</td>
                        </tr>
                        <tr>
                            <td style="font-size: large">Comming Soon...</td>
                        </tr>
                    </table>
                    <br />
                    <table cellspacing="1" class="style5">
                        <tr>
                            <td class="style8">Stay Connected</td>
                        </tr>
                        <tr>
                            <td class="style7">
                                <ul>
                                    <li><a href="http://www.facebook.com/groups/BaqaiFamily/" target="_blank">Facebook</a></li>
                                    <li><a href="http://groups.yahoo.com/group/baqai/" target="_blank">Yahoo Group</a></li>
                                    <li><a href="mailto:BaqaiFamily@outlook.com" target="_top">Contact Us (BaqaiFamily@outlook.com)</a></li>
                                </ul>
                            </td>
                        </tr>
                    </table>

                </td>
            </tr>
        </table>
        <br />
    </form>
</body>
</html>
