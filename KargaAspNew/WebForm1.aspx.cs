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
        // Service1Client Client = new Service1Client();


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
                panelim.CssClass = paneliminCssSınıfı.Replace("gorunur", "gorunmez");

            }
            else if (paneliminCssSınıfı.Contains("gorunmez"))
            {
                panelim.CssClass = paneliminCssSınıfı.Replace("gorunmez", "gorunur");

            }

        }
        int sayac = 1;
        string Idarttırıcı (string degisecek)
        {
            int start1 = 0;
            string kalankisim = degisecek;
            while (kalankisim.Contains("ID=")) {
                int Idninyeri = degisecek.IndexOf("ID=", start1);
                int Tırnakyeri = degisecek.IndexOf("\"", Idninyeri);
                start1 = Tırnakyeri;
                string aranacak = degisecek.Substring(Idninyeri, Tırnakyeri - Idninyeri + 3);
                kalankisim = degisecek.Substring(Tırnakyeri);
                degisecek.Replace(aranacak, aranacak + sayac.ToString());

            }
            return degisecek;
        }


        protected void Page_Load(object sender, EventArgs e)
        {
           // GÜvenlik_kodu.Text = Client.guvenlikkodugndr().ToString();
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

        int sepetsayac = 1;
        string eklenecek_kod = " <div>                            <img class=\"sepetimresim \" src=\"/resimler/deadpoolfigur.jpg\" >                             <div class=\"sepetimyazilar\" style=\"display:block; margin:10% 0% 10% 5%\" >                                <p style=\"display:block\">Pırasa</p>                                <p style=\"display:block\">Pırasa</p>                            </div>                           <img class=\"sepetimcarpi \" src=\"/resimler/111.PNG\">                              <form action=\"/WebForm1.aspx\">                              <input style=\"float:right; margin-right:30%; font-size:1.3em;  Width=30%\"  type=\"number\" name=\"quantity\" min=\"1\" max=\"9\">                                <input type=\"submit\">                              </form>                                                    </div>   ";

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Client.kayitol(TextBox2.Text, TextBox3.Text, TextBox5.Text, TextBox6.Text, Convert.ToInt64(TextBox8.Text), TextBox4.Text);
            //Response.Write("<script>alert('" + "msg" + "')</script>");  yorumları kaldırabilirsin çoğu çalışıyor


            
            string arttılmıs=Idarttırıcı(eklenecek_kod);

            
            for (int i = 0; i < sepetsayac; i++)
            {
                SepetimUrunler.Controls.Add(new LiteralControl(eklenecek_kod));
            }
            sepetsayac++;
            
            

        }


        
             protected void SepeteEkle_Click(object sender, EventArgs e)
        {
            gorunurgorunmez(Sepetim);

        }
        protected void sepetbuton_click(object sender, EventArgs e)
        {
            SepetimUrunler.Controls.Add(new LiteralControl(eklenecek_kod));
            gorunurgorunmez(Sepetim);

        }
        protected void sepetim3cizgi(object sender, EventArgs e)
        {
            gorunurgorunmez(Sepetim);

        }
        protected void Giris_yap_Click(object sender, EventArgs e)
        {
           // Client.giris(Mail.Text, password.Text);
        }
    }
}
