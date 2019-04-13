<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 35%;
            height: 364px;
            background-color: #FF0000;
        }
        .auto-style2 {
            height: 57px;
            text-align: center;
            background-color: #FFFF99;
        }
        .auto-style3 {
            background-color: #FFFF99;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Welcome to Our Journey Buzz"></asp:Label>
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Your Tourist Package</td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: center">
                    <asp:Image ID="Image1" runat="server" Height="136px" ImageUrl="~/productpic.jpg" style="background-color: #FFFFCC" Width="163px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: center">price:<asp:Label ID="Label2" runat="server" Text="100"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: center">
                    <asp:Button ID="Button1" runat="server" ForeColor="Red" OnClick="Button1_Click" Text="BuyNow" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
