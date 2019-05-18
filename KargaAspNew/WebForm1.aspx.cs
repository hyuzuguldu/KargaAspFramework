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
        int sidebardurum;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
           
        }

         
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (sidebarpanel.CssClass == "sidenav dropdown-content") {
                sidebarpanel.CssClass = "sidenav";
                
            }
            else if (sidebarpanel.CssClass == "sidenav")
            {
                sidebarpanel.CssClass = "sidenav dropdown-content";
            
            }

            //Panel1.CssClass = "footer";
        }
    }
}