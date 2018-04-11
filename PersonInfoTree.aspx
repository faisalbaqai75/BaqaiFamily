<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PersonInfoTree.aspx.cs" Inherits="PersonInfoTree" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/TreeTemplate.css" rel="stylesheet" />
    <title><%if (_PersonInfo != null) { Response.Write(_PersonInfo.FullName); } %></title>
</head>
<body>
    <div align="right">
        <asp:Label ID="lblLogin" EnableViewState="false" runat="server" Text="Label"></asp:Label>
    </div>

    <div class="tree">
        <form id="form1" runat="server">
            <div>
                <ul>
                    <li>

                        <a href="PersonInfoTree.aspx?PersonID=<%=_PersonInfo.FatherID??_PersonInfo.PersonID%>">
                            <%--Father--%>
                            <%if (_PersonInfo.FatherID != null && _PersonInfo.FatherID != 0)
                              {
                                  Response.Write(_PersonInfo.Father.FullName);
                              }
                              else
                              {
                                  Response.Write("Data unavailable");
                              }
                            %>
                        </a>
                        <ul>
                            <li>
                                <a href="PersonInfoTree.aspx?PersonID=<%=_PersonInfo.PersonID%>">
                                    <%--Person Information--%>
                                    <%Response.Write(_PersonInfo.FullName);
                                    %></a>
                                <%if (_PersonInfo.AllChildren != null)//&& _PersonInfo.AllChildren.Count > 0)
                                  {
                                      Response.Write("<ul>");
                                      foreach (PersonInfo child in _PersonInfo.AllChildren)
                                      {
                                          Response.Write("<li><a href='PersonInfoTree.aspx?PersonID=" + child.PersonID + "'>" + child.FullName + "</a></li>");

                                      }
                                      Response.Write("</ul>");
                                  }
                                %>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </form>
    </div>
</body>
</html>
