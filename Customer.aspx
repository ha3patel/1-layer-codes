<%@ Page Title="" Language="C#" MasterPageFile="~/inventory.Master" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="SingleLayerFrontEnd.Customer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Customer</h2>
    <br />
    

        <table style="width: 50%;">
        <tr>
            <td style="width: 20px;">CustomerId </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtCustomerId" runat="server" Width="150px"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td style="width: 20px;">Cust_Name </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtCustName" runat="server" Width="150px"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td style="width: 20px;">City</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtCity" runat="server" Width="150px"></asp:TextBox>
            </td>
            
        </tr>
         <tr>
            <td style="width: 20px;">Grade</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtGrade" runat="server" Width="150px"></asp:TextBox>
             </td>
            
        </tr>
        <tr>
            <td style="width: 20px;">SalesmanID</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtSalesmanID" runat="server" Width="150px"></asp:TextBox>
             </td>
            
        </tr>
    </table>


    
    
    <br />
    <br />

    <asp:Button ID="txtEnterCustomer" runat="server" OnClick="txtEnterCustomer_Click" Text="Enter Customer" />
    <br />
    <br />
    <asp:GridView ID="GVCustomer" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" HorizontalAlign="Center" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <RowStyle HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
    <br />
    <br />
<br />
<br />

     <br />
</asp:Content>
