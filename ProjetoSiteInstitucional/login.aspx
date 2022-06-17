<%@ Page Title="" Language="C#" MasterPageFile="~/other.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ProjetoSiteInstitucional.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="container login">
        <h3 class="titulo-login">Usuários</h3>
        <div class="row conteudo-login">
            <div class="col-6">
                <asp:Label ID="Codigo" runat="server" Font-Size="30px"></asp:Label>
                <div class="mb-3">
                    <asp:Label ID="Mensagem" runat="server"></asp:Label>
                </div>

                <div class="mb-3">
                    <label>Nome</label>
                    <asp:TextBox ID="Nome" runat="server" class="form-control nome"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label>Nome de Acesso</label>
                    <asp:TextBox ID="NomeAcesso" runat="server" class="form-control nome-acesso"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label>Senha</label>
                    <asp:TextBox ID="Senha" runat="server" class="form-control senha" type="password"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <asp:Button ID="Salvar" OnClick="Salvar_Click" runat="server" Text="Salvar" class="btn btn-light mb-3" />
                    <asp:Button ID="Excluir" CssClass="botao-delete btn btn-light mb-3" Visible="false" runat="server" OnClick="Excluir_Click" Text="Excluir" />
                </div>
            </div>
            <div class="col-6">
                <asp:GridView AutoGenerateSelectButton="true" OnSelectedIndexChanged="ExibirUsuarios_SelectedIndexChanged" ID="ExibirUsuarios" Width="100%" CellPadding="8" BorderColor="#c0c0c0" runat="server"></asp:GridView>
            </div>
        </div>
    </section>
</asp:Content>
