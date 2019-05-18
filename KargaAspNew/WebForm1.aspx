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
                <!-- ---------------------------------------------------------------------------------- -->
                <div class="topper">

                    <div class="row">
                        <div class="columntop">
                            <asp:ImageButton ID="ImageButton2" runat="server" Height="60px" ImageUrl="~/resimler/3cizgi.bmp" Width="60px" /> &nbsp;
                        </div>

                        <div class="columntop">
                            <h1>Heading 1</h1>
                        </div>

                        <div class="columntop">
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="60px" ImageUrl="~/resimler/3cizgi.bmp" Width="60px" />
                        </div>
                    </div>
                </div>

                <!-- ---------------------------------------------------------------------------------- -->

                <body>

                    <h1>My First Heading</h1>
                    <p>My first paragraph. War never change</p>

                </body>
                <!-- ---------------------------urunler------------------------------------------------------- -->

<%--                <div class="mydiv">
                    <asp:ImageButton ID="ImageButton7" runat="server" Height="60px" ImageUrl="~/resimler/3cizgi.bmp" Width="60px" />
                    <h2> zdvdzvdvdv</h2>
                </div>--%>

<%--                <div class="mydiv column">
                    <asp:ImageButton ID="ImageButton8" runat="server" Height="60px" ImageUrl="~/resimler/3cizgi.bmp" Width="60px" />

                </div>--%>

                <div class="rowanasayfa">
                    <div class="columnanasayfa">
                       <asp:ImageButton CssClass="center" ID="ImageButton9" runat="server" Height="60px" ImageUrl="~/resimler/batmansa.jpg" Width="60px" />
                        
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