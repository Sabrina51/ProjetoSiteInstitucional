<%@ Page Title="" Language="C#" MasterPageFile="~/other.Master" AutoEventWireup="true" CodeBehind="report.aspx.cs" Inherits="ProjetoSiteInstitucional.report" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section class="report">
        <div class="container conteudo-report">
            <h3>Log de Exceções da Aplicação</h3>
            <br />
            <br />
            <asp:Label ID="report1" runat="server" Text="Label"></asp:Label>
            <asp:Button ID="Button1" OnClick="Click_limpar_log" runat="server" Text="Limpar Logs" class="btn btn-light mb-3"/>
        </div>
    </section>
    
</asp:Content>
