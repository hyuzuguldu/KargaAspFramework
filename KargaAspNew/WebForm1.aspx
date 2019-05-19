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

            <asp:Panel ID="Panel3" runat="server">
                <!-- --------------------------------sidenav-------------------------------------------------- -->

                <asp:Panel ID="sidebarpanel" runat="server" CssClass="sidenav dropdown-content">
                    <div class="rowside sideitems">

                        <asp:Panel   ID="Panel2" CssClass="columnside" style="display:inline;" runat="server">
                            <h3 style="display:inline;" > Batman  </h3>
                        </asp:Panel>

                        <div class="columnside" style="display:inline;">
                            <asp:ImageButton  ID="ImageButton16" runat="server" Height="40px" Width="40" ImageUrl="~/resimler/3cizgi.bmp"  OnClick="ImageButton16_Click" />
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

                <asp:Panel ID="Panel1" runat="server" CssClass="navbar limon">

                    <div class="row">
                        <div class="columntop">
                            <asp:ImageButton ID="ImageButton2" runat="server" Height="60px" ImageUrl="~/resimler/3cizgi.bmp" Width="60px" ImageAlign="Left" OnClick="ImageButton2_Click" /> &nbsp;
                        </div>

                        <div class="columntop">
                            <h1 id="Tepeyazi">Anasayfa</h1>
                        </div>

                        <div class="columntop">
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="60px" ImageUrl="~/resimler/3cizgi.bmp" Width="60px" ImageAlign="Right" OnClick="ImageButton1_Click" />
                        </div>
                    </div>

                </asp:Panel>

                <!-- ---------------------------------------------------------------------------------- -->

                <%--<body>

                    <h1>.</h1>

                </body>--%>
                    <!-- ---------------------------urunler------------------------------------------------------- -->

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

            </asp:Panel>
        </form>
    </body>

    </html>