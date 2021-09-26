<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPannel.aspx.cs" Inherits="OnlineBookStore.AdminPannel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
    </style>
</head>
    <link href="StyleSheet1.css" rel="stylesheet" />
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Admin Pannel</h1>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdminPannel.aspx">Admin Pannel</asp:HyperLink>|
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/AdminAccountInformation.aspx">Add Accounts Information</asp:HyperLink>|
            <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/UserManagement.aspx">User Management</asp:HyperLink>|
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/BookManagement.aspx">Books Management</asp:HyperLink>|
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/ViewAllBooks.aspx">View all Books</asp:HyperLink>|
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Logout.aspx">Logout</asp:HyperLink>

        </div>
        <strong>
        <asp:Label ID="Label5" runat="server" CssClass="auto-style1"></asp:Label>
        </strong>
        <br />

        <div>



            <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" RepeatDirection="Horizontal">
                <AlternatingItemStyle BackColor="#F7F7F7" />
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />

                <HeaderTemplate>
                    All Books
                </HeaderTemplate>
                <ItemTemplate>

                    <asp:Image ID="Image1" runat="server" ImageUrl='<%#DataBinder.Eval(Container.DataItem, "image") %>' />
                    <br />
                    Title:<asp:Label ID="Label1" runat="server" Text='<%# Bind("title") %>'></asp:Label>
                    <br />
                    Version:<asp:Label ID="Label4" runat="server" Text='<%# Bind("Version") %>'></asp:Label>
                    <br />

                    Author:<asp:Label ID="Label2" runat="server" Text='<%# Bind("Author") %>'></asp:Label>
                    <br />
                    Quantity:<asp:Label ID="Label3" runat="server" Text='<%# Bind("Quantity") %>'></asp:Label>
                    <br />





                </ItemTemplate>


            </asp:DataList>


            <br />




        </div>
    </form>
</body>
</html>
