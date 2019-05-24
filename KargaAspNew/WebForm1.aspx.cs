using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KargaAspNew
{
    public partial class WebForm1 : System.Web.UI.Page
    {
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
            
        }

        protected void navbar3cizgi_click(object sender, ImageClickEventArgs e)
        {

            gorunurgorunmez(sidebarpanel);

        }

         
        protected void adamresmi_Click(object sender, ImageClickEventArgs e)
        {

           
          
        }

        protected void ImageButton16_Click(object sender, ImageClickEventArgs e)
        {
            gorunurgorunmez(sidebarpanel);
        }

        protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
        {
            gorunurgorunmez(urundetaypanel);
            gorunurgorunmez(anasayfaurunler);
        }
    }
}