<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm8.aspx.cs" Inherits="WebApp1.WebForm8" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="z-index: 1; left: 0px; top: 0px; position: absolute; height: 245px; width: 1814px">
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" style="margin-top: 79px" AutoGenerateColumns="False" DataKeyNames="eid" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="eid" HeaderText="eid" ReadOnly="True" SortExpression="eid" />
                <asp:BoundField DataField="ename" HeaderText="ename" SortExpression="ename" />
                <asp:BoundField DataField="enddate" HeaderText="enddate" SortExpression="enddate" />
                <asp:BoundField DataField="leavedate" HeaderText="leavedate" SortExpression="leavedate" />
                <asp:BoundField DataField="leavetype" HeaderText="leavetype" SortExpression="leavetype" />
                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msdbConnectionString %>" SelectCommand="SELECT [eid], [ename], [enddate], [leavedate], [leavetype], [status] FROM [LMS]"></asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="height: 35px" Text="LowData" />
        <asp:DataList ID="DataList1" runat="server">
        </asp:DataList>
    </form>
</body>
</html>
