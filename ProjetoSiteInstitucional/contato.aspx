<%@ Page Title="" Language="C#" MasterPageFile="~/other.Master" AutoEventWireup="true" CodeBehind="contato.aspx.cs" Inherits="ProjetoSiteInstitucional.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="container contato">
        <h3 class="titulo-contato">Fale Conosco</h3>
        <div class="row conteudo-contato">
            <div class="col-6">
                <div class="mb-3">
                    <label>Mensagem
                        <asp:Label ID="Msg" runat="server" ForeColor="red"></asp:Label>
                    </label>
                    <asp:TextBox ID="Mensagem" TextMode="MultiLine" MaxLength="256" Rows="6" runat="server" class="form-control mensagem"></asp:TextBox>
                </div>
                <br />
                <div class="mb-3">
                    <label>Nome: </label>
                    <asp:TextBox ID="Nome" MaxLength="100" runat="server" class="form-control nome"></asp:TextBox>
                </div>
                <br />
                <div class="mb-3">
                    <label>E-mail: </label>
                    <asp:TextBox ID="Email" MaxLength="256" runat="server" class="form-control email"></asp:TextBox>
                </div>
                <br />
                <div class="mb-3">
                    <asp:Button ID="Enviar" OnClick="Enviar_Click" runat="server" Text="Enviar" class="btn btn-light mb-3" />
                </div>
            </div>
            <div class="col-6">
                <div class="contato-fields">
                    <h3>Telefone</h3>
                    <span>+55 19 3406 5776 /</span>
                    <span>+55 19 3407 1518 /</span>
                    <span>+55 19 3406 3297</span>
                    <br /><br />
                    <h3>Endereço</h3>
                    <p>R. Emílio de Menezes, s/n - Vila Amorim Americana - SP, CEP: 13469-111</p>
                    <div>
                        <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7359.371165128394!2d-47.351792!3d-22.739925!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94c89bea60f1c9bd%3A0x27fae19f9a45d798!2sR.%20Em%C3%ADlio%20de%20Menezes%20-%20Vila%20Amorim%2C%20Americana%20-%20SP%2C%2013469-111!5e0!3m2!1spt-BR!2sbr!4v1649997718621!5m2!1spt-BR!2sbr" width="460" height="200" style="border: 0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
