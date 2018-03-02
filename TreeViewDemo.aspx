<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TreeViewDemo.aspx.cs" Inherits="TreeViewDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">


</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Treeview Example</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TreeView ID="TreeView1" runat="server" 
            ontreenodepopulate="TreeView1_TreeNodePopulate" ExpandDepth="10" 
            ImageSet="Arrows">
            <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
            <Nodes>
                <asp:TreeNode Text="New Node" Value="New Node">
                </asp:TreeNode>
            </Nodes>
            <NodeStyle Font-Names="Verdana" Font-Size="10pt" ForeColor="Black" 
                HorizontalPadding="3px" NodeSpacing="3px" VerticalPadding="3px" />
            <ParentNodeStyle Font-Bold="False" />
            <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" 
                HorizontalPadding="3px" VerticalPadding="3px" />
        </asp:TreeView>
    </div>
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
        ContextTypeName="MyFamilyDatabaseDataContext" TableName="PersonInfos">
    </asp:LinqDataSource>
    </form>
</body>
</html>