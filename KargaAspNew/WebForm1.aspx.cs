using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using KargaAspNew.ServiceReference1;
namespace KargaAspNew
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        Service1Client Client = new Service1Client();


        void SolMenuAcKapa() {
            if (sidebarpanel.CssClass == "sidenav dropdown-content")
            {
                sidebarpanel.CssClass = "sidenav";

            }
            else if (sidebarpanel.CssClass == "sidenav")
            {
                sidebarpanel.CssClass = "sidenav dropdown-content";

            }
        }

        
        void gorunurgorunmez(Panel panelim) {
            string paneliminCssSınıfı = panelim.CssClass;
            
            if (paneliminCssSınıfı.Contains("gorunur"))
            {
                panelim.CssClass = paneliminCssSınıfı.Replace("gorunur", "gorunmez") ;

            }
            else if (paneliminCssSınıfı.Contains("gorunmez"))
            {
                panelim.CssClass = paneliminCssSınıfı.Replace("gorunmez", "gorunur")  ;

            }

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            GÜvenlik_kodu.Text = Client.guvenlikkodugndr().ToString();
        }

        protected void navbar3cizgi_click(object sender, ImageClickEventArgs e)
        {

            gorunurgorunmez(sidebarpanel);

        }

         
        protected void adamresmi_Click(object sender, ImageClickEventArgs e)
        {


            gorunurgorunmez(sidenavsag);
        }
        

         protected void sidenavsag3cizgi_Click(object sender, ImageClickEventArgs e)
        {
            gorunurgorunmez(sidenavsag);
        }

        protected void solsidenav3cizgi_Click(object sender, ImageClickEventArgs e)
        {
            gorunurgorunmez(sidebarpanel);
        }

        protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
        {
            gorunurgorunmez(urundetaypanel);
            gorunurgorunmez(anasayfaurunler);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Client.kayitol(TextBox2.Text, TextBox3.Text, TextBox5.Text, TextBox6.Text, Convert.ToInt64(TextBox8.Text), TextBox4.Text);
        }

        protected void Giris_yap_Click(object sender, EventArgs e)
        {
            Client.giris(Mail.Text, password.Text);
        }
    }
}
