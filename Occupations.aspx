<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Occupations.aspx.cs" Inherits="Occupations" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
            ContextTypeName="MyFamilyDatabaseDataContext" EnableDelete="True" 
            EnableInsert="True" EnableUpdate="True" TableName="Occupations">
        </asp:LinqDataSource>
        <br />
        <a href="./AddNewOccupation.aspx">Add New</a><asp:GridView ID="GridView1" 
            runat="server" AllowPaging="True" AllowSorting="True" 
            AutoGenerateColumns="False" DataKeyNames="OccupationID" 
            DataSourceID="LinqDataSource1" PageSize="50">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ShowSelectButton="True" />
                <asp:BoundField DataField="OccupationID" HeaderText="OccupationID" 
                    InsertVisible="False" ReadOnly="True" SortExpression="OccupationID" />
                <asp:BoundField DataField="OccupationDesc" HeaderText="OccupationDesc" 
                    SortExpression="OccupationDesc" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
