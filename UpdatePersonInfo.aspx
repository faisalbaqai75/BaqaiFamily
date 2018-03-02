<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdatePersonInfo.aspx.cs" Inherits="UpdatePersonInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit family member</title>
    <style>
        #conash3D0
        {
            display: none;
        }
        .style1
        {
            width: 123px;
        }
    </style>
    </head>
<body bgcolor="#ccffcc">
    <form id="form1" runat="server">
    <a href="./Default.aspx">Back to Home Page</a><br />
&nbsp;<div>
        PersonId:
        <asp:TextBox ID="txtPersonId" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Search" 
            Enabled="False" />
        &nbsp;(First search by PersonId then Update information below)<br />
        <br />
    <table border="1" cellpadding="2" cellspacing="0" id="UpdateTable" runat="server" visible='false'>
        <tr>
            <td align="right" class="style1">*First Name:</td><td><asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" class="style1">Middle Name:</td><td>
        <asp:TextBox ID="txtMiddleName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style1">*Last Name:</td><td>
        <asp:TextBox ID="txtLastName" runat="server">Baqai</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style1">*Gender:</td><td>
        <asp:DropDownList ID="cboGender" runat="server" EnableViewState="true">
            <asp:ListItem Selected="True">Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="right" class="style1">OccupationId:</td>
            <td style="margin-left: 40px">
                <asp:DropDownList ID="cboOccupationId" runat="server" EnableViewState="true">
                </asp:DropDownList>
        &nbsp;&nbsp;(Feature disabled for now)</td>
        </tr>
        <tr>
            <td align="right" class="style1">Contact:</td><td>
        <asp:TextBox ID="txtContact" runat="server" MaxLength="50"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style1">*DOB:</td><td>
            <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
&nbsp;(MM/DD/YYYY)<asp:CheckBox ID="chkHideYearOfBirth" runat="server" 
                Text="Hide year of Birth" />
            </td>
        </tr>
        <tr>
            <td align="right" class="style1">Place of Birth:</td><td>
        <asp:TextBox ID="txtPlaceOfBirth" runat="server" MaxLength="50"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style1">Primary email:</td><td>
        <asp:TextBox ID="txtPrimaryEmail" runat="server" MaxLength="50"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style1">Secondary email:</td><td>
        <asp:TextBox ID="txtSecondaryEmail" runat="server" MaxLength="50"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style1">Spouse:</td><td>
        <asp:DropDownList ID="cboSpouseId" runat="server" EnableViewState="true">
        </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="right" class="style1">Father:</td><td>
        <asp:DropDownList ID="cboFatherId" runat="server" EnableViewState="true">
        </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="right" class="style1" valign="top">About Me:
        </td><td>
        <asp:TextBox ID="txtAboutMe" runat="server" Height="115px" MaxLength="255" 
            TextMode="MultiLine" Width="510px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style1">&nbsp;</td><td>&nbsp;</td>
        </tr>
    </table>
                 
        <br />
        <br />
        Note: If UserName and password doesn&#39;t match database, above information will 
        not be updated in database.<br />
        UserName:<asp:TextBox ID="txtUserName" runat="server" MaxLength="25"></asp:TextBox>
        <br />
        Password:<asp:TextBox ID="txtPassword" runat="server" MaxLength="25" 
            TextMode="Password"></asp:TextBox>
        <br />
        <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
        <br />
        &nbsp;<br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Update" 
            Enabled="False" />
    
        &nbsp;Disabled functionality, working on new system.<br />
        <br />
    
    </div>
            <asp:Button ID="btnChangePwd" runat="server" UseSubmitBehavior="false" onclick="btnChangePwd_Click" 
            Text="Change Password" />
    
    &nbsp;<asp:Button ID="btnSendPwd" runat="server"  UseSubmitBehavior="false" onclick="btnSendPwd_Click" 
            Text="Send Password" />
    </form>
</body>
</html>
