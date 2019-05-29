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
        //statil olmayan herşey her tuşa baışta tekrar oluşuyor 
        static int mevcutitemsayisi = 0;
        
        protected void Page_Load(object sender, EventArgs e) 
        {
            if (!Page.IsPostBack) //------------- if'in içi sadece birkez çalışıyor
            {
                
            }
            // GÜvenlik_kodu.Text = Client.guvenlikkodugndr().ToString();
        }

        // Service1Client Client = new Service1Client();
       
        
        public class Urunler
        {
            public string ad;
            public string imagesource;
            public int fiyat;
            public int adet;
            public string urunaciklamasi;

        }
        static public List<Urunler> UrunList = new List<Urunler>() {
            new Urunler() {
             ad = "Marvel Tshirt", fiyat = 30, imagesource = "~/resimler/marveltshirt.jpg"
            },
            new Urunler() {
             ad = "Atatürk İmza Tshirt", fiyat = 30, imagesource = "~/resimler/imzatshirt.jpg"
            },
            new Urunler() {
             ad = "Star Gece Lambası", fiyat = 35, imagesource = "~/resimler/stargecelambasi.jpg"
            },
            new Urunler() {
             ad = "Deadpool Figur", fiyat = 75, imagesource = "~/resimler/deadpoolfigur.jpg"
            },
            new Urunler() {
             ad = "Game of Thrones Abajur", fiyat = 70, imagesource = "~/resimler/gameofthronesab.jpg"
            },
            new Urunler() {
             ad = "LOTR Abajur", fiyat = 70, imagesource = "~/resimler/lotrab.jpg"
            },
            new Urunler() {
             ad = "StarWars Abajur", fiyat = 70, imagesource = "~/resimler/starwarsab.jpg"
            },
            new Urunler() {
             ad = "Okul Abajur", fiyat = 70, imagesource = "~/resimler/okulab.jpg"
            },
            new Urunler() {
             ad = "934 Anahtarlık", fiyat = 15, imagesource = "~/resimler/934an.jpg"
            },
            new Urunler() {
             ad = "Baby Groot Anahtarlık", fiyat = 15, imagesource = "~/resimler/babygrootan.jpg"
            },
            new Urunler() {
             ad = "Temel Reis Anahtarlık", fiyat = 15, imagesource = "~/resimler/temelreisan.jpg"
            },
            new Urunler() {
             ad = "Captain America Anahtarlık", fiyat = 15, imagesource = "~/resimler/captainamericaan.jpg"
            }
        };

        void gorunurgorunmez(Panel panelim)
        {
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


        void gorunmezyap(Panel panelim)
        {
            string paneliminCssSınıfı = panelim.CssClass;

            if (paneliminCssSınıfı.Contains("gorunur"))
            {
                panelim.CssClass = paneliminCssSınıfı.Replace("gorunur", "gorunmez");
            }


        }
        void gorunuryap(Panel panelim)
        {
            string paneliminCssSınıfı = panelim.CssClass;

            if (paneliminCssSınıfı.Contains("gorunmez"))
            {
                panelim.CssClass = paneliminCssSınıfı.Replace("gorunmez", "gorunur");
            }

        }
        void gorunmezyaphepsi()
        {
            gorunmezyap(anasayfaurunler);
            gorunmezyap(anahtarliklarpaneli);
            gorunmezyap(Abajurlarpaneli);
            gorunmezyap(yeniuyeol);
            gorunmezyap(urundetaypanel);
            
            
            
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

        protected void anasyfa_urun_marvelshirt_Click(object sender, ImageClickEventArgs e)
        {
            int inx = indbul(anasyfa_urun_marvelshirt.ImageUrl);
            Image1.ImageUrl = UrunList.ElementAt(inx).imagesource;
            Label1.Text = UrunList.ElementAt(inx).ad;
            Label2.Text = UrunList.ElementAt(inx).fiyat.ToString() + " " + "Lira";
            gorunurgorunmez(urundetaypanel);
            gorunurgorunmez(anasayfaurunler);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Client.kayitol(TextBox2.Text, TextBox3.Text, TextBox5.Text, TextBox6.Text, Convert.ToInt64(TextBox8.Text), TextBox4.Text);
            //Response.Write("<script>alert('" + "msg" + "')</script>");  yorumları kaldırabilirsin çoğu çalışıyor

        }


        
        protected void SepeteEkle_Click(object sender, EventArgs e)
        {
                if (mevcutitemsayisi == 0)
                {
                    sepetimresim1.ImageUrl = Image1.ImageUrl;
                    fiyat.Text = Label2.Text;
                    urunadi.Text = Label1.Text;
                    adet.Text = TextBox1.Text.ToString();
                    mevcutitemsayisi++;
                }
                else if (mevcutitemsayisi == 1)
                {
                    sepetimresim2.ImageUrl = Image1.ImageUrl;
                    fiyat2.Text = Label2.Text;
                    urunadi2.Text = Label1.Text;
                    adet2.Text = TextBox1.Text.ToString();
                    mevcutitemsayisi++;

                }
                else if (mevcutitemsayisi == 2)
                {
                    Image3.ImageUrl = Image1.ImageUrl;
                    fiyat3.Text = Label2.Text;
                    urunadi3.Text = Label1.Text;
                    adet3.Text = TextBox1.Text.ToString();
                    mevcutitemsayisi++;

                }

        }
        protected void sepetbuton_click(object sender, EventArgs e)
        {

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
        public int indbul(string resimurl)
        {
            for (int y = 0; y < UrunList.Count; y++)
            {
                if (UrunList.ElementAt(y).imagesource == resimurl)
                {
                    return y;
                }

            }
            return 0;
        }
        protected void anasayfa_urun_imzashirt_Click(object sender, ImageClickEventArgs e)
        {
            int inx = indbul(anasayfa_urun_imzashirt.ImageUrl);
            Image1.ImageUrl = UrunList.ElementAt(inx).imagesource;
            Label1.Text = UrunList.ElementAt(inx).ad;
            Label2.Text = UrunList.ElementAt(inx).fiyat.ToString() + " " + "Lira";
            gorunmezyaphepsi();
            gorunuryap(urundetaypanel);
           
        }

        protected void anasayfa_urun_lamba_Click(object sender, ImageClickEventArgs e)
        {
            int inx = indbul(anasayfa_urun_lamba.ImageUrl);
            Image1.ImageUrl = UrunList.ElementAt(inx).imagesource;
            Label1.Text = UrunList.ElementAt(inx).ad;
            Label2.Text = UrunList.ElementAt(inx).fiyat.ToString() + " " + "Lira";
            gorunmezyaphepsi();
            gorunuryap(urundetaypanel);
            
        }

        protected void gotBttn_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void anasayfa_urun_deadpool_Click(object sender, ImageClickEventArgs e)
        {
            int inx = indbul(anasayfa_urun_deadpool.ImageUrl);
            Image1.ImageUrl = UrunList.ElementAt(inx).imagesource;
            Label1.Text = UrunList.ElementAt(inx).ad;
            Label2.Text = UrunList.ElementAt(inx).fiyat.ToString() + " " + "Lira";
            gorunmezyaphepsi();
            gorunuryap(urundetaypanel);
           
        }

        protected void lotrabbttn_Click(object sender, ImageClickEventArgs e)
        {

        }



        protected void swabbttn_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void grootanbttn_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void temelrbttn_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void captainanbttn_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void okulabbttn_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void anbttn_Click(object sender, ImageClickEventArgs e)
        {

        }
        
        protected void Anahtarliklar_Click(object sender, EventArgs e)
        {
            gorunmezyaphepsi();
            gorunuryap(anahtarliklarpaneli);
        }
        protected void Abajurlar_Click(object sender, EventArgs e)
        {
            gorunmezyaphepsi();
            gorunuryap(Abajurlarpaneli);
        }


        protected void Uye_ol_click(object sender, EventArgs e)
        {
            gorunmezyaphepsi();
            gorunuryap(yeniuyeol);
        }
        
        protected void AnasayfaFooter_click(object sender, EventArgs e)
        {
            gorunmezyaphepsi();
            gorunuryap(anasayfaurunler);
        }
        
        protected void odeme_buton_devam_Click(object sender, EventArgs e)
        {
            
        }


    }
}