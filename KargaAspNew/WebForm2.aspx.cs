using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KargaAspNew
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        static List<Panel> parts = new List<Panel>() ;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) //------------- if'in içi sadece birkez çalışıyor
            {
                parts.Add(Panel1);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            parts[0].CssClass = "none";
        }
    }
}