using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _2019222042_SametPoyraz
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string kullaniciAdi = Session["kullaniciAdi"].ToString();
            lblKullaniciAdi.Text = kullaniciAdi;
        }
    }
}