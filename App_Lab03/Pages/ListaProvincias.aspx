<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListaProvincias.aspx.cs" Inherits="App_Lab03.Pages.ListaProvincias" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <h2>Lista de Provincias</h2><br />
    <br />
   
    <asp:GridView ID="grdProvincias" runat="server" AutoGenerateColumns="False" OnRowDataBound="gvTablaProvincias_RowDataBound"  
        AllowPaging="True" CssClass="mGrid" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt"
        PageSize="7" Width="600px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
<AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
        <Columns>
            <asp:BoundField DataField="idProvincia" HeaderText="ID" />
            <asp:BoundField DataField="provincia" HeaderText="Nombre Provincia" />
            <asp:BoundField DataField="fechaCreacion" HeaderText="Fecha Creacion" />
            <asp:BoundField DataField="estado" HeaderText="Estado" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />

<PagerStyle CssClass="pgr" BackColor="White" ForeColor="#000066" HorizontalAlign="Left"></PagerStyle>
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    
&nbsp;
    
</asp:Content>
