<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdatePersonInfo2.aspx.cs" Inherits="UpdatePersonInfo2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="cboSpouseId" runat="server" EnableViewState="true">
        <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        
        <%
                foreach (PersonInfo p in _db.PersonInfos)
        {
        %>
        <asp:ListItem Value="<%=p.PersonID%>"
        <%
            if (_PersonInfo.SpouseID != null && p.PersonID == _PersonInfo.SpouseID)
            {
                
                Response.Write(" Selected=true");
            }
            %>
            ></asp:ListItem>
        <%}%>

         
        
        <!--</asp:DropDownList> -->
            
    </div>
    </form>
</body>
</html>
