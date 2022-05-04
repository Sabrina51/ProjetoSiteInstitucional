<<<<<<< HEAD
﻿<%@ Page Title="" Language="C#" MasterPageFile="~/other.Master" AutoEventWireup="true" CodeBehind="contato.aspx.cs" Inherits="ProjetoSiteInstitucional.WebForm3" %>
=======
﻿<%@ Page Title="" Language="C#" MasterPageFile="~/default.Master" AutoEventWireup="true" CodeBehind="contato.aspx.cs" Inherits="ProjetoSiteInstitucional.WebForm3" %>
>>>>>>> 8f3d439035c7d6dbcc2bd01417dc196718d1d1ab

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<<<<<<< HEAD
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
=======
    <section class="contato">
        <div class="container">
            <div class="row row-content-contato">
                <h2>Fale Conosco</h2>
            </div>
            <div class="row">
                <div class="col-12 container">
                    <div class="box border">
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
>>>>>>> 8f3d439035c7d6dbcc2bd01417dc196718d1d1ab
            </div>
        </div>
    </section>
</asp:Content>
