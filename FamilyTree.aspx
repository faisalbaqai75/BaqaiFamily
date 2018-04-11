<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FamilyTree.aspx.cs" Inherits="FamilyTree" %>

<%@ Import Namespace="System.Linq" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-3404660-2"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        var host = window.location.hostname;
        if (host != "localhost") {
            gtag('js', new Date());
            gtag('config', 'UA-3404660-2');
        }
    </script>
    <title>Baqai Family Tree</title>
    <link href="css/NavBarStyleSheet.css" rel="stylesheet" />
</head>
<body bgcolor="#ccffcc">

    <div align="right">
        <asp:Label ID="lblLogin" EnableViewState="false" runat="server" Text="Label"></asp:Label>
    </div>

    <form id="form1" runat="server">

        <table border="1" cellpadding="10" cellspacing="0" width="100%">
            <tr>
                <!--#include virtual="NavBar.inc"-->
                <td>
                    <asp:TreeView ID="TreeView1" runat="server"
                        ExpandDepth="10"
                        ImageSet="Arrows">
                        <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
                        <Nodes>
                            <asp:TreeNode Text="New Node" Value="New Node"></asp:TreeNode>
                        </Nodes>
                        <NodeStyle Font-Names="Verdana" Font-Size="10pt" ForeColor="Black"
                            HorizontalPadding="3px" NodeSpacing="3px" VerticalPadding="3px" />
                        <ParentNodeStyle Font-Bold="False" />
                        <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD"
                            HorizontalPadding="3px" VerticalPadding="3px" />
                    </asp:TreeView>
                    <asp:LinqDataSource ID="LinqDataSource1" runat="server"
                        ContextTypeName="MyFamilyDatabaseDataContext" TableName="PersonInfos">
                    </asp:LinqDataSource>

                </td>
            </tr>
        </table>
        <br />
    </form>
</body>
</html>
