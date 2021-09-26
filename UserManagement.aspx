<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserManagement.aspx.cs" Inherits="OnlineBookStore.UserManagement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>UserManagement</title>
</head>
    <link href="StyleSheet1.css" rel="stylesheet" />
<body>
    <form id="form1" runat="server">
        <div>
<h3>UserManagement</h3>
            <br />






        </div>
        <div>
       
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdminPannel.aspx">Admin Pannel</asp:HyperLink>|
            <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/UserManagement.aspx">User Management</asp:HyperLink>|
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/BookManagement.aspx">Books Management</asp:HyperLink>|
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Logout.aspx">Logout</asp:HyperLink>

        </div>
    
        <div>



            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="userID" DataSourceID="SqlDataSource1" AllowPaging="True">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="userID" HeaderText="userID" ReadOnly="True" SortExpression="userID" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" SortExpression="MobileNo" />
                    <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BookStoreFinalDBConnectionString %>" SelectCommand="SELECT [userID], [Email], [Address], [MobileNo], [status] FROM [users]" UpdateCommand="update users set [status]=@status where userID=@userID" DeleteCommand="delete from users where userID=@userID">

            </asp:SqlDataSource>



        </div>
    </form>
</body>
</html>
