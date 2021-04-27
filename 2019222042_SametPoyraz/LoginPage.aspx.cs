using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _2019222042_SametPoyraz
{
    public partial class LoginPage : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-16T25H8\SQLEXPRESS;Initial Catalog=OdevDatabase;Integrated Security=True;Pooling=False");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnGiris_Click(object sender, EventArgs e)
        {
            Session["kullaniciAdi"] = txtKullaniciAdi.Text;
            Session.Timeout = 1;
            SqlCommand command = new SqlCommand("SELECT *FROM Kullanicilar WHERE KullaniciAdi=@kullaniciAdi AND Sifre=@sifre", connection);
            command.Parameters.AddWithValue("@kullaniciAdi", txtKullaniciAdi.Text);
            command.Parameters.AddWithValue("@sifre", txtSifre.Text);

            

            connection.Open();
            SqlDataReader dataReader = command.ExecuteReader();
            if (dataReader.Read())
            {
                Response.Redirect("~/HomePage.aspx");
            }
            else
            {
                message.Text = "Kullanıcı Adı Veya Parola Hatalı";
                txtKullaniciAdi.Text = "";
                txtSifre.Text = "";
            }
        }
        protected void btnKayit_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegisterPage.aspx");
        }
    }
}