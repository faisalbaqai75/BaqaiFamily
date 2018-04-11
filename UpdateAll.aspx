<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdateAll.aspx.cs" Inherits="UpdateAll" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-left: 40px">
    
        <asp:Label ID="lblError" EnableViewState="false" runat="server" Text="Label" ForeColor="Red" />
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="PersonID" 
            DataSourceID="LinqDataSource1" PageSize="50" EnableModelValidation="True">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="PersonID" HeaderText="PersonID" ReadOnly="True" 
                    SortExpression="PersonID" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" 
                    SortExpression="Gender" />
                <asp:BoundField DataField="OccupationID" HeaderText="OccupationID" 
                    SortExpression="OccupationID" />
                <asp:BoundField DataField="Contact" HeaderText="Contact" 
                    SortExpression="Contact" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                <asp:BoundField DataField="PlaceOfBirth" HeaderText="PlaceOfBirth" 
                    SortExpression="PlaceOfBirth" />
                <asp:BoundField DataField="PrimaryEmail" HeaderText="PrimaryEmail" 
                    SortExpression="PrimaryEmail" />
                <asp:BoundField DataField="SecondaryEmail" HeaderText="SecondaryEmail" 
                    SortExpression="SecondaryEmail" />
                <asp:BoundField DataField="AboutMe" HeaderText="AboutMe" 
                    SortExpression="AboutMe" />
                <asp:BoundField DataField="SpouseID" HeaderText="SpouseID" 
                    SortExpression="SpouseID" />
                <asp:BoundField DataField="FatherID" HeaderText="FatherID" 
                    SortExpression="FatherID" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" 
                    SortExpression="UserName" />
                <asp:BoundField DataField="Password" HeaderText="Password" 
                    SortExpression="Password" />
                <asp:BoundField DataField="ShowDOB" HeaderText="ShowDOB" 
                    SortExpression="ShowDOB" />
                <asp:BoundField DataField="ManagedBy" HeaderText="ManagedBy" 
                    SortExpression="ManagedBy" />
                <asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName" />
            </Columns>
            <SelectedRowStyle BorderStyle="Dotted" />
            <EditRowStyle BorderStyle="Dotted" />
        </asp:GridView>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
            ContextTypeName="MyFamilyDatabaseDataContext" EnableDelete="True" 
            EnableInsert="True" EnableUpdate="True" TableName="PersonInfos" OnDeleting="LinqDataSource1_Deleting">
        </asp:LinqDataSource>
    
    </div>
    </form>
</body>
</html>
