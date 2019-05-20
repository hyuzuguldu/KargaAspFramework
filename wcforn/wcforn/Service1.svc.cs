using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace wcforn
{
    public class Kullanici
    {
        public string ad;
        public string soyad;
        public string email;
        public long tel;
        public string sifre;
        public string sifretekrar;
        
    }
    public class Urunler
    {
        public string ad;
        public string imagesource;
        public int fiyat;
        public int adet;
        public string urunaciklamasi;
        
    }
 
    public class IletisimF
    {
        public string adsoyad;
        public string email;
        public long tel;
        public string konu;
        public string mesaj;
    }
   
        
        
    
    
    public class Service1 : IService1
    {
        public Random rastgele = new Random();
        public List<Kullanici> Kullanicilist = new List<Kullanici>();
        public List<IletisimF> MesajList = new List<IletisimF>();
        public List<Urunler> AnasayfaUrunleri = new List<Urunler>()
        {
             new Urunler(){ ad="Marvel Tshirt", fiyat =30 , imagesource="Pics/marveltshirt.jpg" },
             new Urunler(){ ad="Atatürk İmza Tshirt", fiyat =30 , imagesource="Pics/imzatshirt.jpg"  },
             new Urunler(){ ad="Star Gece Lambası", fiyat =35 , imagesource="Pics/stargecelambasi.jpg" },
             new Urunler(){ ad="Deadpool Figur", fiyat =75 , imagesource="Pics/deadpoolfigur.jpg" }
        };
        public List<Urunler> AbajurUrunleri = new List<Urunler>()
        {
             new Urunler(){ ad="Game of Thrones Abajur", fiyat =70 , imagesource="Pics/gameofthronesab.jpg" },
             new Urunler(){ ad="LOTR Abajur", fiyat =70 , imagesource="Pics/lotrab.jpg" },
             new Urunler(){ ad="StarWars Abajur", fiyat =70 , imagesource="Pics/starwarsab.jpg" },
             new Urunler(){ ad="Okul Abajur", fiyat =70 , imagesource="Pics/okulab.jpg" }
        };
        public List<Urunler> AnahtarlikUrunleri = new List<Urunler>()
        {
             new Urunler(){ ad="934 Anahtarlık", fiyat =15 , imagesource="Pics/934an.jpg" },
             new Urunler(){ ad="Baby Groot Anahtarlık", fiyat =15 , imagesource="Pics/babygrootan.jpg" },
             new Urunler(){ ad="Temel Reis Anahtarlık", fiyat =15 , imagesource="Pics/temelreisan.jpg"},
             new Urunler(){ ad="Captain America Anahtarlık", fiyat =15 , imagesource="Pics/captainamericaan.jpg" }
        };




        public string giris(string email, string sifre)
        {
            for (int i=0;i<Kullanicilist.Count;i++)
            {
                if (Kullanicilist.ElementAt(i).email == email && Kullanicilist.ElementAt(i).sifre==sifre)
                {
                    return "Giriş işlemi başarılı";
                }
               
            }

            
            return "E-mail veya şifre yanlış";
        }
        int x;
        public int guvenlikkodugndr()
        {
             x = rastgele.Next(1000, 9999);
            
            return x;
        }

        public void iletisimformual(string adsoyad, string email, long tel, string konu, string mesaj)
        {
            IletisimF iletisimF = new IletisimF();
            iletisimF.adsoyad = adsoyad;
            iletisimF.email = email;
            iletisimF.tel = tel;
            iletisimF.konu = konu;
            iletisimF.mesaj = mesaj;
            MesajList.Add(iletisimF);
        }

        public string kayitol(string ad, string soyad, string sifre,string sifretekrar, long tel,string email)
        {
            Kullanici kullanici = new Kullanici();
            kullanici.ad = ad;
            kullanici.soyad = soyad;
            kullanici.sifre = sifre;
            kullanici.sifretekrar = sifretekrar;
            kullanici.email = email;
            kullanici.tel = tel;
            string telctrl = tel.ToString();


            if (sifretekrar != sifre)
            {
                return "Şifreler eşleşmiyor şifrenizi tekrar giriniz";
            }
            
            else if (telctrl.Length != 11)
            {
                return "Telefon Numarası 11 haneli olmalıdır";  
            }
                      
            else {
                
                Kullanicilist.Add(kullanici);
                return "Uye oldunuz";
            }           
            
        }

        public string sifremiunuttum(string email)
        {
            for(int i=0;i<Kullanicilist.Count;i++)
            {
                if (email == Kullanicilist.ElementAt(i).email)
                {
                    return Kullanicilist.ElementAt(i).sifre;
                }
                
            }
            
            return "E-mailinizi yanlış girdiniz";
        }

        public void bilgigetir( string email,ref string ad,ref string soyad,ref string sifre,ref long tel)
        {
            for(int i = 0; i < Kullanicilist.Count; i++)
            {
                if (email == Kullanicilist.ElementAt(i).email)
                {
                    ad = Kullanicilist.ElementAt(i).ad;
                    soyad = Kullanicilist.ElementAt(i).soyad;
                    sifre = Kullanicilist.ElementAt(i).sifre;
                    tel = Kullanicilist.ElementAt(i).tel;
                }
            }
        }

        public string tcnoctrl(string tcno)
        {
            int sh = tcno[tcno.Length - 1] - '0';
            if (tcno.Length != 11)
            {
                return "TC kimlik numarası 11 haneli olmalıdır";
            }            
            else { return "1"; }
        }

        
    }
}
