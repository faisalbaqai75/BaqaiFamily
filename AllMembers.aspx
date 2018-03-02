
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AllMembers.aspx.cs" Inherits="AllMembers" %>
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
    <title>Welcome to Baqai Family</title>

    <style type="text/css">
        .style3
        {
            width: 100px;
            height: 522px;
        }
        .style4
        {
            width: auto;
            height: auto;
            font-size: xx-large;
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
	*/color: #006666;
}




.sidemenu li.leftmenudivider {
	padding: 0;
	border: none 0; 
	width: 100%;
	height: 1px;
	/*background: #ffffff url(http://www.ebi.ac.uk/inc/images/line.jpg) repeat scroll center;
 	*/text-align: left;
	margin: 10px 0px 10px 0px; /* top right bottom left*/
	font-size: 1px;
}



.slidecontainer_open {
	    border: 1px solid #bfbfbf;
        width: 162px;
	        padding: 0px;
	        margin: 5px 0px 10px 2px;
	}


.iconbox2heading{
	    border: 1px solid #bfbfbf;
            padding-left: 5px;
	        position:relative;
	        padding-right:4px;
	        padding-top:3px;
	        padding-bottom:4px;		
	        margin-top:1px;
	        margin-left:1px;		
	        margin-bottom:0px;
	        border-collapse:collapse;	
	width: 150px;	
	        height:auto;
	        font-weight:bold;	
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

.headerToggleImage{
	width: 16px;
	height: 16px;
	border: 0px;
}

.iconbox2contents {
	position:relative;
	border-top: 1px solid #bfbfbf;
	border-bottom: 1px;
	border-left: 1px solid #bfbfbf;
	border-right: 1px solid #bfbfbf;	
	padding-top:3px;
	padding-bottom:5px;
	padding-left:4px;
	padding-right:4px;	
	margin:1px 1px 1px 2px;
	width: 150px;
	font-size: 10pt;
	vertical-align: top;
	display: none;	
}

.iconbox2contents ul li, .iconbox2contents_gr ul li{
	margin-top:0px;
	margin-bottom:6px;
	margin-left:-22px;
	font-size: 10pt;
	border: 1;
	padding: 1;
	list-style: square;	
}


        .style5
        {
            width: 100%;
            height: 100px;
            border-style: solid;
            border-width: 1px;
        }
        .style7
        {
            font-size: medium;
            height: 60px;
        }
        .style8
        {
            height: 48px;
            font-size: medium;
            font-weight: bold;
        }
        .style9
        {
            font-size: large;
        }


    </style>
</head>
<body bgcolor="#ccffcc">

<div align="right"><asp:Label ID="lblLogin" runat="server" Text=""></asp:Label></div>
    <form id="form1" runat="server">
    
        <table border="1" cellpadding="10" cellspacing="0" width="100%" >
            <tr>
                <td class="style3" valign="top" >
    
                    <div class="slidecontainer_open">
                        <div class="iconbox2heading">
                            <span id="news" class="headerToggle">
                            <img class="headerToggleImage" 
                                src="./images/minus.gif" /></span>Baqai Family</div>
                        <div id="news_content" class="iconbox2contents" 
                            style="display: block; top: 0px; left: -1px; height: 90px;">
                            <ul>
                                <li><a href="./Default.aspx">Home</a></li>
                                <li><a href="./FamilyTree.aspx">Family Tree</a></li>
                                <li><a href="./AllMembers.aspx">All family members</a></li>
                            </ul>
                        </div>
                    </div>
                    <br />
                    <div class="slidecontainer_open">
                        <div class="iconbox2heading">
                            <span id="Span1" class="headerToggle">
                            <img class="headerToggleImage" 
                                src="./images/minus.gif" /></span>Baqai Businesses</div>
                        <div id="Div1" class="iconbox2contents" 
                            style="display: block; top: 0px; left: -1px; height: 122px;">
                            <ul>
                                <li><a href=".\Businesses.aspx">Hospitals/Clinics</a></li>
                                <li><a href=".\Businesses.aspx">Stores</a></li>
                                <li><a href=".\Businesses.aspx">Industries</a></li>
                                <li><a href=".\Businesses.aspx">Small Businesses</a></li>
                            </ul>
                        </div>
                    </div>
                    
                                        <br />
                    <div class="slidecontainer_open">
                        <div class="iconbox2heading">
                            <span id="Span2" class="headerToggle">
                            <img class="headerToggleImage" 
                                src="./images/minus.gif" /></span>Baqai Professionals</div>
                        <div id="Div2" class="iconbox2contents" 
                            style="display: block; top: 0px; left: -1px; height: 216px;">
                            <ul>
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
                        </div>
                    </div>

                </td>
                <td>
<div>
        <table cellpadding='2' cellspacing='0' border='1'>

    <%
        char ch = '0';
        var personInfos = _db.PersonInfos.Where(p => p.PersonID > 0);
        if (_OccupationId != null && _OccupationId > 0)
            personInfos = personInfos.Where(p => p.OccupationID == _OccupationId);

        foreach (PersonInfo person in personInfos.OrderBy(p => p.FullName))
        {
            string fatherName = string.Empty;

            if (person.FatherID != null && person.FatherID != 0)
            {
                fatherName = person.Gender == "Male" ? " (S/O " : " (D/O ";
                fatherName += person.Father.FullName+ ")";
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
     <!-- Begin BidVertiser code -->
<SCRIPT LANGUAGE="JavaScript1.1" SRC="http://bdv.bidvertiser.com/BidVertiser.dbm?pid=204232&bid=498236" type="text/javascript"></SCRIPT>
<noscript><a href="http://www.bidvertiser.com">affiliate program</a></noscript>
<!-- End BidVertiser code --> 
</body>
</html>
