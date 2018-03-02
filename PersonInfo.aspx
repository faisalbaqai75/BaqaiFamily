<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PersonInfo.aspx.cs" Inherits="PersonInfoPage" %>

<%@ Import Namespace="System.Linq" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-3404660-2"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-3404660-2');
</script>
    <title><%if (_PersonInfo != null) { Response.Write(_PersonInfo.FullName); } %></title>
    <link href="TreeTemplate.css" rel="stylesheet" />
    <style type="text/css">
        .style3 {
            width: 187px;
            height: 522px;
        }

        .sidemenu {
            list-style: none;
            margin: 0;
            padding-left: 2px;
            padding-right: 0;
            padding-top: 0;
            padding-bottom: 0;
            font-size: 14px;
        }

            .sidemenu li {
                padding-top: 5px;
                padding-right: 1px;
            }

            .sidemenu li {
                padding-left: 11px;
                /*background: url(http://www.ebi.ac.uk/inc/images/leftmenu/level1_link.gif) no-repeat  top left;
	*/ color: #006666;
            }




                .sidemenu li.leftmenudivider {
                    padding: 0;
                    border: none 0;
                    width: 100%;
                    height: 1px;
                    /*background: #ffffff url(http://www.ebi.ac.uk/inc/images/line.jpg) repeat scroll center;
 	*/ text-align: left;
                    margin: 10px 0px 10px 0px; /* top right bottom left*/
                    font-size: 1px;
                }



        .slidecontainer_open {
            border: 1px solid #bfbfbf;
            width: 162px;
            padding: 0px;
            margin: 5px 0px 10px 2px;
        }


        .iconbox2heading {
            border: 1px solid #bfbfbf;
            padding-left: 5px;
            position: relative;
            padding-right: 4px;
            padding-top: 3px;
            padding-bottom: 4px;
            margin-top: 1px;
            margin-left: 1px;
            margin-bottom: 0px;
            border-collapse: collapse;
            width: 150px;
            height: auto;
            font-weight: bold;
            font-size: 10pt;
            /*background-color: #edf6f5;*/
            text-align: left;
            top: 0px;
            left: 0px;
        }

        .headerToggle {
            cursor: pointer;
            float: right;
            text-align: center;
            vertical-align: middle;
        }

        .headerToggleImage {
            width: 16px;
            height: 16px;
            border: 0px;
        }

        .iconbox2contents {
            position: relative;
            border-top: 1px solid #bfbfbf;
            border-bottom: 1px;
            border-left: 1px solid #bfbfbf;
            border-right: 1px solid #bfbfbf;
            padding-top: 3px;
            padding-bottom: 5px;
            padding-left: 4px;
            padding-right: 4px;
            margin: 1px 1px 1px 2px;
            width: 150px;
            font-size: 10pt;
            vertical-align: top;
            display: none;
        }

            .iconbox2contents ul li, .iconbox2contents_gr ul li {
                margin-top: 0px;
                margin-bottom: 6px;
                margin-left: -22px;
                font-size: 10pt;
                border: 1;
                padding: 1;
                list-style: square;
            }
    </style>
</head>
<body bgcolor="#ccffcc">

    <div align="right">
        <asp:Label ID="lblLogin" runat="server" Text="Label"></asp:Label>
    </div>


    <form id="form1" runat="server">

        <table border="1" cellpadding="10" cellspacing="0" width="100%">
            <tr>
                <td class="style3" valign="top">

                    <div class="slidecontainer_open">
                        <div class="iconbox2heading">
                            <span id="news" class="headerToggle">
                                <img class="headerToggleImage"
                                    src="./images/minus.gif" /></span>Baqai Family
                        </div>
                        <div id="news_content" class="iconbox2contents"
                            style="display: block; top: 0px; left: -1px; height: 90px;">
                            <%--                            <ul>
                                <li><a href="./Default.aspx">Home</a></li>
                                <li><a href="./FamilyTree.aspx">Family Tree</a></li>
                                <li><a href="./AllMembers.aspx">All family members</a></li>
                            </ul>--%>

                            <a href="./Default.aspx">Home</a><br />
                            <br />
                            <a href="./FamilyTree.aspx">Family Tree</a><br />
                            <br />
                            <a href="./AllMembers.aspx">All family members</a><br />
                            <br />

                        </div>
                    </div>
                    <br />
                    <div class="slidecontainer_open">
                        <div class="iconbox2heading">
                            <span id="Span1" class="headerToggle">
                                <img class="headerToggleImage"
                                    src="./images/minus.gif" /></span>Baqai Businesses
                        </div>
                        <div id="Div1" class="iconbox2contents"
                            style="display: block; top: 0px; left: -1px; height: 122px;">
                            <%--                            <ul>
                                <li><a href=".\Businesses.aspx">Hospitals/Clinics</a></li>
                                <li><a href=".\Businesses.aspx">Stores</a></li>
                                <li><a href=".\Businesses.aspx">Industries</a></li>
                                <li><a href=".\Businesses.aspx">Small Businesses</a></li>
                            </ul>--%>

                            <a href=".\Businesses.aspx">Hospitals/Clinics</a><br />
                            <br />
                            <a href=".\Businesses.aspx">Stores</a><br />
                            <br />
                            <a href=".\Businesses.aspx">Industries</a><br />
                            <br />
                            <a href=".\Businesses.aspx">Small Businesses</a><br />
                            <br />
                        </div>
                    </div>

                    <br />
                    <div class="slidecontainer_open">
                        <div class="iconbox2heading">
                            <span id="Span2" class="headerToggle">
                                <img class="headerToggleImage"
                                    src="./images/minus.gif" /></span>Baqai Professionals
                        </div>
                        <div id="Div2" class="iconbox2contents"
                            style="display: block; top: 0px; left: -1px; height: 216px;">
                            <%--                            <ul>
                                <li><a href="./AllMembers.aspx?OccupationId=1">Software Engineers</a></li>
                                <li><a href="./AllMembers.aspx?OccupationId=2">Electrical Engineers</a></li>
                                <li><a href="./AllMembers.aspx?OccupationId=3">Computer Engineers</a></li>
                                <li><a href="./AllMembers.aspx?OccupationId=4">Mechanical Engineers</a></li>
                                <li><a href="./AllMembers.aspx?OccupationId=7">Civil Engineers</a></li>
                                <li><a href="./AllMembers.aspx?OccupationId=5">Doctors</a></li>
                                <li><a href="./AllMembers.aspx?OccupationId=23">Hakeems</a></li>
                                <li><a href="./AllMembers.aspx?OccupationId=6">Teachers</a></li>
                                <li><a href="#">More coming soon</a></li>
                                </ul>
                            --%>

                            <a href="./AllMembers.aspx?OccupationId=1">Software Engineers</a><br />
                            <a href="./AllMembers.aspx?OccupationId=2">Electrical Engineers</a><br />
                            <a href="./AllMembers.aspx?OccupationId=3">Computer Engineers</a><br />
                            <a href="./AllMembers.aspx?OccupationId=4">Mechanical Engineers</a><br />
                            <a href="./AllMembers.aspx?OccupationId=7">Civil Engineers</a><br />
                            <a href="./AllMembers.aspx?OccupationId=5">Doctors</a><br />
                            <a href="./AllMembers.aspx?OccupationId=23">Hakeems</a><br />
                            <a href="./AllMembers.aspx?OccupationId=6">Teachers</a><br />
                            <a href="#">More coming soon</a>



                        </div>
                    </div>

                </td>
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
                                        string[] Month = { "", "Jan ", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" };
                                        tempDOB = Month[_PersonInfo.DOB.Value.Month] + " " + _PersonInfo.DOB.Value.Day;
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


                                Response.Write("</td><td><img src='" + filePath + "' alt='' style='height: 200px' /><br/>");
                                Response.Write("</td></tr>");
                                Response.Write("</table>");
                                if (_LogedInUserInfo != null && (_LogedInUserInfo.PersonID == _PersonInfo.PersonID || _PersonInfo.ManagedBy == _LogedInUserInfo.PersonID || _LogedInUserInfo.PersonID == 9))
                                {
                                    Response.Write(ExtMethods.Hyperlink("Click here to Update<br/>", "./EditPersonInfoPage.aspx?PersonID=" + _PersonInfo.PersonID));
                                }
                                ExtMethods.WriteLine(Response);

                                Response.Write(ExtMethods.Bold("Gender: ") + _PersonInfo.Gender);
                                ExtMethods.WriteLine(Response);

                                if (_PersonInfo.SpouseID != null && _PersonInfo.SpouseID != 0)
                                {
                                    ExtMethods.WriteLine(Response);
                                    Response.Write(ExtMethods.Bold("Spouse: ") + ExtMethods.Hyperlink(_PersonInfo.Spouse.FullName, "./PersonInfo.aspx?PersonID=" + _PersonInfo.Spouse.PersonID));
                                    ExtMethods.WriteLine(Response);
                                }

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


                    <!-- New Code -->
                    <div class="tree">
                        <div>
                            <ul>
                                <li>

                                    <a href="PersonInfo.aspx?PersonID=<%=_PersonInfo.FatherID??_PersonInfo.PersonID%>">
                                        <%--Father--%>
                                        <%if (_PersonInfo.FatherID != null && _PersonInfo.FatherID != 0)
                                          {
                                              Response.Write(_PersonInfo.Father.FullName);
                                          }
                                          else
                                          {
                                              Response.Write("Data unavailable");
                                          }
                                        %>
                                    </a>

                                    <ul>
                                        <li>
                                            <a href="PersonInfo.aspx?PersonID=<%=_PersonInfo.PersonID%>">
                                                <%--Person Information--%>
                                                <%Response.Write(_PersonInfo.FullName);
                                                %></a>

                                            <%if (_PersonInfo.AllChildren != null)//&& _PersonInfo.AllChildren.Count > 0)
                                              {
                                                  Response.Write("<ul>");
                                                  foreach (PersonInfo child in _PersonInfo.AllChildren)
                                                  {
                                                      string filePath = Request.PhysicalApplicationPath + "images\\" + child.PersonID + ".thumb.jpg";
                                                      System.IO.FileInfo imageFile = new System.IO.FileInfo(filePath);
                                                      if (imageFile.Exists == false) filePath = "images\\" + child.Gender + ".thumb.jpg";
                                                      else filePath = "images\\" + child.PersonID + ".thumb.jpg";

                                                      Response.Write("<li><a href='PersonInfo.aspx?PersonID=" + child.PersonID + "'><img src='" + filePath + "' alt='' /><br/>" + child.FullName + "</a></li>");
                                                  }
                                                  //Add a new child
                                                  if (_PersonInfo.Gender == "Male" && _PersonInfo.SpouseID != null && _PersonInfo.SpouseID != 0)
                                                  {
                                                      //Anyone can add child as long as 'PersonInfo' is male and married.
                                                      Response.Write("<li><a href='./AddPersonInfoPage.aspx'>Add a child...</a></li>");
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
                    <!-- End New Code -->

                </td>
            </tr>
        </table>
        <br />
    </form>
    <!-- Begin BidVertiser code -->
    <script language="JavaScript1.1" src="http://bdv.bidvertiser.com/BidVertiser.dbm?pid=204232&bid=498236" type="text/javascript"></script>
    <noscript><a href="http://www.bidvertiser.com">affiliate program</a></noscript>
    <!-- End BidVertiser code -->
</body>
</html>
