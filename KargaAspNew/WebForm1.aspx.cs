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

        void urundetayackapa() {
            if (urundetaypanel.CssClass == "gorunur")
            {
                urundetaypanel.CssClass = "gorunmez";

            }
            else if (urundetaypanel.CssClass == "gorunmez")
            {
                urundetaypanel.CssClass = "gorunur";

            }

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            SolMenuAcKapa();
        }

         
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

           
          
        }

        protected void ImageButton16_Click(object sender, ImageClickEventArgs e)
        {
            SolMenuAcKapa();
        }

        protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
        {
            urundetayackapa();
        }
    }
}