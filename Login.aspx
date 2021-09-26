<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OnlineBookStore.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
    <link href="StyleSheet1.css" rel="stylesheet" />
<body>
    <form id="form1" runat="server">
        <div>
            <center>

            
            <h3 >Login Interface</h3>
            </center>
            <br />
            <table class="auto-style1">
                <tr>
                    <td>Select User Type</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Admin</asp:ListItem>
                            <asp:ListItem>User</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>User ID</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
                        <strong>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                        </strong>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/RegistrationForm.aspx">Register Now</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
        <div>


            <br />
            <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" RepeatDirection="Horizontal">
                <AlternatingItemStyle BackColor="#F7F7F7" />
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />

                <HeaderTemplate>
                    <center>

                    
                   <h2>
All Books

                   </h2> 
                        </center>
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





                </ItemTemplate>


            </asp:DataList>


            <br />



        </div>
    </form>
</body>
</html>
