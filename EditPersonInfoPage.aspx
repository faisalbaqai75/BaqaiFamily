<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditPersonInfoPage.aspx.cs" Inherits="EditPersonInfoPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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


        .style9
        {
            width: 176px;
        }


        .style10
        {
            text-align: right;
            width: 81px;
        }
        .style11
        {
            width: 520px;
        }
        .style2
        {
            width: 260%;
        }


        </style>
</head>
<body bgcolor="#ccffcc">

<div align="right"><asp:Label ID="lblLogin" runat="server" Text="Label"></asp:Label></div>
    <form id="form1" runat="server">

    
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
            ContextTypeName="MyFamilyDatabaseDataContext" EnableUpdate="True" 
            TableName="PersonInfos" Where="PersonID == @PersonID" 
            onupdating="LinqDataSource1_Updating" onupdated="LinqDataSource1_Updated">
            <WhereParameters>
                <asp:QueryStringParameter DefaultValue="1" Name="PersonID" 
                    QueryStringField="PersonId" Type="Int32" />
            </WhereParameters>
        </asp:LinqDataSource>
        <br />

    
    
            <table border="1" cellpadding="10" cellspacing="0" width="100%" >
            <tr>
                <td class="style9" valign="top" >
    
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
                                <li><a href="./Businesses.aspx">Hospitals/Clinics</a></li>
                                <li><a href="./Businesses.aspx">Stores</a></li>
                                <li><a href="./Businesses.aspx">Industries</a></li>
                                <li><a href="./Businesses.aspx">Small Businesses</a></li>
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

                        <asp:FormView ID="FormView1" runat="server" DataKeyNames="PersonID" 
            DataSourceID="LinqDataSource1" style="margin-right: 141px">
            <EditItemTemplate>
                <table border="1" cellpadding="1" cellspacing="1" class="style2">
                    <tr>
                        <td class="style10">
                            PersonID:
                        </td>
                        <td>
                            <asp:Label ID="PersonIDLabel1" runat="server" Text='<%# Eval("PersonID") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            *Full Name</td>
                        <td>
                            <asp:TextBox ID="FullNameTextBox" runat="server" 
                                Text='<%# Bind("FullName") %>' Height="23px" Width="200px" />
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="FullNameTextBox" ErrorMessage="Full Name not provided."></asp:RequiredFieldValidator>
                            <br />
                            Provide Full name, if there no middle name, then use Father Name as middle Name.<br />E.g. Haris (Ahmed) Baqai or Haris Moid Baqai to mainting uniqueness.<br />If person has passed away, adde [Late] at the end of name.<br /></td>
                    </tr>
                    <tr>
                        <td class="style10">
                            Gender:</td>
                        <td>
                            <asp:DropDownList ID="DropDownList3" runat="server" 
                                SelectedValue='<%# Bind("Gender") %>' Width="200px">
                                <asp:ListItem Value="Male"></asp:ListItem>
                                <asp:ListItem Value="Female"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            Contact</td>
                        <td>
                            <asp:TextBox ID="ContactTextBox" runat="server" Text='<%# Bind("Contact") %>' 
                                Height="22px" Width="200px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            Date of Birth<br /></td>
                        <td>
                            <asp:TextBox ID="DOBTextBox" runat="server"
                                Text='<%# Bind("DOB", "{0:d}") %>' Height="22px" Width="200px" />
                            <br />
                            &nbsp;DOB (dd/mm/yyyy): e.g. (2/20/1995)<br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="DOBTextBox" ErrorMessage="Date of Birth not provided."></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                                ControlToValidate="DOBTextBox" ErrorMessage="Invalid Date of Birth" 
                                MaximumValue="1/1/2099" MinimumValue="1/1/1800" Type="Date"></asp:RangeValidator>
                            <br />
                            <br />
                            <br />
                            Show Year of Birth on Website<br />
<asp:DropDownList ID="DropDownList4" runat="server" SelectedValue='<%# Bind("ShowDOB") %>' 
                                Width="200px">
                                <asp:ListItem Value="1">True</asp:ListItem>
                                <asp:ListItem Value="0">False</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            Occupation</td>
                        <td>
                            <asp:DropDownList ID="DropDownList6" runat="server" 
                                DataSourceID="OccupationDataSource" DataTextField="OccupationDesc"  AppendDataBoundItems="true"
                                DataValueField="OccupationID" Height="16px" 
                                SelectedValue='<%# Bind("OccupationID") %>' Width="200px">
                                <asp:ListItem Value="0">(none)</asp:ListItem>
                            </asp:DropDownList>
                            <asp:LinqDataSource ID="OccupationDataSource" runat="server" 
                                ContextTypeName="MyFamilyDatabaseDataContext" 
                                Select="new (OccupationID, OccupationDesc)" TableName="Occupations" 
                                OrderBy="OccupationDesc">
                            </asp:LinqDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            Place of Birth:</td>
                        <td>
                            <asp:TextBox ID="PlaceOfBirthTextBox" runat="server" Height="18px" 
                                Text='<%# Bind("PlaceOfBirth") %>' Width="200px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            Primary Email</td>
                        <td>
                            <asp:TextBox ID="PrimaryEmailTextBox" runat="server" 
                                Text='<%# Bind("PrimaryEmail") %>' Height="16px" Width="200px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            Secondary Email</td>
                        <td>
                            <asp:TextBox ID="SecondaryEmailTextBox" runat="server" 
                                Text='<%# Bind("SecondaryEmail") %>' Height="18px" Width="200px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            AboutMe</td>
                        <td class="style7">
                            <asp:TextBox ID="AboutMeTextBox" runat="server" Text='<%# Bind("AboutMe") %>' 
                                TextMode="MultiLine" Height="164px" Width="338px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            Spouse</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" 
                                DataSourceID="SpouseDataSource" DataTextField="FullName" 
                                DataValueField="PersonID" SelectedValue='<%# Bind("SpouseID") %>'  
                                Height="16px" Width="200px">
                            </asp:DropDownList>
                            <asp:LinqDataSource ID="SpouseDataSource" runat="server" 
                                ContextTypeName="MyFamilyDatabaseDataContext" OrderBy="FullName" 
                                Select="new (PersonID, FullName)" TableName="PersonInfos">
                            </asp:LinqDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            Father</td>
                        <td>
                            <asp:DropDownList ID="DropDownList2" runat="server" 
                                DataSourceID="FatherDataSource" DataTextField="FullName" 
                                DataValueField="PersonID" SelectedValue='<%# Bind("FatherID") %>'  AppendDataBoundItems="true"
                                Width="200px">
                                <asp:ListItem Value="0">(none)</asp:ListItem>
                            </asp:DropDownList>
                            <asp:LinqDataSource ID="FatherDataSource" runat="server" 
                                ContextTypeName="MyFamilyDatabaseDataContext" OrderBy="FullName" 
                                Select="new (PersonID, FullName)" TableName="PersonInfos">
                            </asp:LinqDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            Account Managed By</td>
                        <td>
                            <asp:DropDownList ID="DropDownList5" runat="server" 
                                DataSourceID="ManagedByDataSource" DataTextField="FullName" AppendDataBoundItems="true"
                                DataValueField="PersonID" 
                                SelectedValue='<%# Bind("ManagedBy") %>' Height="16px" Width="200px">
                            </asp:DropDownList>
                            <asp:LinqDataSource ID="ManagedByDataSource" runat="server" 
                                ContextTypeName="MyFamilyDatabaseDataContext" Select="new (PersonID, FullName)" 
                                TableName="PersonInfos" OrderBy="FullName">
                            </asp:LinqDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            User Name</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("UserName") %>' 
                                Width="200px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="TextBox1" ErrorMessage="UserName is not provided."></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            Password</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Password") %>' 
                                Width="200px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="TextBox2" ErrorMessage="Password is not provided."></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update"/>
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    
                <br />
                <br />
            </EditItemTemplate>
            <InsertItemTemplate>
                PersonID:
                <asp:TextBox ID="PersonIDTextBox" runat="server" 
                    Text='<%# Bind("PersonID") %>' />
                <br />
                FirstName:
                <asp:TextBox ID="FirstNameTextBox" runat="server" 
                    Text='<%# Bind("FirstName") %>' />
                <br />
                MiddleName:
                <asp:TextBox ID="MiddleNameTextBox" runat="server" 
                    Text='<%# Bind("MiddleName") %>' />
                <br />
                LastName:
                <asp:TextBox ID="LastNameTextBox" runat="server" 
                    Text='<%# Bind("LastName") %>' />
                <br />
                Gender:
                <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
                <br />
                OccupationID:
                <asp:TextBox ID="OccupationIDTextBox" runat="server" 
                    Text='<%# Bind("OccupationID") %>' />
                <br />
                Contact:
                <asp:TextBox ID="ContactTextBox0" runat="server" 
                    Text='<%# Bind("Contact") %>' />
                <br />
                DOB:
                <asp:TextBox ID="DOBTextBox0" runat="server" Text='<%# Bind("DOB") %>' />
                <br />
                PlaceOfBirth:
                <asp:TextBox ID="PlaceOfBirthTextBox0" runat="server" 
                    Text='<%# Bind("PlaceOfBirth") %>' />
                <br />
                PrimaryEmail:
                <asp:TextBox ID="PrimaryEmailTextBox0" runat="server" 
                    Text='<%# Bind("PrimaryEmail") %>' />
                <br />
                SecondaryEmail:
                <asp:TextBox ID="SecondaryEmailTextBox0" runat="server" 
                    Text='<%# Bind("SecondaryEmail") %>' />
                <br />
                AboutMe:
                <asp:TextBox ID="AboutMeTextBox0" runat="server" 
                    Text='<%# Bind("AboutMe") %>' />
                <br />
                SpouseID:
                <asp:TextBox ID="SpouseIDTextBox" runat="server" 
                    Text='<%# Bind("SpouseID") %>' />
                <br />
                FatherID:
                <asp:TextBox ID="FatherIDTextBox" runat="server" 
                    Text='<%# Bind("FatherID") %>' />
                <br />
                UserName:
                <asp:TextBox ID="UserNameTextBox0" runat="server" 
                    Text='<%# Bind("UserName") %>' />
                <br />
                Password:
                <asp:TextBox ID="PasswordTextBox0" runat="server" 
                    Text='<%# Bind("Password") %>' />
                <br />
                ShowDOB:
                <asp:TextBox ID="ShowDOBTextBox" runat="server" Text='<%# Bind("ShowDOB") %>' />
                <br />
                ManagedBy:
                <asp:TextBox ID="ManagedByTextBox0" runat="server" 
                    Text='<%# Bind("ManagedBy") %>' />
                <br />
                FullName:
                <asp:TextBox ID="FullNameTextBox0" runat="server" 
                    Text='<%# Bind("FullName") %>' />
                <br />
                Children:
                <asp:TextBox ID="ChildrenTextBox" runat="server" 
                    Text='<%# Bind("Children") %>' />
                <br />
                PersonInfos1:
                <asp:TextBox ID="PersonInfos1TextBox" runat="server" 
                    Text='<%# Bind("PersonInfos1") %>' />
                <br />
                Father:
                <asp:TextBox ID="FatherTextBox" runat="server" Text='<%# Bind("Father") %>' />
                <br />
                Occupation:
                <asp:TextBox ID="OccupationTextBox" runat="server" 
                    Text='<%# Bind("Occupation") %>' />
                <br />
                Spouse:
                <asp:TextBox ID="SpouseTextBox" runat="server" Text='<%# Bind("Spouse") %>' />
                <br />
                PersonInfo1:
                <asp:TextBox ID="PersonInfo1TextBox" runat="server" 
                    Text='<%# Bind("PersonInfo1") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <table border="1" cellpadding="1" cellspacing="1" class="style6">
                    <tr>
                        <td>
                            Person ID</td>
                        <td>
                            <asp:Label ID="PersonIDLabel" runat="server" Text='<%# Eval("PersonID") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Full Name</td>
                        <td>
                            <asp:Label ID="FullNameLabel" runat="server" Text='<%# Bind("FullName") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Gender</td>
                        <td>
                            <asp:Label ID="GenderLabel" runat="server" Text='<%# Bind("Gender") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Contact</td>
                        <td>
                            <asp:Label ID="ContactLabel" runat="server" Text='<%# Bind("Contact") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Place of Birth</td>
                        <td>
                            <asp:Label ID="PlaceOfBirthLabel" runat="server" 
                                Text='<%# Bind("PlaceOfBirth") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Primary Email</td>
                        <td>
                            <asp:Label ID="PrimaryEmailLabel" runat="server" 
                                Text='<%# Bind("PrimaryEmail") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Secondary Email</td>
                        <td>
                            <asp:Label ID="SecondaryEmailLabel" runat="server" 
                                Text='<%# Bind("SecondaryEmail") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Spouse</td>
                        <td>
                            <asp:Label ID="SpouseIDLabel" runat="server" 
                                Text='<%# Bind("Spouse.FullName") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Father</td>
                        <td>
                            <asp:Label ID="FatherIDLabel" runat="server" 
                                Text='<%# Bind("Father.FullName") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Managed By</td>
                        <td>
                            <asp:Label ID="ManagedByLabel" runat="server" 
                                Text='<%# Bind("ManagedByPerson.FullName") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            UserName</td>
                        <td>
                            <asp:Label ID="UserNameLabel" runat="server" Text='<%# Bind("UserName") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            About Me</td>
                        <td>
                            <asp:Label ID="AboutMeLabel" runat="server" Text='<%# Bind("AboutMe") %>' />
                        </td>
                    </tr>
                </table>
&nbsp;<br />
                &nbsp;<asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                    CommandName="Edit" Text="Edit" />
                </ItemTemplate>

        </asp:FormView>

                            <asp:Label ID="lblError" runat="server" Text="Label"></asp:Label>

                            <br />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
