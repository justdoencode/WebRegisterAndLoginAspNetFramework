<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="_2019222042_SametPoyraz.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:darkorange">
    <form id="form1" runat="server">
        <div align="center" style="background-color:aliceblue">
            <br />
            <table>
                <tr>
                    <td></td>
                    <td><asp:Label align="center" runat="server" ForeColor="DarkGreen" BorderStyle="Dashed" Font-Bold="True" Font-Size="X-Large" Text=" GİRİŞ SAYFASI " Width="148px"></asp:Label></td>
                </tr>
                <tr><td></td></tr>
                <tr><td></td></tr>
                <tr>
                    <td align="right"><asp:Label ID="lblKullaniciAdi" runat="server" Text="Kullanıcı Adı :" Font-Bold="true" Font-Underline="true"></asp:Label></td>
                    <td><asp:TextBox ID="txtKullaniciAdi" runat="server" Width="120px" BorderStyle="Double"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="reqValidationKullaniciAdi" runat="server" 
                        ControlToValidate="txtKullaniciAdi" ErrorMessage="'Kullanıcı Adı' Alanı Boş Bırakılamaz" 
                        ForeColor="Red" ></asp:RequiredFieldValidator>
                    </td>
                </tr>
                
                <tr>
                    <td align="right"><asp:Label ID="lblSifre" runat="server" Text="Şİfre :" Font-Bold="true" Font-Underline="true"></asp:Label></td>
                    <td><asp:TextBox ID="txtSifre" runat="server" TextMode="Password" Width="120px" BorderStyle="Double"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="reqValidationSifre" runat="server" 
                        ControlToValidate="txtSifre" ErrorMessage="'Şifre' Alanı Boş Bırakılamaz" 
                        ForeColor="Red" ></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr><td></td></tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnGiris" runat="server" Text="Giriş Yap" BorderStyle="Double" BorderColor="Black" BackColor="DarkGreen" ForeColor="White" Width="100px" Height="30px" OnClick="btnGiris_Click"/>
                        <asp:LinkButton ID="btnKayit" runat="server" Text="Kayıt Sayfası" Font-Bold="true" Font-Underline="true" BorderStyle="Double" BorderColor="Black" BackColor="DarkOrange" Height="25px" OnClick="btnKayit_Click" CausesValidation="false"></asp:LinkButton>
                    </td>
                </tr>

                <tr>
                    <td></td>
                    <td><asp:Label ID="message" runat="server" ForeColor="Red"></asp:Label></td>
                </tr>
                </table>
            <br />
        </div>
    </form>
</body>
</html>
