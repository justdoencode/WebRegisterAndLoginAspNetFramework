<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="_2019222042_SametPoyraz.RegisterPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:lightseagreen">
    <form id="form1" runat="server">
        <div align="center" style="background-color:ghostwhite">
            <br />
            <table>
                <tr>
                    <td></td>
                    <td><asp:Label align="center" runat="server" ForeColor="DarkBlue" BorderStyle="Dashed" Font-Bold="True" Font-Size="X-Large" Text=" KAYIT SAYFASI " Width="128px"></asp:Label></td>
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
                
                <tr>
                    <td align="right"><asp:Label ID="lblSifreTekrar" runat="server" Text="Şifre Tekrar :" Font-Bold="true" Font-Underline="true"></asp:Label></td>
                    <td><asp:TextBox ID="txtSifreTekrar" runat="server" TextMode="Password" Width="120px" BorderStyle="Double"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="reqValidationSifreTekrar" runat="server" 
                        ControlToValidate="txtSifreTekrar" ErrorMessage="'Şifre Tekrar' Alanı Boş Bırakılamaz" 
                        ForeColor="Red" ></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="comValidationSifre" runat="server" 
                        ControlToCompare="txtSifre" ControlToValidate="txtSifreTekrar" 
                        ErrorMessage="İki Şİfre Aynı Değil" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>

                <tr>
                    <td align="right"><asp:Label ID="lblYas" runat="server" Text="Yaş :" Font-Bold="true" Font-Underline="true"></asp:Label></td>
                    <td><asp:TextBox ID="txtYas" runat="server" Width="120px" BorderStyle="Double"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="reqValidationYas" runat="server" 
                        ControlToValidate="txtYas" ErrorMessage="'Yaş' Alanı Boş Bırakılamaz" 
                        ForeColor="Red" ></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rangValidatorYas" runat="server"
                            ControlToValidate="txtYas" MinimumValue="1" Type="Integer" MaximumValue="100"
                            ErrorMessage="Yaş aralığı 1 ile 100 arasında olmalıdır" ForeColor="Red"></asp:RangeValidator>
                    </td>
                </tr>

                <tr>
                    <td align="right"><asp:Label ID="lblCinsiyet" runat="server" Text="Cinsiyet :" Font-Bold="true" Font-Underline="true"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="radioCinsiyet" runat="server">
                            <asp:ListItem Value="erkek" Text="Erkek"></asp:ListItem>
                            <asp:ListItem Value="kadin" Text="Kadın"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td><asp:RequiredFieldValidator ID="reqValidationCinsiyet" runat="server" 
                ControlToValidate="radioCinsiyet" ErrorMessage="'Cinsiyet' Alanı Boş Bırakılamaz" 
                ForeColor="Red" ></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr><td></td></tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <asp:Button ID="btnKayit" runat="server" Text="Kaydol" BorderStyle="Double" BorderColor="Black" BackColor="DarkGreen" ForeColor="White" Width="100px" Height="30px" OnClick="btnKayit_Click"/>
                        &nbsp;<asp:LinkButton ID="btnGiris" runat="server" Text="Giriş Sayfası" Font-Bold="true" Font-Underline="true" BorderStyle="Double" BorderColor="Black" BackColor="DarkOrange" Height="25px" OnClick="btnGirisSayfasi_Click" CausesValidation="false"/>
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
