using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _2019222042_SametPoyraz
{
    public partial class RegisterPage : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-16T25H8\SQLEXPRESS;Initial Catalog=OdevDatabase;Integrated Security=True;Pooling=False");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGirisSayfasi_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }

        protected void btnKayit_Click(object sender, EventArgs e)
        {
            string cinsiyet = "";
            if (radioCinsiyet.SelectedValue == "erkek")
            {
                cinsiyet = "Erkek";
            }
            else if (radioCinsiyet.SelectedValue == "kadin")
            {
                cinsiyet = "Kadın";
            }
            SqlCommand command = new SqlCommand("INSERT INTO Kullanicilar(KullaniciAdi,Sifre,Yas,Cinsiyet) " +
                "VALUES(@kullaniciAdi,@sifre,@yas,@cinsiyet)", connection);
            command.Parameters.AddWithValue("@kullaniciAdi", txtKullaniciAdi.Text.ToString());
            command.Parameters.AddWithValue("@sifre", txtSifre.Text.ToString());
            command.Parameters.AddWithValue("@yas", Convert.ToInt32(txtYas.Text));
            command.Parameters.AddWithValue("@cinsiyet", cinsiyet);

            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();

            message.Text = "Kayıt Eklendi";
            Temizle();
        }

        public void Temizle()
        {
            txtKullaniciAdi.Text = "";
            txtSifre.Text = "";
            txtSifreTekrar.Text = "";
            txtYas.Text = "";
            radioCinsiyet.ClearSelection();
        }
    }
}