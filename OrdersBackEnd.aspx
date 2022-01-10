<%@ Page Title="" Language="C#" MasterPageFile="~/inventory.Master" AutoEventWireup="true" CodeBehind="OrdersBackEnd.aspx.cs" Inherits="SingleLayerFrontEnd.OrdersBackEnd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 37%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2>Orders</h2>

    <table class="auto-style1">
        <tr>
            <td style="width: 25px;">Order No: </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtOrderNo" runat="server" Width="150px"></asp:TextBox>
            &nbsp;<asp:Button ID="txtSelect" runat="server" Text="Select" OnClick="txtSelect_Click" />
     &nbsp;
                <asp:GridView ID="GVSelect" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" HorizontalAlign="Right">
                    <AlternatingRowStyle BackColor="White" />
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
            </td>

        </tr>
        <tr>
            <td style="width: 25px;">purchase amt</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtPurchaseAmt" runat="server" Width="150px"></asp:TextBox>
            </td>

        </tr>
        <tr>
            <td style="width: 25px;">Order Date</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtOrderDate" runat="server" Width="150px"></asp:TextBox>
            </td>

        </tr>
        <tr>
            <td style="width: 25px;">CustomerId</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtCustomerId" runat="server" Width="150px"></asp:TextBox>
            </td>

        </tr>

        <tr>
            <td style="width: 25px;">SalesmanId</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtSalesmanId" runat="server" Width="150px"></asp:TextBox>
            </td>

        </tr>

    </table>

    <br />

     
     &nbsp; <asp:Button ID="txtInsert" runat="server" Text="Insert" OnClick="txtInsert_Click" />  
     &nbsp;<asp:Button ID="txtUpdate" runat="server" Text="Update" OnClick="txtUpdate_Click" />
     &nbsp;&nbsp;<asp:Button ID="txtDelete" runat="server" Text="Delete" />








    








    <br />
<br />
<asp:GridView ID="GVOrders" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
    <AlternatingRowStyle BackColor="#DCDCDC" />
    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <RowStyle BackColor="#EEEEEE" ForeColor="Black" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#0000A9" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#000065" />
</asp:GridView>








    








    <br />
    <br />








</asp:Content>
