<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApp1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>


        </div>
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 24px; top: 184px; position: absolute" Text="Enter Employee ID"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" style="z-index: 1; left: 807px; top: 80px; position: absolute; height: 180px; width: 289px">
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msdbConnectionString %>" SelectCommand="SELECT [eid] FROM [LMS]"></asp:SqlDataSource>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="eid" DataValueField="eid" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" style="z-index: 1; left: 230px; top: 184px; position: absolute; height: 23px">
        </asp:DropDownList>
    </form>
</body>
</html>
