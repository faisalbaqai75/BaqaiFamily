<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddPersonInfoPage.aspx.cs" Inherits="AddPersonInfoPage" %>

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


        .style1
        {
            width: 183px;
        }


        .style2
        {
            text-align: right;
        }


        </style>
</head>
<body bgcolor="#ccffcc">

<div align="right"><asp:Label ID="lblLogin" runat="server" Text="Label"></asp:Label></div>
    <form id="form1" runat="server">

    
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
            ContextTypeName="MyFamilyDatabaseDataContext" 
            TableName="PersonInfos" 
            EnableInsert="True" 
            OrderBy="FullName" oninserting="LinqDataSource1_Inserting" 
            oninserted="LinqDataSource1_Inserted">
        </asp:LinqDataSource>
        <br />

    
    
            <table border="1" cellpadding="10" cellspacing="0" width="100%" >
            <tr>
                <td class="style1" valign="top" >
    
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

                            <br />
                        <asp:FormView ID="FormView1" runat="server" DataKeyNames="PersonID" 
                            DataSourceID="LinqDataSource1" DefaultMode="Insert">
                            <EditItemTemplate>
                                Mother:
                                <asp:TextBox ID="MotherTextBox" runat="server" Text='<%# Bind("Mother") %>' />
                                <br />
                                Siblings:
                                <asp:TextBox ID="SiblingsTextBox" runat="server" 
                                    Text='<%# Bind("Siblings") %>' />
                                <br />
                                AllChildren:
                                <asp:TextBox ID="AllChildrenTextBox" runat="server" 
                                    Text='<%# Bind("AllChildren") %>' />
                                <br />
                                PersonID:
                                <asp:Label ID="PersonIDLabel1" runat="server" Text='<%# Eval("PersonID") %>' />
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
                                <asp:TextBox ID="ContactTextBox" runat="server" Text='<%# Bind("Contact") %>' />
                                <br />
                                DOB:
                                <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' />
                                <br />
                                PlaceOfBirth:
                                <asp:TextBox ID="PlaceOfBirthTextBox" runat="server" 
                                    Text='<%# Bind("PlaceOfBirth") %>' />
                                <br />
                                PrimaryEmail:
                                <asp:TextBox ID="PrimaryEmailTextBox" runat="server" 
                                    Text='<%# Bind("PrimaryEmail") %>' />
                                <br />
                                SecondaryEmail:
                                <asp:TextBox ID="SecondaryEmailTextBox" runat="server" 
                                    Text='<%# Bind("SecondaryEmail") %>' />
                                <br />
                                AboutMe:
                                <asp:TextBox ID="AboutMeTextBox" runat="server" Text='<%# Bind("AboutMe") %>' />
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
                                <asp:TextBox ID="UserNameTextBox" runat="server" 
                                    Text='<%# Bind("UserName") %>' />
                                <br />
                                Password:
                                <asp:TextBox ID="PasswordTextBox" runat="server" 
                                    Text='<%# Bind("Password") %>' />
                                <br />
                                ShowDOB:
                                <asp:TextBox ID="ShowDOBTextBox" runat="server" Text='<%# Bind("ShowDOB") %>' />
                                <br />
                                ManagedBy:
                                <asp:TextBox ID="ManagedByTextBox" runat="server" 
                                    Text='<%# Bind("ManagedBy") %>' />
                                <br />
                                FullName:
                                <asp:TextBox ID="FullNameTextBox" runat="server" 
                                    Text='<%# Bind("FullName") %>' />
                                <br />
                                Children:
                                <asp:TextBox ID="ChildrenTextBox" runat="server" 
                                    Text='<%# Bind("Children") %>' />
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
                                ManagedByPerson:
                                <asp:TextBox ID="ManagedByPersonTextBox" runat="server" 
                                    Text='<%# Bind("ManagedByPerson") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                    CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <div class="style2">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ControlToValidate="FullNameTextBox" 
                                        ErrorMessage="Full Name is not provided."></asp:RequiredFieldValidator>
                                    <br />
                                    Full Name:
                                    <asp:TextBox ID="FullNameTextBox" runat="server" Text='<%# Bind("FullName") %>' 
                                        Width="200px" />
                                    <br />
                                    Provide Full name, if there no middle name, then use Father Name as middle Name.<br />E.g. Haris (Ahmed) Baqai or Haris Moid Baqai to mainting uniqueness.<br />If person has passed away, adde [Late] at the end of name.<br />
                                    <br />
                                    Gender:
                                    <asp:DropDownList ID="DropDownList1" runat="server" 
                                        SelectedValue='<%# Bind("Gender") %>' Width="200px">
                                        <asp:ListItem>Male</asp:ListItem>
                                        <asp:ListItem>Female</asp:ListItem>
                                    </asp:DropDownList>
                                    <br />
                                    Occupation:
                                    <asp:DropDownList ID="DropDownList2" runat="server"  AppendDataBoundItems="true"
                                        DataSourceID="OccupationDataSource" DataTextField="OccupationDesc" 
                                        DataValueField="OccupationID" Height="20px" 
                                        SelectedValue='<%# Bind("OccupationID") %>' style="margin-left: 0px" 
                                        Width="200px">
                                        <asp:ListItem Value="0">(None)</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <asp:LinqDataSource ID="OccupationDataSource" runat="server" 
                                    ContextTypeName="MyFamilyDatabaseDataContext" OrderBy="OccupationDesc" 
                                    Select="new (OccupationID, OccupationDesc)" TableName="Occupations">
                                </asp:LinqDataSource>
                                <div class="style2">
                                    <br />
                                    Contact:
                                    <asp:TextBox ID="ContactTextBox" runat="server" Text='<%# Bind("Contact") %>' 
                                        Width="200px" />
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                        ControlToValidate="DOBTextBox" ErrorMessage="Date of Birth not provided."></asp:RequiredFieldValidator>
                                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                                        ControlToValidate="DOBTextBox" ErrorMessage="Invalid Date of Birth" 
                                        MaximumValue="1/1/2099" MinimumValue="1/1/1800" Type="Date"></asp:RangeValidator>
                                    <br />
                                    &nbsp;DOB (dd/mm/yyyy): e.g. (2/20/1995)
                                    <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' 
                                        Width="200px" CausesValidation="True" />
                                    <br />
                                    Place Of Birth:
                                    <asp:TextBox ID="PlaceOfBirthTextBox" runat="server" 
                                        Text='<%# Bind("PlaceOfBirth") %>' Width="200px" />
                                    <br />
                                    Primary Email:
                                    <asp:TextBox ID="PrimaryEmailTextBox" runat="server" 
                                        Text='<%# Bind("PrimaryEmail") %>' Width="200px" />
                                    <br />
                                    Secondary Email:
                                    <asp:TextBox ID="SecondaryEmailTextBox" runat="server" 
                                        Text='<%# Bind("SecondaryEmail") %>' Width="200px" />
                                    <br />
                                    Spouse:<asp:DropDownList ID="DropDownList3" runat="server"  AppendDataBoundItems="true"
                                        DataSourceID="SpouseDataSource" DataTextField="FullName" 
                                        DataValueField="PersonID" Height="16px" SelectedValue='<%# Bind("SpouseID") %>' 
                                        Width="200px">
                                        <asp:ListItem Value="0">(None)</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:LinqDataSource ID="SpouseDataSource" runat="server" 
                                        ContextTypeName="MyFamilyDatabaseDataContext" OrderBy="FullName" 
                                        Select="new (PersonID, FullName)" TableName="PersonInfos">
                                    </asp:LinqDataSource>
&nbsp;<br />Father:<asp:DropDownList ID="DropDownList4" runat="server"  AppendDataBoundItems="true"
                                        DataSourceID="FatherDataSource" DataTextField="FullName" 
                                        DataValueField="PersonID" SelectedValue='<%# Bind("FatherID") %>' Width="200px">
                                        <asp:ListItem Value="0">(None)</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:LinqDataSource ID="FatherDataSource" runat="server" 
                                        ContextTypeName="MyFamilyDatabaseDataContext" OrderBy="FullName" 
                                        Select="new (PersonID, FullName)" TableName="PersonInfos" 
                                        Where="Gender == @Gender">
                                        <WhereParameters>
                                            <asp:Parameter DefaultValue="Male" Name="Gender" Type="String" />
                                        </WhereParameters>
                                    </asp:LinqDataSource>
&nbsp;<br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                        ControlToValidate="UserNameTextBox" ErrorMessage="User Name not provided."></asp:RequiredFieldValidator>
                                    <br />
                                    UserName:
                                    <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' 
                                        Width="200px" />
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                        ControlToValidate="PasswordTextBox" ErrorMessage="Password not provided."></asp:RequiredFieldValidator>
                                    <br />
                                    Password:
                                    <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' 
                                        Width="200px" />
                                    <br />
                                    Show DOB:<asp:DropDownList ID="DropDownList5" runat="server" 
                                        SelectedValue='<%# Bind("ShowDOB") %>' Width="200px">
                                        <asp:ListItem Value="0">False</asp:ListItem>
                                        <asp:ListItem Value="1">True</asp:ListItem>
                                    </asp:DropDownList>
&nbsp;<br />Managed By:<asp:DropDownList ID="DropDownList6" runat="server"  AppendDataBoundItems="true"
                                        DataSourceID="ManagedByDataSource" DataTextField="FullName" 
                                        DataValueField="PersonID" SelectedValue='<%# Bind("ManagedBy") %>' 
                                        Width="200px">
                                        <asp:ListItem Value="0">(None)</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:LinqDataSource ID="ManagedByDataSource" runat="server" 
                                        ContextTypeName="MyFamilyDatabaseDataContext" OrderBy="FullName" 
                                        Select="new (PersonID, FullName)" TableName="PersonInfos">
                                    </asp:LinqDataSource>
&nbsp;<br />About Me:
                                    <asp:TextBox ID="AboutMeTextBox" runat="server" Height="127px" 
                                        Text='<%# Bind("AboutMe") %>' TextMode="MultiLine" Width="391px" />
                                    <br />
                                    <br />
                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                        CommandName="Insert" Text="Insert" />
                                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                </div>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                PersonID:
                                <asp:Label ID="PersonIDLabel" runat="server" Text='<%# Eval("PersonID") %>' />
                                <br />
                                Gender:
                                <asp:Label ID="GenderLabel" runat="server" Text='<%# Bind("Gender") %>' />
                                <br />
                                OccupationID:
                                <asp:Label ID="OccupationIDLabel" runat="server" 
                                    Text='<%# Bind("OccupationID") %>' />
                                <br />
                                Contact:
                                <asp:Label ID="ContactLabel" runat="server" Text='<%# Bind("Contact") %>' />
                                <br />
                                DOB:
                                <asp:Label ID="DOBLabel" runat="server" Text='<%# Bind("DOB") %>' />
                                <br />
                                PlaceOfBirth:
                                <asp:Label ID="PlaceOfBirthLabel" runat="server" 
                                    Text='<%# Bind("PlaceOfBirth") %>' />
                                <br />
                                PrimaryEmail:
                                <asp:Label ID="PrimaryEmailLabel" runat="server" 
                                    Text='<%# Bind("PrimaryEmail") %>' />
                                <br />
                                SecondaryEmail:
                                <asp:Label ID="SecondaryEmailLabel" runat="server" 
                                    Text='<%# Bind("SecondaryEmail") %>' />
                                <br />
                                AboutMe:
                                <asp:Label ID="AboutMeLabel" runat="server" Text='<%# Bind("AboutMe") %>' />
                                <br />
                                SpouseID:
                                <asp:Label ID="SpouseIDLabel" runat="server" Text='<%# Bind("SpouseID") %>' />
                                <br />
                                FatherID:
                                <asp:Label ID="FatherIDLabel" runat="server" Text='<%# Bind("FatherID") %>' />
                                <br />
                                UserName:
                                <asp:Label ID="UserNameLabel" runat="server" Text='<%# Bind("UserName") %>' />
                                <br />
                                Password:
                                <asp:Label ID="PasswordLabel" runat="server" Text='<%# Bind("Password") %>' />
                                <br />
                                ShowDOB:
                                <asp:Label ID="ShowDOBLabel" runat="server" Text='<%# Bind("ShowDOB") %>' />
                                <br />
                                ManagedBy:
                                <asp:Label ID="ManagedByLabel" runat="server" Text='<%# Bind("ManagedBy") %>' />
                                <br />
                                FullName:
                                <asp:Label ID="FullNameLabel" runat="server" Text='<%# Bind("FullName") %>' />
                                <br />
                                <br />
                                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                                    CommandName="New" Text="New" />
                            </ItemTemplate>
                        </asp:FormView>
                            <br />
                            <asp:Label ID="lblErrors" runat="server" ForeColor="Red" Text="Error" 
                                Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
