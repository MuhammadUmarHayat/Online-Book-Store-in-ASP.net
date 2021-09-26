<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logout.aspx.cs" Inherits="OnlineBookStore.Logout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Log Out</title>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Logout!</h2>
            You are successfully loggedout. To login again
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Click Here!</asp:HyperLink>
        </div>
    </form>
</body>
</html>
