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

        protected void Button1_Click(object sender, EventArgs e)
        {
           // Client.kayitol(TextBox2.Text, TextBox3.Text, TextBox5.Text, TextBox6.Text, Convert.ToInt64(TextBox8.Text), TextBox4.Text);
            Response.Write("<script>alert('" + "msg" + "')</script>");


            string eklenecek_kod = "       <asp:Panel ID=\"SepetimTekUrun\" CssClass=\"\" runat=\"server\">                            <img class=\"sepetimresim \" src=\"/resimler/deadpoolfigur.jpg\" >                             <asp:Panel ID=\"yazilar\" class=\"sepetimyazilar \" style=\"display:block; margin:10% 0% 10% 5%\" runat=\"server\">                                <asp:Label style=\"display:block\" ID=\"Label3\" runat=\"server\" Text=\"Label\"></asp:Label>                                <asp:Label style=\"display:block\" ID=\"Label5\" runat=\"server\" Text=\"Label\"></asp:Label>                            </asp:Panel>                            <asp:ImageButton ID=\"Carpi\" class=\"sepetimcarpi \" runat=\"server\" ImageUrl=\"~/resimler/111.PNG\" />                                <asp:TextBox ID=\"Adet\" style=\"float:right; margin-right:30%; font-size:1.3em;\" runat=\"server\" TextMode=\"Number\" Width=\"30%\" ></asp:TextBox>                        </asp:Panel>           ";


            Panel4.Controls.Add(new LiteralControl(eklenecek_kod));
        }

    
        protected void Giris_yap_Click(object sender, EventArgs e)
        {
           // Client.giris(Mail.Text, password.Text);
        }
    }
}
