<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="KargaAspNew.WebForm1" %>

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title></title>
        <link href="StyleSheet1.css" rel="stylesheet" />
    </head>

    <body>
        <form id="form1" runat="server">

            <asp:Panel ID="Panel3" runat="server">
                <!-- --------------------------------sidenav sol-------------------------------------------------- -->

                <asp:Panel ID="sidebarpanel" runat="server" CssClass="sidenav dropdown-content gorunmez">

                    <div class="rowside sideitems mavirenk">

                        <asp:Panel ID="Panel2" CssClass="columnside beyaz dikeyortala   " style=" margin-left:2%" runat="server"> Ürün Grupları </asp:Panel>

                        <div class="columnside " style="">
                            <asp:ImageButton ID="solsidenav3cizgi" runat="server" Height="60px" Width="60" ImageUrl="~/resimler/3cizgi.bmp" OnClick="solsidenav3cizgi_Click" ImageAlign="Right" />
                        </div>

                    </div>

                    <hr>

                    <div style=" margin-left:2%" class="rowside sideitems">
                        <div class="columnside beyaz ">
                            <asp:Button ID="Anahtarlıklar" runat="server" Text="Anahtarlıklar" OnClick="Anahtarliklar_Click" />
                        </div>
                    </div>
                    <hr>

                    <div style=" margin-left:2%" class="rowside sideitems">
                        <div class="columnside beyaz ">
                            <asp:Button ID="Abajurlar" runat="server" Text="Abajurlar" OnClick="Abajurlar_Click" />
                        </div>
                    </div>
                    <hr>

                </asp:Panel>

                <!-- --------------------------------sidenav sağ-------------------------------------------------- -->

                <asp:Panel ID="sidenavsag" runat="server" CssClass="sidenavright dropdown-content gorunmez">
                    <div class="rowside sideitems mavirenk">

                        <div class="columnside " style="display:inline;">
                            <asp:ImageButton ID="sidenavsag3cizgi" runat="server" Height="60px" Width="60" ImageUrl="~/resimler/3cizgi.bmp" OnClick="sidenavsag3cizgi_Click" ImageAlign="NotSet" />
                        </div>

                        <asp:Panel ID="Panel5" CssClass="columnside beyaz " style="display:inline;" runat="server">
                            <h3 style=""> Giriş yap  </h3>
                        </asp:Panel>

                    </div>

                    <div class="rowside sideitemsright">
                        <div class="columnside beyaz ">
                            <asp:TextBox ID="Mail" CssClass="mytextbox" runat="server" BackColor="#D5D5D5"></asp:TextBox>
                        </div>
                    </div>
                    <hr>

                    <div class="rowside sideitems sideitemsright center">
                        <div class="columnside beyaz  ">
                            <asp:TextBox ID="password" CssClass="mytextbox " runat="server" BackColor="#D5D5D5"></asp:TextBox>
                        </div>
                    </div>

                    <div class="rowside sideitems sideitemsright">
                        <div style="width:100%; " class="columnside beyaz ">
                            <asp:Button CssClass="butonum" OnClick="Giris_yap_Click" ID="Giris_yap" runat="server" Text="Giriş yap" />
                        </div>
                    </div>

                    <div style="width:100%; " class="rowside sideitems sideitemsright">
                        <div style="width:100%; " class="columnside beyaz ">
                            <asp:Button CssClass="butonum" ID="Sifremi_unuttum" runat="server" Text="Şifremi unuttum" />
                        </div>
                    </div>

                    <div class="rowside sideitems sideitemsright">
                        <div style="width:100%; " class="columnside beyaz ">
                            <asp:Button CssClass="butonum" ID="Uye_ol" runat="server" Text="Yeni üye ol" BackColor="#333333" OnClick="Uye_ol_click" />
                        </div>
                    </div>

                </asp:Panel>
                <!-- ------------------------------------sepetim---------------------------------------------- -->
                <asp:Panel ID="Sepetim" runat="server" CssClass="sidenavright dropdown-content gorunur">
                    <div class="rowside sideitems mavirenk">
                        <div class="columnside " style="display:inline;">
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="60px" Width="60" ImageUrl="~/resimler/3cizgi.bmp" OnClick="sepetim3cizgi" ImageAlign="NotSet" />
                        </div>
                        <asp:Panel ID="Panel6" CssClass="columnside beyaz " style="display:inline;" runat="server">
                            <h3 style=""> Giriş yap  </h3>
                        </asp:Panel>
                    </div>

                    <asp:Panel ID="SepetimUrunler" CssClass="" runat="server">

                        <asp:Panel ID="SepetimTekUrun" CssClass="SepetimTekUrun gorunmez" runat="server">
                            <asp:Image ID="sepetimresim1" CssClass="sepetimresim" runat="server" ImageUrl="~/resimler/deadpoolfigur.jpg" />

                            <asp:Panel ID="yazilar" class="sepetimyazilar " style="display:block; " runat="server">
                                <asp:Label style="display:block" ID="fiyat" runat="server" Text="30 Lira "></asp:Label>
                                <asp:Label style="display:block" ID="urunadi" runat="server" Text=" marvel T-shirt"></asp:Label>
                                <asp:Label style="display:block" ID="adet" runat="server" Text=" 1 adet"></asp:Label>
                            </asp:Panel>
                            <asp:ImageButton ID="Carpi" class="sepetimcarpi " runat="server" ImageUrl="~/resimler/111.PNG" />

                        </asp:Panel>
                        <asp:Panel ID="SepetimTekUrun2" CssClass="SepetimTekUrun gorunmez" runat="server">
                            <asp:Image ID="sepetimresim2" CssClass="sepetimresim" runat="server" ImageUrl="~/resimler/deadpoolfigur.jpg" />
                            <asp:Panel ID="yazilar2" class="sepetimyazilar " style="display:block; " runat="server">
                                <asp:Label style="display:block" ID="fiyat2" runat="server" Text="30 Lira "></asp:Label>
                                <asp:Label style="display:block" ID="urunadi2" runat="server" Text=" marvel T-shirt"></asp:Label>
                                <asp:Label style="display:block" ID="adet2" runat="server" Text=" 1 adet"></asp:Label>
                            </asp:Panel>
                            <asp:ImageButton ID="Carpi2" class="sepetimcarpi " runat="server" ImageUrl="~/resimler/111.PNG" />
                        </asp:Panel>
                        <asp:Panel ID="sepetimresim3" CssClass="SepetimTekUrun gorunmez" runat="server">
                            <asp:Image ID="Image3" CssClass="sepetimresim" runat="server" ImageUrl="~/resimler/deadpoolfigur.jpg" />
                            <asp:Panel ID="yazilar3" class="sepetimyazilar " style="display:block; " runat="server">
                                <asp:Label style="display:block" ID="fiyat3" runat="server" Text="30 Lira "></asp:Label>
                                <asp:Label style="display:block" ID="urunadi3" runat="server" Text=" marvel T-shirt"></asp:Label>
                                <asp:Label style="display:block" ID="adet3" runat="server" Text=" 1 adet"></asp:Label>
                            </asp:Panel>
                            <asp:ImageButton ID="Carpi3" class="sepetimcarpi " runat="server" ImageUrl="~/resimler/111.PNG" />
                        </asp:Panel>

                    </asp:Panel>

                    <asp:Button ID="satinal" runat="server" Text="Satın al " />

                </asp:Panel>

                <!-- --------------------------------navbar-------------------------------------------------- -->

                <asp:Panel ID="Panel1" runat="server" CssClass="navbar">

                    <div class="row">
                        <div class="columntop">
                            <asp:ImageButton ID="navbar3cizgi" runat="server" Height="60px" ImageUrl="~/resimler/3cizgi.bmp" Width="60px" ImageAlign="Left" OnClick="navbar3cizgi_click" /> &nbsp;
                        </div>

                        <div class="columntop  beyaz">
                            <h2 id="Tepeyazi">Anasayfa</h2>
                        </div>

                        <div class="columntop">
                            <asp:ImageButton ID="adamresmi" runat="server" Height="60px" ImageUrl="~/resimler/adam.bmp" Width="60px" ImageAlign="Right" OnClick="adamresmi_Click" />
                        </div>
                    </div>

                </asp:Panel>
                <br />

                <!-- ---------------------------------------------------------------------------------- -->

                <%--<body>

                    <h1>.</h1>

                </body>--%>
                    <!-- ---------------------------urunler------------------------------------------------------- -->
                    <asp:Panel ID="anasayfaurunler" runat="server" CssClass="gorunur anasayfaurunler">
                        <div class="rowanasayfa">

                            <div class="columnanasayfa">
                                <asp:ImageButton CssClass="center" href="/WebForm2.aspx" ID="anasyfa_urun_marvelshirt" runat="server" Height="110px" ImageUrl="~/resimler/marveltshirt.jpg" Width="110px" OnClick="anasyfa_urun_marvelshirt_Click" />
                            </div>
                            <div class="columnanasayfa yazikaydirma">

                                <p>Marvel T-Shirt</p>
                                <p>30 lira</p>
                            </div>
                        </div>

                        <div class="rowanasayfa">
                            <div class="columnanasayfa">
                                <asp:ImageButton CssClass="center" OnClick="anasayfa_urun_imzashirt_Click" ID="anasayfa_urun_imzashirt" runat="server" Height="110px" ImageUrl="~/resimler/imzatshirt.jpg" Width="110px" />
                            </div>
                            <div class="columnanasayfa yazikaydirma">
                                <p> Atatürk İmza T-Shirt</p>
                                <p> 45 lira</p>
                            </div>
                        </div>
                        <div class="rowanasayfa">
                            <div class="columnanasayfa">
                                <asp:ImageButton CssClass="center" OnClick="anasayfa_urun_lamba_Click" ID="anasayfa_urun_lamba" runat="server" Height="110px" ImageUrl="~/resimler/stargecelambasi.jpg" Width="110px" />
                            </div>
                            <div class="columnanasayfa yazikaydirma">
                                <p> Star Gece Lambası</p>
                                <p> 80 lira</p>
                            </div>
                        </div>
                        <div class="rowanasayfa">
                            <div class="columnanasayfa">
                                <asp:ImageButton CssClass="center" ID="anasayfa_urun_deadpool" OnClick="anasayfa_urun_deadpool_Click" runat="server" Height="110px" ImageUrl="~/resimler/deadpoolfigur.jpg" Width="110px" />
                            </div>
                            <div class="columnanasayfa yazikaydirma">
                                <p> DeadPool Figürü</p>
                                <p> 50 lira</p>
                            </div>
                        </div>

                    </asp:Panel>
                    <!-- ------------------------Abajurlar---------------------------------------------------------- -->
                    <asp:Panel ID="Abajurlarpaneli" runat="server" CssClass="gorunmez anasayfaurunler">
                        <div class="rowanasayfa">
                            <div class="columnanasayfa">
                                <asp:ImageButton CssClass="center" OnClick="gotBttn_Click" href="/WebForm2.aspx" ID="gotBttn" runat="server" Height="110px" ImageUrl="~/resimler/gameofthronesab.jpg" Width="110px" />
                            </div>
                            <div class="columnanasayfa yazikaydirma">

                                <p>Game of Thrones Abajur</p>
                                <p>70 lira</p>
                            </div>
                        </div>

                        <div class="rowanasayfa">
                            <div class="columnanasayfa">
                                <asp:ImageButton CssClass="center" href="/WebForm2.aspx" ID="lotrabbttn" OnClick="lotrabbttn_Click" runat="server" Height="110px" ImageUrl="~/resimler/lotrab.jpg" Width="110px" />
                            </div>
                            <div class="columnanasayfa yazikaydirma">

                                <p>LOTR Abajur</p>
                                <p>70 lira</p>
                            </div>
                        </div>

                        <div class="rowanasayfa">
                            <div class="columnanasayfa">
                                <asp:ImageButton CssClass="center" href="/WebForm2.aspx" OnClick="swabbttn_Click" ID="swabbttn" runat="server" Height="110px" ImageUrl="~/resimler/starwarsab.jpg" Width="110px" />
                            </div>
                            <div class="columnanasayfa yazikaydirma">

                                <p>Star Wars Abajur</p>
                                <p>70 lira</p>
                            </div>
                        </div>

                        <div class="rowanasayfa">
                            <div class="columnanasayfa">
                                <asp:ImageButton CssClass="center" OnClick="okulabbttn_Click" href="/WebForm2.aspx" ID="okulabbttn" runat="server" Height="110px" ImageUrl="~/resimler/okulab.jpg" Width="110px" />
                            </div>
                            <div class="columnanasayfa yazikaydirma">

                                <p>Okul Abajur</p>
                                <p>70 lira</p>
                            </div>
                        </div>
                    </asp:Panel>
                    <!-- ------------------------anahtarlıklar---------------------------------------------------------- -->
                    <asp:Panel ID="anahtarliklarpaneli" runat="server" CssClass="gorunmez anasayfaurunler">
                        <div class="rowanasayfa">
                            <div class="columnanasayfa">
                                <asp:ImageButton CssClass="center" OnClick="anbttn_Click" href="/WebForm2.aspx" ID="anbttn" runat="server" Height="110px" ImageUrl="~/resimler/934an.jpg" Width="110px" />
                            </div>
                            <div class="columnanasayfa yazikaydirma">

                                <p>934 Anahtarlık</p>
                                <p>15 lira</p>
                            </div>
                        </div>

                        <div class="rowanasayfa">
                            <div class="columnanasayfa">
                                <asp:ImageButton CssClass="center" OnClick="grootanbttn_Click" href="/WebForm2.aspx" ID="grootanbttn" runat="server" Height="110px" ImageUrl="~/resimler/babygrootan.jpg" Width="110px" />
                            </div>
                            <div class="columnanasayfa yazikaydirma">

                                <p>Baby Groot Anahtarlık</p>
                                <p>15 lira</p>
                            </div>
                        </div>

                        <div class="rowanasayfa">
                            <div class="columnanasayfa">
                                <asp:ImageButton CssClass="center" OnClick="temelrbttn_Click" href="/WebForm2.aspx" ID="temelrbttn" runat="server" Height="110px" ImageUrl="~/resimler/temelreisan.jpg" Width="110px" />
                            </div>
                            <div class="columnanasayfa yazikaydirma">

                                <p>Temel Reis Anahtarlık</p>
                                <p>15 lira</p>
                            </div>
                        </div>

                        <div class="rowanasayfa">
                            <div class="columnanasayfa">
                                <asp:ImageButton CssClass="center" OnClick="captainanbttn_Click" href="/WebForm2.aspx" ID="captainanbttn" runat="server" Height="110px" ImageUrl="~/resimler/captainamericaan.jpg" Width="110px" />
                            </div>
                            <div class="columnanasayfa yazikaydirma">

                                <p>Captain America Anahtarlık</p>
                                <p>15 lira</p>
                            </div>
                        </div>
                    </asp:Panel>

                    <!-- ------------------------urundetay---------------------------------------------------------- -->

                    <asp:Panel CssClass="gorunmez positionRelative" ID="urundetaypanel" runat="server">

                        <asp:Image CssClass="center product-images" ID="Image1" runat="server" ImageUrl="~/resimler/captainamericatshirt.jpg" />
                        <div style=" padding:5px;">
                            <div class="mybox boxsizing">
                                <asp:Label CssClass="urunfiyat" ID="Label2" runat="server" Text="45,99"></asp:Label>
                            </div>
                            <div class="mybox boxsizing">
                                <asp:Label CssClass="urunaciklama" ID="Label1" runat="server" Text="CAPTAIN AMERICA T-SHIRT"></asp:Label>
                            </div>

                            <h4> Kategori  </h4>

                            <asp:Label CssClass="" ID="Label4" runat="server" Text="T-shirt Erkek"></asp:Label>

                            <h4>Adet</h4>
                            <asp:TextBox ID="TextBox1" runat="server" TextMode="Number"></asp:TextBox>
                            <asp:Button ID="SepeteEkle" runat="server" Text="Sepete Ekle" OnClick="SepeteEkle_Click" />
                        </div>
                    </asp:Panel>
                    <!-- ------------------------yeniüyeol---------------------------------------------------------- -->

                    <asp:Panel ID="yeniuyeol" cssClass="gorunmez" runat="server">

                        <asp:TextBox ID="TextBox2" cssclass="yeniuyeol" placeholder="Adınız" runat="server"></asp:TextBox>
                        <asp:TextBox ID="TextBox3" cssclass="yeniuyeol" placeholder="Soyadınız" runat="server"></asp:TextBox>
                        <asp:TextBox ID="TextBox4" cssclass="yeniuyeol" placeholder="E-Mail" runat="server"></asp:TextBox>
                        <asp:TextBox ID="TextBox5" cssclass="yeniuyeol" placeholder="Şifre" runat="server"></asp:TextBox>
                        <asp:TextBox ID="TextBox6" cssclass="yeniuyeol" placeholder="Şifre Tekrar" runat="server"></asp:TextBox>
                        <asp:TextBox ID="TextBox8" cssclass="yeniuyeol" placeholder="Cep Telefonu" runat="server"></asp:TextBox>
                        <asp:Label ID="GÜvenlik_kodu" cssclass="yeniuyeol" runat="server" Text="Güvenlik kodu"></asp:Label>

                        <script>
                            function myFunction() {
                                alert("I am an alert box!");
                            }
                        </script>
                        <asp:Button ID="Button1" cssclass="butonum" OnClick="Button1_Click" runat="server" Text="Üye ol" />

                    </asp:Panel>

                    <!-- ---------------------------------------------------------------------------------- -->

                    <!-- --------------------------------foooter-------------------------------------------------- -->
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <div class="footer boxsizing">

                        <div class="row">
                            <div class="column">
                                <asp:ImageButton ID="AnasayfaFooter" runat="server" Height="60px" ImageUrl="~/resimler/anasayfa.bmp" Width="70px" OnClick="AnasayfaFooter_click" /> &nbsp;
                            </div>

                            <div class="column">
                                <asp:ImageButton ID="ImageButton4" runat="server" Height="60px" ImageUrl="~/resimler/arama.bmp" Width="70px" /> &nbsp;
                            </div>

                            <div class="column">
                                <asp:ImageButton ID="sepetbuton" runat="server" Height="60px" ImageUrl="~/resimler/sepetim.bmp" Width="70px" OnClick="sepetbuton_click" /> &nbsp;
                            </div>

                            <div class="column">
                                <asp:ImageButton ID="ImageButton6" runat="server" Height="60px" ImageUrl="~/resimler/iletişim.bmp" Width="70px" /> &nbsp;
                            </div>

                        </div>
                    </div>
                    <!-- ---------------------------------------------------------------------------------- -->

            </asp:Panel>
        </form>
    </body>

    </html>