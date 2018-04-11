<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PersonInfo.aspx.cs" Inherits="PersonInfoPage" %>

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
                    <div>
                        <%
                            if (_PersonInfo != null)
                            {
                                string tempDOB = string.Empty;
                                if (_PersonInfo.DOB != null)
                                {
                                    if (_PersonInfo.ShowDOB != null && _PersonInfo.ShowDOB.Value != 0)
                                    {
                                        tempDOB = _PersonInfo.DOB.Value.ToLongDateString();
                                    }
                                    else
                                    {
                                        //'m' only show Day and Month
                                        tempDOB = _PersonInfo.DOB.Value.ToString("m");
                                    }
                                }

                                Response.Write("<table bgcolor='LightGreen' border='1' cellspacing='1' cellpadding='2'>");
                                Response.Write("<tr><td style='width:350px'>");
                                Response.Write("<b>PersonId: </b>" + _PersonInfo.PersonID + "<br/>");
                                Response.Write("<b>Name: </b>" + _PersonInfo.FullName + "<br/>");
                                Response.Write("<b>Occupation: </b>" + (_PersonInfo.Occupation == null ? "" : _PersonInfo.Occupation.OccupationDesc) + "<br/>");
                                Response.Write("<b>Contact #: </b>" + _PersonInfo.Contact + "<br/>");
                                Response.Write("<b>Date of Birth: </b>" + tempDOB + "<br/>");
                                Response.Write("<b>Place Of Birth: </b>" + _PersonInfo.PlaceOfBirth + "<br/>");
                                Response.Write("<b>Primary Email: </b><a href='mailto:" + _PersonInfo.PrimaryEmail + "'>" + _PersonInfo.PrimaryEmail + "</a><br/>");
                                Response.Write("<b>Secondary Email: </b><a href='mailto:" + _PersonInfo.SecondaryEmail + "'>" + _PersonInfo.SecondaryEmail + "</a><br/>");
                                Response.Write("<b>About Me: </b>" + _PersonInfo.AboutMe + "<br/>");

                                string filePath = Request.PhysicalApplicationPath + "images\\" + _PersonInfo.PersonID + ".jpg";
                                System.IO.FileInfo imageFile = new System.IO.FileInfo(filePath);
                                if (imageFile.Exists == false) filePath = "images\\" + _PersonInfo.Gender + ".jpg";
                                else filePath = "images\\" + _PersonInfo.PersonID + ".jpg";


                                Response.Write("</td><td><img src='" + filePath + "' alt='' /><br/>");
                                Response.Write("</td></tr>");
                                Response.Write("</table>");

                                //TODO: Removing validation for login. For now anyone can Edit
                                //if (_LogedInUserInfo != null && (_LogedInUserInfo.PersonID == _PersonInfo.PersonID || _PersonInfo.ManagedBy == _LogedInUserInfo.PersonID || _LogedInUserInfo.PersonID == 9))
                                //{
                                Response.Write(ExtMethods.Hyperlink("Click here to Update<br/>", "./EditPersonInfoPage.aspx?PersonID=" + _PersonInfo.PersonID));
                                //}
                                ExtMethods.WriteLine(Response);

                                Response.Write(ExtMethods.Bold("Gender: ") + _PersonInfo.Gender);
                                ExtMethods.WriteLine(Response);

                                ExtMethods.WriteLine(Response);
                                if (_PersonInfo.SpouseID != null && _PersonInfo.SpouseID != 0)
                                {
                                    Response.Write(ExtMethods.Bold("Spouse: ") + ExtMethods.Hyperlink(_PersonInfo.Spouse.FullName, "./PersonInfo.aspx?PersonID=" + _PersonInfo.Spouse.PersonID));
                                }
                                else
                                {
                                    //TODO: Anyone can add Spouse
                                    Response.Write(ExtMethods.Bold("Spouse: ") + ExtMethods.Hyperlink("Add Spouse", "./AddPersonInfoPage.aspx?SpouseId=" + _PersonInfo.PersonID));
                                }
                                ExtMethods.WriteLine(Response);

                                /*if (_PersonInfo.FatherID != null && _PersonInfo.FatherID != 0)
                                {
                                    ExtMethods.WriteLine(Response);
                                    Response.Write(ExtMethods.Bold("Father: ") + ExtMethods.Hyperlink(_PersonInfo.Father.FullName, "./PersonInfo.aspx?PersonID=" + _PersonInfo.Father.PersonID));
                                    ExtMethods.WriteLine(Response);
                                    ExtMethods.WriteLine(Response);

                                }*/


                                if (_PersonInfo.Mother != null)
                                {
                                    Response.Write(ExtMethods.Bold("Mother: ") + ExtMethods.Hyperlink(_PersonInfo.Mother.FullName, "./PersonInfo.aspx?PersonID=" + _PersonInfo.Mother.PersonID));
                                    ExtMethods.WriteLine(Response);
                                }

                                Response.Write(ExtMethods.Bold("Cousins: ") + ExtMethods.Hyperlink("All Cousins", "./Cousins.aspx?PersonId=" + _PersonInfo.PersonID));
                                ExtMethods.WriteLine(Response);

                                /*ExtMethods.WriteLine(Response);
                                Response.Write(ExtMethods.Bold("Siblings: "));
                                if (_PersonInfo.Father != null && _PersonInfo.FatherID != 0)
                                {
                                    ExtMethods.WriteLine(Response, ExtMethods.Hyperlink("(Add a sibling)", "./AddPersonInfoPage.aspx"));
                                }
                
                                ExtMethods.WriteLine(Response);

                                if (_PersonInfo.Siblings != null)
                                {
                                    foreach (PersonInfo sibling in _PersonInfo.Siblings)
                                    {
                                        Response.Write("- " + ExtMethods.Hyperlink(sibling.FullName, "./PersonInfo.aspx?PersonID=" + sibling.PersonID));
                                        ExtMethods.WriteLine(Response);
                                    }
                                }

                                if (_PersonInfo.AllChildren != null)
                                {
                                    ExtMethods.WriteLine(Response);
                                    Response.Write(ExtMethods.Bold("Children:"));
                                    if (_PersonInfo.Gender == "Male")
                                    {
                                        ExtMethods.WriteLine(Response, ExtMethods.Hyperlink("(Add a child)", "./AddPersonInfoPage.aspx"));
                                    }
                                    ExtMethods.WriteLine(Response);
                                    foreach (PersonInfo child in _PersonInfo.AllChildren)
                                    {
                                        Response.Write("- " + ExtMethods.Hyperlink(child.FullName, "./PersonInfo.aspx?PersonID=" + child.PersonID));
                                        ExtMethods.WriteLine(Response);
                                    }
                                }*/

                                ExtMethods.WriteLine(Response);
                            }
        
                        %>
                    </div>
                    <!-- Person Tree -->
                    <div class="tree">
                        <div>
                            <ul>
                                <li>

                                    <%--Father--%>
                                    <%if (_PersonInfo.FatherID != null && _PersonInfo.FatherID != 0)
                                      {
                                          Response.Write(string.Format("<a href='./PersonInfo.aspx?PersonID={0}'>{1}</a>", _PersonInfo.FatherID, _PersonInfo.Father.FullName));
                                          //Response.Write(_PersonInfo.Father.FullName);
                                      }
                                      else
                                      {
                                          //Response.Write("Data unavailable");
                                          Response.Write("<a href='#'>Data unavailable</a>");
                                      }
                                    %>

                                    <ul>
                                        <li>
                                            <%
                                                Response.Write(string.Format("<a href='./PersonInfo.aspx?PersonID={0}'>{1}</a>", _PersonInfo.PersonID, _PersonInfo.FullName));

                                                if (_PersonInfo.AllChildren != null)//&& _PersonInfo.AllChildren.Count > 0)
                                                {
                                                    Response.Write("<ul>");
                                                    foreach (PersonInfo child in _PersonInfo.AllChildren)
                                                    {
                                                        string filePath = Request.PhysicalApplicationPath + "images\\" + child.PersonID + ".thumb.jpg";
                                                        System.IO.FileInfo imageFile = new System.IO.FileInfo(filePath);
                                                        if (imageFile.Exists == false) filePath = "images\\" + child.Gender + ".thumb.jpg";
                                                        else filePath = "images\\" + child.PersonID + ".thumb.jpg";

                                                        Response.Write(string.Format("<li><a href='PersonInfo.aspx?PersonID={0}'><img src='{1}' alt='' /><br/>{2}</a></li>", child.PersonID, filePath, child.FullName));
                                                        //Response.Write("<li><a href='PersonInfo.aspx?PersonID=" + child.PersonID + "'><img src='" + filePath + "' alt='' /><br/>" + child.FullName + "</a></li>");
                                                    }
                                                    //Add a new child
                                                    if (_PersonInfo.Gender == "Male")// && _PersonInfo.SpouseID != null && _PersonInfo.SpouseID != 0)
                                                    {
                                                        //Anyone can add child //as long as 'PersonInfo' is male and married.
                                                        Response.Write("<li><a href='./AddPersonInfoPage.aspx?FatherId=" + _PersonInfo.PersonID + "'>Add a child...</a></li>");
                                                    }

                                                    Response.Write("</ul>");
                                                }
                                            %>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- End Person Tree -->
                </td>
            </tr>
        </table>
        <br />
    </form>
</body>
</html>
