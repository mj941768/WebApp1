<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WebApp1.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="z-index: 1; left: 10px; top: 15px; position: absolute; height: 27px; width: 1814px">
        </div>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 3px; top: 146px; position: absolute" Text="Enter Name"></asp:Label>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: -1px; top: 195px; position: absolute" Text="Department"></asp:Label>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Enter Eid"></asp:Label>
        </p>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 2px; top: 248px; position: absolute" Text="Age"></asp:Label>
        <asp:Label ID="Label5" runat="server" style="z-index: 1; left: -2px; top: 305px; position: absolute" Text="Date of joining"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 120px; top: 59px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged" style="z-index: 1; left: 145px; top: 151px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" style="z-index: 1; left: 115px; top: 206px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="TextBox5" runat="server" style="z-index: 1; left: 113px; top: 258px; position: absolute"></asp:TextBox>
        <p>
            &nbsp;</p>
        <asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox4_TextChanged" style="z-index: 1; left: 194px; top: 309px; position: absolute"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 218px; top: 429px; position: absolute" Text="Add" />
        <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 94px; top: 19px; position: absolute" Text="Employee Details Entered"></asp:Label>
        <asp:Label ID="Label7" runat="server" style="z-index: 1; left: 824px; top: 148px; position: absolute" Text="Enter Employee Id to Delete"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="eid" DataValueField="eid" style="z-index: 1; left: 904px; top: 144px; position: absolute">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msdbConnectionString %>" SelectCommand="SELECT [eid] FROM [LMS]"></asp:SqlDataSource>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="z-index: 1; left: 863px; top: 216px; position: absolute" Text="Button" />
    </form>
</body>
</html>
