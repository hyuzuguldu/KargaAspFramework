<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="KargaAspNew.WebForm2" %>

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title></title>
        <link href="StyleSheet2.css" rel="stylesheet" />
    </head>

    <body>
        <form id="form1" runat="server">
            <div>

              

                <div class="dropdown">
                    <button onclick="myFunction()" class="dropbtn">Dropdown</button>
                    <div id="myDropdown" class="dropdown-content">
                        <a href="#home">Home</a>
                        <a href="#about">About</a>
                        <a href="#contact">Contact</a>
                    </div>
                </div>

                <script>
                    /* When the user clicks on the button, 
                    toggle between hiding and showing the dropdown content */
                    function myFunction() {
                        document.getElementById("myDropdown").classList.toggle("show");
                    }

                    //// Close the dropdown if the user clicks outside of it
                    //window.onclick = function(event) {
                    //    if (!event.target.matches('.dropbtn')) {
                    //        var dropdowns = document.getElementsByClassName("dropdown-content");
                    //        var i;
                    //        for (i = 0; i < dropdowns.length; i++) {
                    //            var openDropdown = dropdowns[i];
                    //            if (openDropdown.classList.contains('show')) {
                    //                openDropdown.classList.remove('show');
                    //            }
                    //        }
                    //    }
                    //}
                </script>

                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />

            </div>
        </form>
    </body>

    </html>