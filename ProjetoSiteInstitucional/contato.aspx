<%@ Page Title="" Language="C#" MasterPageFile="~/other.Master" AutoEventWireup="true" CodeBehind="contato.aspx.cs" Inherits="ProjetoSiteInstitucional.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="container-fluid contato">
        <div class="contato-content">
            <div class="contato-title">
                <h2>Fale Conosco</h2>
            </div>
            <div class="contato-fields">
                <asp:Label ID="Msg" runat="server" ForeColor="red"></asp:Label>
                <label>Mensagem</label>
                <asp:TextBox ID="Mensagem" TextMode="MultiLine" MaxLength="256" Rows="6" runat="server"></asp:TextBox>

                <label>Nome: </label>
                <asp:TextBox ID="Nome" MaxLength="100" runat="server"></asp:TextBox>

                <label>E-mail: </label>
                <asp:TextBox ID="Email" MaxLength="256" runat="server"></asp:TextBox>

                <asp:Button ID="Enviar" OnClick="Enviar_Click" runat="server" Text="Enviar" />
            </div>
        </div>
    </section>
</asp:Content>
