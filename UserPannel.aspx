<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserPannel.aspx.cs" Inherits="OnlineBookStore.UserPannel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            color: #FF0000;
        }
        .auto-style3 {
            color: #9900CC;
        }
        .auto-style4 {
            font-size: large;
        }
    </style>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>

<h2>Welcome 
    <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="Label"></asp:Label>
            </h2>

<div>

    <div>

        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/UserPannel.aspx">Home</asp:HyperLink>|
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/AddUserAccounts.aspx">Add Your Account Information</asp:HyperLink>|
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Logout.aspx">Logout</asp:HyperLink>
    </div>

    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td><span class="auto-style4">Enter Book Name&nbsp; </span>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style4" Width="477px"></asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" CssClass="auto-style4" Text="search" OnClick="Button1_Click" />
            &nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="View All" />
            </td>
            <td>&nbsp;</td>
            <td>
                <asp:Image ID="Image1" runat="server" Height="50px" ImageUrl="~/images/2.png" Width="50px" />
                <strong>
                <asp:Label ID="Label2" runat="server" CssClass="auto-style2"></asp:Label>
                </strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                    <AlternatingItemStyle BackColor="#F7F7F7" />
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <HeaderTemplate>
                        All Books
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image2" runat="server" ImageUrl='<%#DataBinder.Eval(Container.DataItem, "image") %>' />
                    <br />
                        Title:<asp:Label ID="Label5" runat="server" Text='<%# Bind("title") %>'></asp:Label>
                    <br />
                        Version:<asp:Label ID="Label4" runat="server" Text='<%# Bind("Version") %>'></asp:Label>
                    <br />

                        Author:<asp:Label ID="Label6" runat="server" Text='<%# Bind("Author") %>'></asp:Label>
                    <br />
                              Book Number:<asp:Label ID="Label3" runat="server" Text='<%# Bind("BookID") %>'></asp:Label>
                    <br />
                      Quantity:  <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                                        <br />
                                <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("BookID")%>' CommandName="addtocart" CssClass="auto-style2" Height="56px" ImageUrl="~/images/3.jfif" />
<br />



                    </ItemTemplate>
                </asp:DataList>
                <br />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>



</div>

        </div>
    </form>
</body>
</html>
