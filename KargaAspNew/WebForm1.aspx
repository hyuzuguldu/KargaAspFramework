<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="KargaAspNew.WebForm1" %>

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <head runat="server">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title></title>
        <link href="StyleSheet1.css" rel="stylesheet" />
    </head>

    <body>
        <form id="form1" runat="server">

            <asp:Panel ID="Panel3" runat="server">
                <!-- --------------------------------sidenav-------------------------------------------------- -->

                <asp:Panel ID="sidebarpanel" runat="server" CssClass="sidenav dropdown-content">
                    <div class="rowside sideitems">

                        <asp:Panel ID="Panel2" CssClass="columnside" style="display:inline;" runat="server">
                            <h3 style="display:inline;"> Batman  </h3>
                        </asp:Panel>

                        <div class="columnside" style="display:inline;">
                            <asp:ImageButton ID="ImageButton16" runat="server" Height="40px" Width="40" ImageUrl="~/resimler/3cizgi.bmp" OnClick="ImageButton16_Click" ImageAlign="Right" />
                        </div>

                    </div>

                    <hr>

                    <div class="rowside sideitems">
                        <div class="columnside ">
                            <h3> Batman saat</h3>
                        </div>
                    </div>
                    <hr>

                    <div class="rowside sideitems">
                        <div class="columnside ">
                            <h3> Batman saat</h3>
                        </div>
                    </div>
                    <hr>

                    <div class="rowside sideitems">
                        <div class="columnside ">
                            <h3> Batman saat</h3>
                        </div>
                    </div>
                    <hr>

                </asp:Panel>

                <!-- --------------------------------navbar-------------------------------------------------- -->

                <asp:Panel ID="Panel1" runat="server" CssClass="navbar">

                    <div class="row">
                        <div class="columntop">
                            <asp:ImageButton ID="ImageButton2" runat="server" Height="60px" ImageUrl="~/resimler/3cizgi.bmp" Width="60px" ImageAlign="Left" OnClick="ImageButton2_Click" /> &nbsp;
                        </div>

                        <div class="columntop">
                            <h2 id="Tepeyazi">Anasayfa</h2>
                        </div>

                        <div class="columntop">
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="60px" ImageUrl="~/resimler/3cizgi.bmp" Width="60px" ImageAlign="Right" OnClick="ImageButton1_Click" />
                        </div>
                    </div>
                

                </asp:Panel>
                      <br />

                <!-- ---------------------------------------------------------------------------------- -->

                <%--<body>

                    <h1>.</h1>

                </body>--%>
                    <!-- ---------------------------urunler------------------------------------------------------- -->
                    <asp:Panel  ID="anasayfaurunler" runat="server" CssClass="gorunur">
                        <div class="rowanasayfa">

                            <div class="columnanasayfa">
                                <asp:ImageButton CssClass="center" href="/WebForm2.aspx" ID="ImageButton9" runat="server" Height="60px" ImageUrl="~/resimler/batmansa.jpg" Width="60px" OnClick="ImageButton9_Click" />
                            </div>
                            <div class="columnanasayfa">
                                <p> Batman saat</p>
                                <p> 25 lira</p>
                            </div>
                        </div>

                        <div class="rowanasayfa">
                            <div class="columnanasayfa">
                                <asp:ImageButton CssClass="center" ID="ImageButton7" runat="server" Height="60px" ImageUrl="~/resimler/batmansa.jpg" Width="60px" />
                            </div>
                            <div class="columnanasayfa">
                                <p> Batman saat</p>
                                <p> 25 lira</p>
                            </div>
                        </div>
                        <div class="rowanasayfa">
                            <div class="columnanasayfa">
                                <asp:ImageButton CssClass="center" ID="ImageButton8" runat="server" Height="60px" ImageUrl="~/resimler/batmansa.jpg" Width="60px" />
                            </div>
                            <div class="columnanasayfa">
                                <p> Batman saat</p>
                                <p> 25 lira</p>
                            </div>
                        </div>
                        <div class="rowanasayfa">
                            <div class="columnanasayfa">
                                <asp:ImageButton CssClass="center" ID="ImageButton10" runat="server" Height="60px" ImageUrl="~/resimler/batmansa.jpg" Width="60px" />
                            </div>
                            <div class="columnanasayfa">
                                <p> Batman saat</p>
                                <p> 25 lira</p>
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