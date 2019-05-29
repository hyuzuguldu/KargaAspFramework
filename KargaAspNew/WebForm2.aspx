<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="KargaAspNew.WebForm2" %>

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title></title>
        <link href="StyleSheet2.css" rel="stylesheet" />
        <link href="StyleSheet1.css" rel="stylesheet" />
    </head>

    <body>
        <form id="form1" runat="server">
            <div>
                <asp:Panel ID="Panel1" runat="server">
                     <asp:Label ID="Label1"   style="display:block" runat="server" Text="merhaba"></asp:Label>
                     <asp:Button ID="Button1" style="display:block" runat="server" Text="Button" OnClick="Button1_Click" />
                </asp:Panel>
               
             

            </div>
        </form>
    </body>

    </html>