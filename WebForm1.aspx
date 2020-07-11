<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApp1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msdbConnectionString %>" SelectCommand="SELECT * FROM [LMS] ORDER BY [eid]"></asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="eid" DataSourceID="SqlDataSource1" OnPageIndexChanging="FormView1_PageIndexChanging" style="z-index: 1; left: 503px; top: 356px; position: absolute; height: 242px; width: 368px">
            <EditItemTemplate>
                eid:
                <asp:Label ID="eidLabel1" runat="server" Text='<%# Eval("eid") %>' />
                <br />
                ename:
                <asp:TextBox ID="enameTextBox" runat="server" Text='<%# Bind("ename") %>' />
                <br />
                enddate:
                <asp:TextBox ID="enddateTextBox" runat="server" Text='<%# Bind("enddate") %>' />
                <br />
                leavedate:
                <asp:TextBox ID="leavedateTextBox" runat="server" Text='<%# Bind("leavedate") %>' />
                <br />
                leavetype:
                <asp:TextBox ID="leavetypeTextBox" runat="server" Text='<%# Bind("leavetype") %>' />
                <br />
                status:
                <asp:TextBox ID="statusTextBox" runat="server" Text='<%# Bind("status") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                eid:
                <asp:TextBox ID="eidTextBox" runat="server" Text='<%# Bind("eid") %>' />
                <br />
                ename:
                <asp:TextBox ID="enameTextBox" runat="server" Text='<%# Bind("ename") %>' />
                <br />
                enddate:
                <asp:TextBox ID="enddateTextBox" runat="server" Text='<%# Bind("enddate") %>' />
                <br />
                leavedate:
                <asp:TextBox ID="leavedateTextBox" runat="server" Text='<%# Bind("leavedate") %>' />
                <br />
                leavetype:
                <asp:TextBox ID="leavetypeTextBox" runat="server" Text='<%# Bind("leavetype") %>' />
                <br />
                status:
                <asp:TextBox ID="statusTextBox" runat="server" Text='<%# Bind("status") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                eid:
                <asp:Label ID="eidLabel" runat="server" Text='<%# Eval("eid") %>' />
                <br />
                ename:
                <asp:Label ID="enameLabel" runat="server" Text='<%# Bind("ename") %>' />
                <br />
                enddate:
                <asp:Label ID="enddateLabel" runat="server" Text='<%# Bind("enddate") %>' />
                <br />
                leavedate:
                <asp:Label ID="leavedateLabel" runat="server" Text='<%# Bind("leavedate") %>' />
                <br />
                leavetype:
                <asp:Label ID="leavetypeLabel" runat="server" Text='<%# Bind("leavetype") %>' />
                <br />
                status:
                <asp:Label ID="statusLabel" runat="server" Text='<%# Bind("status") %>' />
                <br />

            </ItemTemplate>
        </asp:FormView>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="eid" DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <td runat="server" style="background-color: #FAFAD2;color: #284775;">eid:
                    <asp:Label ID="eidLabel" runat="server" Text='<%# Eval("eid") %>' />
                    <br />
                    ename:
                    <asp:Label ID="enameLabel" runat="server" Text='<%# Eval("ename") %>' />
                    <br />
                    enddate:
                    <asp:Label ID="enddateLabel" runat="server" Text='<%# Eval("enddate") %>' />
                    <br />
                    leavedate:
                    <asp:Label ID="leavedateLabel" runat="server" Text='<%# Eval("leavedate") %>' />
                    <br />
                    leavetype:
                    <asp:Label ID="leavetypeLabel" runat="server" Text='<%# Eval("leavetype") %>' />
                    <br />
                    status:
                    <asp:Label ID="statusLabel" runat="server" Text='<%# Eval("status") %>' />
                    <br />
                </td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="background-color: #FFCC66;color: #000080;">eid:
                    <asp:Label ID="eidLabel1" runat="server" Text='<%# Eval("eid") %>' />
                    <br />
                    ename:
                    <asp:TextBox ID="enameTextBox" runat="server" Text='<%# Bind("ename") %>' />
                    <br />
                    enddate:
                    <asp:TextBox ID="enddateTextBox" runat="server" Text='<%# Bind("enddate") %>' />
                    <br />
                    leavedate:
                    <asp:TextBox ID="leavedateTextBox" runat="server" Text='<%# Bind("leavedate") %>' />
                    <br />
                    leavetype:
                    <asp:TextBox ID="leavetypeTextBox" runat="server" Text='<%# Bind("leavetype") %>' />
                    <br />
                    status:
                    <asp:TextBox ID="statusTextBox" runat="server" Text='<%# Bind("status") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <td runat="server" style="">eid:
                    <asp:TextBox ID="eidTextBox" runat="server" Text='<%# Bind("eid") %>' />
                    <br />ename:
                    <asp:TextBox ID="enameTextBox" runat="server" Text='<%# Bind("ename") %>' />
                    <br />enddate:
                    <asp:TextBox ID="enddateTextBox" runat="server" Text='<%# Bind("enddate") %>' />
                    <br />leavedate:
                    <asp:TextBox ID="leavedateTextBox" runat="server" Text='<%# Bind("leavedate") %>' />
                    <br />leavetype:
                    <asp:TextBox ID="leavetypeTextBox" runat="server" Text='<%# Bind("leavetype") %>' />
                    <br />status:
                    <asp:TextBox ID="statusTextBox" runat="server" Text='<%# Bind("status") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="background-color: #FFFBD6;color: #333333;">eid:
                    <asp:Label ID="eidLabel" runat="server" Text='<%# Eval("eid") %>' />
                    <br />
                    ename:
                    <asp:Label ID="enameLabel" runat="server" Text='<%# Eval("ename") %>' />
                    <br />
                    enddate:
                    <asp:Label ID="enddateLabel" runat="server" Text='<%# Eval("enddate") %>' />
                    <br />
                    leavedate:
                    <asp:Label ID="leavedateLabel" runat="server" Text='<%# Eval("leavedate") %>' />
                    <br />
                    leavetype:
                    <asp:Label ID="leavetypeLabel" runat="server" Text='<%# Eval("leavetype") %>' />
                    <br />
                    status:
                    <asp:Label ID="statusLabel" runat="server" Text='<%# Eval("status") %>' />
                    <br />
                </td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </table>
                <div style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                    <asp:DataPager ID="DataPager1" runat="server">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                        </Fields>
                    </asp:DataPager>
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" style="background-color: #FFCC66;font-weight: bold;color: #000080;">eid:
                    <asp:Label ID="eidLabel" runat="server" Text='<%# Eval("eid") %>' />
                    <br />
                    ename:
                    <asp:Label ID="enameLabel" runat="server" Text='<%# Eval("ename") %>' />
                    <br />
                    enddate:
                    <asp:Label ID="enddateLabel" runat="server" Text='<%# Eval("enddate") %>' />
                    <br />
                    leavedate:
                    <asp:Label ID="leavedateLabel" runat="server" Text='<%# Eval("leavedate") %>' />
                    <br />
                    leavetype:
                    <asp:Label ID="leavetypeLabel" runat="server" Text='<%# Eval("leavetype") %>' />
                    <br />
                    status:
                    <asp:Label ID="statusLabel" runat="server" Text='<%# Eval("status") %>' />
                    <br />
                </td>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyField="eid" DataSourceID="SqlDataSource1" GridLines="Vertical" RepeatColumns="3" RepeatDirection="Horizontal" style="z-index: 1; left: 1041px; top: 335px; position: absolute; height: 436px; width: 606px">
            <AlternatingItemStyle BackColor="#F7F7F7" />
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <ItemTemplate>
                eid:
                <asp:Label ID="eidLabel" runat="server" Text='<%# Eval("eid") %>' />
                <br />
                ename:
                <asp:Label ID="enameLabel" runat="server" Text='<%# Eval("ename") %>' />
                <br />
                enddate:
                <asp:Label ID="enddateLabel" runat="server" Text='<%# Eval("enddate") %>' />
                <br />
                leavedate:
                <asp:Label ID="leavedateLabel" runat="server" Text='<%# Eval("leavedate") %>' />
                <br />
                leavetype:
                <asp:Label ID="leavetypeLabel" runat="server" Text='<%# Eval("leavetype") %>' />
                <br />
                status:
                <asp:Label ID="statusLabel" runat="server" Text='<%# Eval("status") %>' />
                <br />
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        </asp:DataList>
    </form>
</body>
</html>
