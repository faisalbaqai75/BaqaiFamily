<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="LoginPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-3404660-2"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());

        gtag('config', 'UA-3404660-2');
    </script>
    <title>Welcome to Baqai Family</title>
    <style type="text/css">
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


        .style1 {
            width: 180px;
        }

        .style2 {
            width: 100%;
        }

        .style3 {
            width: 290px;
        }
    </style>
</head>
<body bgcolor="#ccffcc">

    <div align="right">
        <asp:Label ID="lblLogin" runat="server" Text="Label"></asp:Label></div>

    <form id="form1" runat="server">

        <br />
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
                            &nbsp;&nbsp;<a href="./Default.aspx">Home</a><br />
                            &nbsp;&nbsp;<a href="./FamilyTree.aspx">Family Tree</a><br />
                            &nbsp;&nbsp;<a href="./AllMembers.aspx">All family members</a><br />
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
                            &nbsp;&nbsp;<a href=".\Businesses.aspx">Hospitals/Clinics</a><br />
                            &nbsp;&nbsp;<a href=".\Businesses.aspx">Stores</a><br />
                            &nbsp;&nbsp;<a href=".\Businesses.aspx">Industries</a><br />
                            &nbsp;&nbsp;<a href=".\Businesses.aspx">Small Businesses</a><br />
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
                            &nbsp;&nbsp;<a href="./AllMembers.aspx?OccupationId=1">Software Engineers</a><br />
                            &nbsp;&nbsp;<a href="./AllMembers.aspx?OccupationId=2">Electrical Engineers</a><br />
                            &nbsp;&nbsp;<a href="./AllMembers.aspx?OccupationId=3">Computer Engineers</a><br />
                            &nbsp;&nbsp;<a href="./AllMembers.aspx?OccupationId=4">Mechanical Engineers</a><br />
                            &nbsp;&nbsp;<a href="./AllMembers.aspx?OccupationId=7">Civil Engineers</a><br />
                            &nbsp;&nbsp;<a href="./AllMembers.aspx?OccupationId=5">Doctors</a><br />
                            &nbsp;&nbsp;<a href="./AllMembers.aspx?OccupationId=23">Hakeems</a><br />
                            &nbsp;&nbsp;<a href="./AllMembers.aspx?OccupationId=6">Teachers</a><br />
                            &nbsp;&nbsp;<a href="#">More coming soon</a>
                        </div>
                    </div>
                    <div class="slidecontainer_open">
                        <div class="iconbox2heading">
                            <span id="Span4" class="headerToggle">
                                <img class="headerToggleImage"
                                    src="./images/minus.gif" /></span>Stay Connected
                        </div>
                        <div id="Div4" class="iconbox2contents"
                            style="display: block; top: 0px; left: -1px; height: 100px;">
                                &nbsp;&nbsp;<a href="http://www.facebook.com/groups/BaqaiFamily/">Facebook</a><br />
                                &nbsp;&nbsp;<a href="http://groups.yahoo.com/group/baqai/">Yahoo Group</a><br />
                                &nbsp;&nbsp;<a href="mailto:BaqaiFamily@outlook.com" target="_top">Contact Us</a><br />
                        </div>
                    </div>
                </td>
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
