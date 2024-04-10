<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WebApplication2.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Change the password inside the database.
            <br />
            following are the steps:<br />
            1st take the old password from the user check if it is correct.<br />
            2nd take the new password from the user and update it in databased.
            <br />
            <asp:Image ID="Image1" runat="server" Height="240px" ImageUrl="~/images.jpg" Width="252px" />
            <br />
            <br />
            USERNAME:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            OLD PASSWORD:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            NEW PASSWORD:
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server"  Text="Update" OnClick="Button1_Click1" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
