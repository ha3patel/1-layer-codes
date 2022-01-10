<%@ Page Title="" Language="C#" MasterPageFile="~/inventory.Master" AutoEventWireup="true" CodeBehind="Salesman.aspx.cs" Inherits="SingleLayerFrontEnd.Salesman" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Salesman</h2>

    <table style="width: 50%;">
        <tr>
            <td style="width: 20px;">SalesmanId </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtSalesmanId" runat="server" Width="150px"></asp:TextBox>
            </td>

        </tr>
        <tr>
            <td style="width: 20px;">Name </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtName" runat="server" Width="150px"></asp:TextBox>
            </td>

        </tr>
        <tr>
            <td style="width: 20px;">City</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtCity" runat="server" Width="150px"></asp:TextBox>
            </td>

        </tr>
        <tr>
            <td style="width: 20px;">Commission</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtCommission" runat="server" Width="150px"></asp:TextBox>
            </td>

        </tr>
    </table>

    <br />



    <asp:Button ID="txtEnterSalesman" runat="server" OnClick="txtEnterSalesman_Click" Text="Enter Salesman" BackColor="#0099FF" Font-Bold="True" ForeColor="White" />


    <br />
    <br />

    <asp:GridView ID="GVSalesman" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>

    <br />

    <br />
    <br />


</asp:Content>
