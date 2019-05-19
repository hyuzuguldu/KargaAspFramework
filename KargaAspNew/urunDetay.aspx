<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="urunDetay.aspx.cs" Inherits="KargaAspNew.urunDetay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>

               <asp:Panel ID="Panel1" runat="server" CssClass="navbar limon">

                        <div class="row">
                            <div class="columntop">
                                <asp:ImageButton ID="ImageButton2" runat="server" Height="60px" ImageUrl="~/resimler/3cizgi.bmp" Width="60px" ImageAlign="Left" OnClick="ImageButton2_Click" /> &nbsp;
                            </div>

                            <div class="columntop">
                                <h1 id="Tepeyazi">Anasayfa</h1>
                            </div>

                            <div class="columntop">
                                <asp:ImageButton ID="ImageButton1" runat="server" Height="60px" ImageUrl="~/resimler/3cizgi.bmp" Width="60px" ImageAlign="Right"  />
                            </div>
                        </div>
                  
                    </asp:Panel>









        </div>
    </form>
</body>
</html>
