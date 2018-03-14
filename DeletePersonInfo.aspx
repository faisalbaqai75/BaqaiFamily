<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DeletePersonInfo.aspx.cs" Inherits="DeletePersonInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        PersonId:
        <asp:TextBox ID="txtPersonId" runat="server"></asp:TextBox>
        <br />
        Gender:
        <asp:TextBox ID="txtGender" runat="server"></asp:TextBox>
        <br />
        OccupationId:
        <asp:TextBox ID="txtOccupationId" runat="server"></asp:TextBox>
        <br />
        Contact:
        <asp:TextBox ID="txtContact" runat="server"></asp:TextBox>
        <br />
        DOB:
        <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
        <br />
        Place of Birth:
        <asp:TextBox ID="txtPlaceOfBirth" runat="server"></asp:TextBox>
        <br />
        Primary email:
        <asp:TextBox ID="txtPrimaryEmail" runat="server"></asp:TextBox>
        <br />
        Secondary email:
        <asp:TextBox ID="txtSecondaryEmail" runat="server"></asp:TextBox>
        <br />
        About Me:
        <asp:TextBox ID="txtAboutMe" runat="server"></asp:TextBox>
        <br />
        SpouseID:
        <asp:TextBox ID="txtSpouseID" runat="server"></asp:TextBox>
        <br />
        FatherID:
        <asp:TextBox ID="txtFatherID" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Search" />
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Delete" />
    
    </div>
    </form>
</body>
</html>
