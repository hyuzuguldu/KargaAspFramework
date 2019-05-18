<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="KargaAspNew.WebForm1" %>

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title></title>
        <link href="StyleSheet1.css" rel="stylesheet" />
    </head>

    <body>
        <form id="form1" runat="server">
            <div>
                <!-- --------------------------------sidenav-------------------------------------------------- -->
                <div class="sidenav">
                    <a href="#about">About</a>
                    <a href="#services">Services</a>
                    <a href="#clients">Clients</a>
                    <a href="#contact">Contact</a>
                </div>
                <!-- --------------------------------topper-------------------------------------------------- -->
                <div class="navbar limon">

                    <div class="row">
                        <div class="columntop">
                            <asp:ImageButton ID="ImageButton2" runat="server" Height="60px" ImageUrl="~/resimler/3cizgi.bmp" Width="60px" ImageAlign="Left" /> &nbsp;
                        </div>

                        <div class="columntop">
                            <h1>Anasayfa</h1>
                        </div>

                        <div class="columntop">
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="60px" ImageUrl="~/resimler/3cizgi.bmp" Width="60px" ImageAlign="Right" />
                        </div>
                    </div>
                </div>

                <!-- ---------------------------------------------------------------------------------- -->

                <%--<body>

                    <h1>.</h1>

                </body>--%>
                    <!-- ---------------------------urunler------------------------------------------------------- -->

                    <div class="rowanasayfa">
                        <div class="columnanasayfa">
                            <asp:ImageButton CssClass="center" ID="ImageButton9" runat="server" Height="60px" ImageUrl="~/resimler/batmansa.jpg" Width="60px" />
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
                    <div class="rowanasayfa">
                        <div class="columnanasayfa">
                            <asp:ImageButton CssClass="center" ID="ImageButton11" runat="server" Height="60px" ImageUrl="~/resimler/batmansa.jpg" Width="60px" />
                        </div>
                        <div class="columnanasayfa">
                            <p> Batman saat</p>
                            <p> 25 lira</p>
                        </div>
                    </div>
                    <div class="rowanasayfa">
                        <div class="columnanasayfa">
                            <asp:ImageButton CssClass="center" ID="ImageButton12" runat="server" Height="60px" ImageUrl="~/resimler/batmansa.jpg" Width="60px" />
                        </div>
                        <div class="columnanasayfa">
                            <p> Batman saat</p>
                            <p> 25 lira</p>
                        </div>
                    </div>
                    <div class="rowanasayfa">
                        <div class="columnanasayfa">
                            <asp:ImageButton CssClass="center" ID="ImageButton13" runat="server" Height="60px" ImageUrl="~/resimler/batmansa.jpg" Width="60px" />
                        </div>
                        <div class="columnanasayfa">
                            <p> Batman saat</p>
                            <p> 25 lira</p>
                        </div>
                    </div>
                    <div class="rowanasayfa">
                        <div class="columnanasayfa">
                            <asp:ImageButton CssClass="center" ID="ImageButton14" runat="server" Height="60px" ImageUrl="~/resimler/batmansa.jpg" Width="60px" />
                        </div>
                        <div class="columnanasayfa">
                            <p> Batman saat</p>
                            <p> 25 lira</p>
                        </div>
                    </div>
                    <div class="rowanasayfa">
                        <div class="columnanasayfa">
                            <asp:ImageButton CssClass="center" ID="ImageButton15" runat="server" Height="60px" ImageUrl="~/resimler/batmansa.jpg" Width="60px" />
                        </div>
                        <div class="columnanasayfa">
                            <p> Batman saat</p>
                            <p> 25 lira</p>
                        </div>
                    </div>

                    <!-- --------------------------------foooter-------------------------------------------------- -->
                    <div class="footer">

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
            </div>

        </form>
    </body>

    </html>