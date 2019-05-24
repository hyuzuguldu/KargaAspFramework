<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="KargaAspNew.WebForm1" %>

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">
   
    

    <head runat="server">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
         <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title></title>
        <link href="StyleSheet1.css" rel="stylesheet" />
    </head> 

    <body>
        <form id="form1" runat="server">

            <asp:Panel ID="Panel3" runat="server">
                <!-- --------------------------------sidenav-------------------------------------------------- -->

                <asp:Panel ID="sidebarpanel" runat="server" CssClass="sidenav dropdown-content gorunmez">
                    <div class="rowside sideitems">

                        <asp:Panel ID="Panel2" CssClass="columnside beyaz" style="display:inline;" runat="server">
                            <h3 style="display:inline;"> Ürün Grupları  </h3>
                        </asp:Panel>

                        <div class="columnside " style="display:inline;">
                            <asp:ImageButton ID="solsidenav3cizgi" runat="server" Height="60px" Width="60" ImageUrl="~/resimler/3cizgi.bmp" OnClick="solsidenav3cizgi_Click" ImageAlign="Right" />
                        </div>

                    </div>

                    <hr>

                    <div class="rowside sideitems">
                        <div class="columnside beyaz ">
                            <h3> Anahtarlıklar</h3>
                        </div>
                    </div>
                    <hr>

                    <div class="rowside sideitems">
                        <div class="columnside beyaz ">
                            <h3> Takılar</h3>
                        </div>
                    </div>
                    <hr>

                    
                    <hr>

                </asp:Panel>

                    <!-- --------------------------------sidenav sağ-------------------------------------------------- -->

                <asp:Panel ID="sidenavsag" runat="server" CssClass="sidenavright dropdown-content gorunur">
                    <div class="rowside sideitems">

                        <asp:Panel ID="Panel5" CssClass="columnside beyaz" style="display:inline;" runat="server">
                            <h3 style="display:inline;"> Ürün Grupları  </h3>
                        </asp:Panel>

                        <div class="columnside " style="display:inline;">
                            <asp:ImageButton ID="sidenavsag3cizgi" runat="server" Height="60px" Width="60" ImageUrl="~/resimler/3cizgi.bmp" OnClick="sidenavsag3cizgi_Click" ImageAlign="Right" />
                        </div>

                    </div>

                    <hr>

                    <div class="rowside sideitems">
                        <div class="columnside beyaz ">
                            <h3> Anahtarlıklar</h3>
                        </div>
                    </div>
                    <hr>

                    <div class="rowside sideitems">
                        <div class="columnside beyaz ">
                            <h3> Takılar</h3>
                        </div>
                    </div>
                    <hr>

                    
                    <hr>

                </asp:Panel>


                <!-- --------------------------------navbar-------------------------------------------------- -->

                <asp:Panel ID="Panel1" runat="server" CssClass="navbar">

                    <div class="row">
                        <div class="columntop">
                            <asp:ImageButton ID="navbar3cizgi" runat="server" Height="60px" ImageUrl="~/resimler/3cizgi.bmp" Width="60px" ImageAlign="Left" OnClick="navbar3cizgi_click" /> &nbsp;
                        </div>

                        <div class="columntop  beyaz">
                            <h2  id="Tepeyazi">Anasayfa</h2>
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
                                <asp:ImageButton CssClass="center" href="/WebForm2.aspx" ID="ImageButton9" runat="server" Height="110px" ImageUrl="~/resimler/captainamericatshirt.jpg" Width="110px" OnClick="ImageButton9_Click" />
                            </div>
                            <div class="columnanasayfa yazikaydirma">
                                
                                <p>Captain America T-Shirt</p>
                                <p>45 lira</p>
                            </div>
                        </div>

                        <div class="rowanasayfa">
                            <div class="columnanasayfa">
                                <asp:ImageButton CssClass="center" ID="ImageButton7" runat="server" Height="110px" ImageUrl="~/resimler/imzatshirt.jpg" Width="110px" />
                            </div>
                            <div class="columnanasayfa yazikaydirma">
                                <p> Atatürk İmza T-Shirt</p>
                                <p> 45 lira</p>
                            </div>
                        </div>
                        <div class="rowanasayfa">
                            <div class="columnanasayfa">
                                <asp:ImageButton CssClass="center" ID="ImageButton8" runat="server" Height="110px" ImageUrl="~/resimler/stargecelambasi.jpg" Width="110px" />
                            </div>
                            <div class="columnanasayfa yazikaydirma">
                                <p> Star Gece Lambası</p>
                                <p> 80 lira</p>
                            </div>
                        </div>
                        <div class="rowanasayfa">
                            <div class="columnanasayfa">
                                <asp:ImageButton CssClass="center" ID="ImageButton10" runat="server" Height="110px" ImageUrl="~/resimler/deadpoolfigur.jpg" Width="110px" />
                            </div>
                            <div class="columnanasayfa yazikaydirma">
                                <p> DeadPool Figürü</p>
                                <p> 50 lira</p>
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
                            <asp:Label CssClass="" ID="Label6" runat="server" Text="Beden"></asp:Label>

                            <select class="">
                                <option value="s">s</option>
                                <option value="m">m</option>
                                <option value="l">l</option>
                                <option value="xl">xl</option>
                            </select>
                            <h4>Adet</h4>
                            <asp:TextBox ID="TextBox1" runat="server" TextMode="Number"></asp:TextBox>
                        </div>
                    </asp:Panel>

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
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <div class="footer boxsizing">

                        <div class="row">
                            <div class="column">
                                <asp:ImageButton ID="ImageButton3" runat="server" Height="60px" ImageUrl="~/resimler/3cizgi.bmp" Width="60px" /> &nbsp;
                            </div>

                            <div class="column">
                                <asp:ImageButton ID="ImageButton4" runat="server" Height="60px" ImageUrl="~/resimler/3cizgi.bmp" Width="60px" /> &nbsp;
                            </div>

                            <div class="column">
                                <asp:ImageButton ID="ImageButton5" runat="server" Height="60px" ImageUrl="~/resimler/3cizgi.bmp" Width="60px" /> &nbsp;
                            </div>

                            <div class="column">
                                <asp:ImageButton ID="ImageButton6" runat="server" Height="60px" ImageUrl="~/resimler/3cizgi.bmp" Width="60px" /> &nbsp;
                            </div>

                        </div>
                    </div>
                    <!-- ---------------------------------------------------------------------------------- -->

            </asp:Panel>
        </form>
    </body>

    </html>
