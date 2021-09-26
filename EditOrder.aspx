<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditOrder.aspx.cs" Inherits="OnlineBookStore.EditOrder" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            color: #009933;
            
        }
        .auto-style2 {
            width: 120px;
        }
        .auto-style3 {
            color: #FF3300;
        }
        .auto-style4 {
            color: #6600CC;
            font-size: large;
            font-weight: bold;
        }
    </style>
</head>
    <link href="StyleSheet1.css" rel="stylesheet" />
<body>
    <form id="form1" runat="server">
        <div>

            <table class="auto-style1">
                <tr>
                    <td colspan="3"><span class="auto-style3"><h2>

                                                             Edit Order </h2></td>
                </tr>
                <tr>
                    <td class="auto-style2">S.No</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Book ID</td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Title</td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Quantity</span></td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="auto-style3">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td><span class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style2">Unit Price</td>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Total</td>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2"></span></td>
                    <td>
                        <strong>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" CssClass="auto-style4" />
                        </strong>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>