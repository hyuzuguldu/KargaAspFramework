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
        public class Urunler
        {
            public string ad;
            public string imagesource;
            public int fiyat;
            public int adet;
            public string urunaciklamasi;

        }
        public List<Urunler> UrunList = new List<Urunler>() {
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

        void SolMenuAcKapa()
        {
            if (sidebarpanel.CssClass == "sidenav dropdown-content")
            {
                sidebarpanel.CssClass = "sidenav";

            }
            else if (sidebarpanel.CssClass == "sidenav")
            {
                sidebarpanel.CssClass = "sidenav dropdown-content";

            }
        }


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


        int sayac = 1;
        string Idarttırıcı(string degisecek)
        {
            int start1 = 0;
            string kalankisim = degisecek;
            while (kalankisim.Contains("ID="))
            {
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
            int inx = indbul(ImageButton9.ImageUrl);
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


        int mevcutitemsayisi = 0;
        protected void SepeteEkle_Click(object sender, EventArgs e)
        {



            gorunurgorunmez(Sepetim);
            mevcutitemsayisi++; //ürün sayısına göre if döngüsü ekle değiştir sepetimfiyat2.text
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
        protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
        {
            int inx = indbul(ImageButton7.ImageUrl);
            Image1.ImageUrl = UrunList.ElementAt(inx).imagesource;
            Label1.Text = UrunList.ElementAt(inx).ad;
            Label2.Text = UrunList.ElementAt(inx).fiyat.ToString() + " " + "Lira";
            gorunurgorunmez(urundetaypanel);
            gorunurgorunmez(anasayfaurunler);
        }

        protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
        {
            int inx = indbul(ImageButton8.ImageUrl);
            Image1.ImageUrl = UrunList.ElementAt(inx).imagesource;
            Label1.Text = UrunList.ElementAt(inx).ad;
            Label2.Text = UrunList.ElementAt(inx).fiyat.ToString() + " " + "Lira";
            gorunurgorunmez(urundetaypanel);
            gorunurgorunmez(anasayfaurunler);
        }

        protected void gotBttn_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImageButton10_Click(object sender, ImageClickEventArgs e)
        {
            int inx = indbul(ImageButton10.ImageUrl);
            Image1.ImageUrl = UrunList.ElementAt(inx).imagesource;
            Label1.Text = UrunList.ElementAt(inx).ad;
            Label2.Text = UrunList.ElementAt(inx).fiyat.ToString() + " " + "Lira";
            gorunurgorunmez(urundetaypanel);
            gorunurgorunmez(anasayfaurunler);
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

        //gorunmez yapılması gereken herşey bir listede tutulabilinir
        protected void Anahtarliklar_Click(object sender, EventArgs e)
        {
            gorunmezyap(anasayfaurunler);
            gorunmezyap(Abajurlarpaneli);
            gorunurgorunmez(anahtarliklarpaneli);
        }
        protected void Abajurlar_Click(object sender, EventArgs e)
        {
            gorunmezyap(anasayfaurunler);
            gorunmezyap(anahtarliklarpaneli);
            gorunurgorunmez(Abajurlarpaneli);
        }


        protected void Uye_ol_click(object sender, EventArgs e)
        {
            gorunmezyap(anasayfaurunler);
            gorunmezyap(anahtarliklarpaneli);
            gorunmezyap(Abajurlarpaneli);
            gorunuryap(yeniuyeol);
        }
    }
}