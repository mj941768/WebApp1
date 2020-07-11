<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm6.aspx.cs" Inherits="WebApp1.WebForm6" StylesheetTheme="Theme1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>


        </div>
        <asp:Button ID="Button1" runat="server" Text="Button" />
        <asp:Button ID="Button2" runat="server" Text="Button" />
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 215px; top: 173px; position: absolute" Text="label"></asp:Label>
        <p>
            <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 346px; top: 159px; position: absolute; margin-bottom: 0px"></asp:Label>
        </p>
        <asp:Button ID="Button3" runat="server" BorderColor="#6699FF" BorderStyle="Double" style="z-index: 1; left: 107px; top: 346px; position: absolute" Text="Button" />
        <p>
            &nbsp;</p>
        <asp:Button ID="Button4" runat="server" SkinID="btn1" style="z-index: 1; left: 365px; top: 289px; position: absolute; width: 135px" />
        <asp:Button ID="Button5" runat="server" SkinID="btn2" style="z-index: 1; left: 715px; top: 287px; position: absolute; height: 44px; width: 99px" />
    </form>
</body>
</html>
