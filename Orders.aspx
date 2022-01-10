<%@ Page Title="" Language="C#" MasterPageFile="~/inventory.Master" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="SingleLayerFrontEnd.Orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        margin-top: 0px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Orders</h2>

    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="order_no" DataSourceID="SqlDataSource1" GridLines="Horizontal" CssClass="auto-style1" HorizontalAlign="Justify">
        <AlternatingRowStyle BackColor="#F7F7F7" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="order_no" HeaderText="order_no" ReadOnly="True" SortExpression="order_no" />
        <asp:BoundField DataField="purch_amt" HeaderText="purch_amt" SortExpression="purch_amt" />
        <asp:BoundField DataField="ord_date" HeaderText="ord_date" SortExpression="ord_date" />
        <asp:BoundField DataField="customer_id" HeaderText="customer_id" SortExpression="customer_id" />
        <asp:BoundField DataField="salesman_id" HeaderText="salesman_id" SortExpression="salesman_id" />
    </Columns>
        <EditRowStyle HorizontalAlign="Center" />
    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" HorizontalAlign="Center" />
    <PagerStyle ForeColor="#4A3C8C" HorizontalAlign="Right" BackColor="#E7E7FF" />
    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
    <SortedAscendingCellStyle BackColor="#F4F4FD" />
    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
    <SortedDescendingCellStyle BackColor="#D8D8F0" />
    <SortedDescendingHeaderStyle BackColor="#3E3277" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conInventory %>" ProviderName="<%$ ConnectionStrings:conInventory.ProviderName %>" SelectCommand="SELECT * FROM [orders]" DeleteCommand="DELETE FROM [orders] WHERE [order_no] = @order_no" InsertCommand="INSERT INTO [orders] ([order_no], [purch_amt], [ord_date], [customer_id], [salesman_id]) VALUES (@order_no, @purch_amt, @ord_date, @customer_id, @salesman_id)" UpdateCommand="UPDATE [orders] SET [purch_amt] = @purch_amt, [ord_date] = @ord_date, [customer_id] = @customer_id, [salesman_id] = @salesman_id WHERE [order_no] = @order_no">
    <DeleteParameters>
        <asp:Parameter Name="order_no" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="order_no" Type="Int32" />
        <asp:Parameter Name="purch_amt" Type="Decimal" />
        <asp:Parameter DbType="Date" Name="ord_date" />
        <asp:Parameter Name="customer_id" Type="Int32" />
        <asp:Parameter Name="salesman_id" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="purch_amt" Type="Decimal" />
        <asp:Parameter DbType="Date" Name="ord_date" />
        <asp:Parameter Name="customer_id" Type="Int32" />
        <asp:Parameter Name="salesman_id" Type="Int32" />
        <asp:Parameter Name="order_no" Type="Int32" />
    </UpdateParameters>
    </asp:SqlDataSource>
<br />

</asp:Content>
