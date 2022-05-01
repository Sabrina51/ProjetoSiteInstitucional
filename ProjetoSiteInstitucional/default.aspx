<%@ Page Title="" Language="C#" MasterPageFile="~/default.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ProjetoSiteInstitucional.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
        <section class="carousel-content">
            <div id="mainSlider" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#mainSlider" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#mainSlider" data-bs-slide-to="1" aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#mainSlider" data-bs-slide-to="2" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="Image/mao-e-teclado.jpg" class="d-block w-100" alt="..." />
                        <div class="carousel-caption d-none d-md-block slide1">
                            <asp:HyperLink NavigateUrl="https://www.fatec.edu.br//" runat="server">
                                <h1>Faculdade de Tecnologia de Americana</h1>
                                <p>Criando tecnologia para o desenvolvimento do Brasil</p>
                            </asp:HyperLink>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="Image/tela-pc.jpg" class="d-block w-100" alt="..." />
                        <div class="carousel-caption d-none d-md-block slide2">
                            <asp:HyperLink NavigateUrl="https://www.fatec.edu.br/noticias/bootcamp-cognizant-cloud-data-engineer/" runat="server">
                                <h1>Bootcamp Cognizant<br /> Cloud Data Engineer</h1>
                                <p>O bootcamp patrocinado pela Cognizant é uma formação <br /> intensiva e prática com foco em Engenharia de Dados em Cloud. <br />Aproveite essa oportunidade, as vagas são limitadas <br />e as inscrições estão abertas até 16/08.</p>
                             </asp:HyperLink>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="Image/code.jpg" class="d-block w-100" alt="..." />
                        <div class="carousel-caption d-none d-md-block slide3">
                            <asp:HyperLink NavigateUrl="https://www.fatec.edu.br/noticias/programa-de-monitoria-1s2022/" runat="server">
                                <h1>Programa de Monitoria 1S2022</h1>
                                <p>Processo Seletivo para o Programa de Monitoria – 1º semestre de 2022.</p>
                            </asp:HyperLink>
                        </div>
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#mainSlider" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#mainSlider" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </section>
        <section class="video">
            <div class="container">
                <div class="row row-content-video">
                    <h2>O curso</h2>
                </div>
                <div class="row row-content-video">
                    <div class="col-12">
                        <p>
                           <iframe width="950" height="530"
                                src="https://www.youtube.com/embed/u51_7gZJ3Ek">
                           </iframe>
                        </p>
                    </div>
                </div>
            </div>
        </section>
    </main>
</asp:Content>
