<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="_2019222042_SametPoyraz.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:blueviolet">
    <form id="form1" runat="server">
        <div align="center" style="background-color:floralwhite">
            <br />
            <asp:Label runat="server" Text="WELCOME TO HOME PAGE" BorderStyle="Dotted" ForeColor="DarkCyan" Font-Bold="true" Font-Size="XX-Large"></asp:Label><br />
            <asp:Label runat="server" ForeColor="DarkRed" Font-Bold="true" Font-Size="Large" Text="Kullanıcı Adı :"></asp:Label>
            <asp:Label ID="lblKullaniciAdi" runat="server" ForeColor="Black" Font-Bold="false" Font-Size="Large" Text="Boş"></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>
