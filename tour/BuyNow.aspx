<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BuyNow.aspx.cs" Inherits="BuyNow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 36%;
            height: 152px;
            background-color: #FFFF66;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            width: 134px;
        }
        .auto-style4 {
            height: 23px;
            width: 134px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Shop Now"></asp:Label>
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Name</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="173px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Email</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="24px" Width="172px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Mobile</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="20px" Width="172px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Price</td>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Label2"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
        <p>
            <input type="hidden" runat="server" id="key" name="key" value="gtKFFx" />
        <input type="hidden" runat="server" id="salt" name="salt" value="eCwWELxi" />
        <input type="hidden" runat="server" id="hash" name="hash" value=""  />
        <input type="hidden" runat="server" id="txnid" name="txnid" value="" />
            <asp:Button ID="Button1" runat="server" ForeColor="#FF3300" Height="26px" Text="PayNOW" Width="64px" OnClick="Button1_Click" />
        </p>
    </form>
</body>
</html>
