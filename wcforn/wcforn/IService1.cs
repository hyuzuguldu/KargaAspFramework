using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace wcforn
{
   
    [ServiceContract]
    public interface IService1
    {
        [OperationContract]
        string kayitol(string ad, string soyad, string sifre, string sifretekrar, long tel, string email);
        [OperationContract]
        string giris(string email, string sifre);
        [OperationContract]
        int guvenlikkodugndr();
        [OperationContract]
        void iletisimformual(string adsoyad, string email, long tel, string konu, string mesaj);
        [OperationContract]
        string sifremiunuttum(string email);
        [OperationContract]
        void bilgigetir(string email,ref string ad,ref string soyad,ref string sifre,ref long tel);
        [OperationContract]
        string tcnoctrl(string tcno);
        
        
    }


    
}
