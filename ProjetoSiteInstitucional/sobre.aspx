<%@ Page Title="" Language="C#" MasterPageFile="~/default.Master" AutoEventWireup="true" CodeBehind="sobre.aspx.cs" Inherits="ProjetoSiteInstitucional.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="sobre">
        <div class="container-fluid">
            <div class="row row-title-sobre">
                <h1>FATEC Americana</h1>
                <h3>Análise e Desenvolvimento de Sistemas</h3>
            </div>
            <div class="row row-content-sobre">
                <div class="col-6">
                    <h3>Perfil Profissional</h3>
                    <p>
                        O Tecnólogo em Análise e Desenvolvimento de Sistemas analisa, projeta, documenta, especifica, testa, implanta e mantém sistemas computacionais de informação. 
                        Esse profissional trabalha, também, com ferramentas computacionais, equipamentos de informática e metodologia de projetos na produção de sistemas. 
                        Raciocínio lógico, emprego de linguagens de programação e de metodologias de construção de projetos, preocupação com a qualidade, usabilidade, robustez, 
                        integridade e segurança de programas computacionais são fundamentais à atuação desse profissional.
                    </p>
                </div>
            </div>
            <div class="row row-content-sobre">
                <div class="col-6">
                    <h3>Áreas de Atuação</h3>
                    <p>
                        O profissional de Análise e Desenvolvimento de Sistemas de Informação pode atuar em empresas de assessoria e consultoria tecnológica e de desenvolvimento de sistemas, 
                        assim como nos diversos setores da economia: indústria, comércio, prestação de serviços, instituições financeiras, órgãos públicos ou como empreendedor em informática. 
                        Este profissional estará apto a projetar e implementar sistemas de acordo com as necessidades institucionais, coordenar infra-estruturas de tecnologia da informação, 
                        elaborando políticas e diretrizes a partir da análise de necessidades, realizar consultoria em Sistemas de Informação, avaliando e selecionando recursos de software e hardware, 
                        atuar em Centros de Pesquisa, de Ensino ou de desenvolvimento de software, e empreender seu próprio negócio em informática.
                    </p>
                </div>
            </div>
        </div>
    </section>
    <section class="tecnologias">
        <div class="container">
            <div class="row row-content-tecnologias">
                <div class="col-12">
                    <h2>Algumas Tecnologias</h2>
                </div>
            </div>
            <div class="row row-content-tecnologias">
                <div class="col-3">
                    <h3>
                        <img src="Image/html-5.png" />
                        <img src="Image/css-3.png" />
                    </h3>
                    <p>Desenvolvimento Web com HTML5 e CSS3</p>
                </div>
                <div class="col-3">
                    <h3> <img src="Image/c-sharp.png" /></h3>
                    <p>Programação em C#</p>
                </div>
                <div class="col-3">
                    <h3><img src="Image/c.png" /></h3>
                    <p>Programação em C</p>
                </div>
                <div class="col-3">
                    <h3><img src="Image/java.png" /></h3>
                    <p>Programação em Java e noções de POO</p>
                </div>
            </div>
        </div>
    </section>
    <section class="objetivos">
        <div class="container-fluid">
            <div class="row row-content-objetivos">
                <div class="col-6">
                    <h2>Objetivos do Curso</h2>
                </div>
                <div class="col-6">
                    <div class="row row-content-objetivos">
                        <h3>Gerais</h3>
                        <p>
                           Formar profissionais que projetem, implementem e coordenem infraestruturas de tecnologia da informação, atendendo a necessidade de mudanças provocadas pelas inovações tecnológicas nas empresas.
                        </p>
                    </div>
                    <div class="row">
                        <h3>Específicos</h3>
                        <p>
                            Uma vez que os sistemas de informação estão difundidos em todas as áreas organizacionais, é ampla a atuação do profissional de Sistemas de Informação como agente e promotor de mudanças, fazendo com que as empresas utilizem adequadamente a tecnologia da informação na solução de seus problemas.

                            É um trabalho que apresenta aspectos multidisciplinares, integrando diversas áreas de conhecimento, como ciência da computação, ciências gerenciais e ciências comportamentais.

                            Para tanto os objetivos específicos do curso são:

                            Formar profissionais capazes de analisar problemas e desenvolver soluções para as organizações, através da modelagem e implementação de sistemas de informação;
                            Formar profissionais com visão interdisciplinar, que busquem o aperfeiçoamento contínuo, integrando conhecimentos para o desenvolvimento de soluções computacionais adequadas às organizações.
                            Promover sólida formação técnico científica para o desenvolvimento e gerenciamento de projetos de sistemas de informação.
                            Estimular o egresso a interagir junto aos problemas sócio tecnológicos da comunidade e das organizações.
                            Formar profissionais com visão global, humanística e calcada na ética.
                            Incentivar a investigação científica, visando o desenvolvimento da ciência e da tecnologia.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="mais-informacoes">
        <div class="container">
            <div class="row row-mais-informacoes">
                <div class="col-3">
                    <asp:Image ImageUrl="~/image/cronometro.png" ID="Image1" runat="server" />
                    <h3>Carga Horária</h3>
                    <p>2800 horas, 2400 horas + 240 horas de Estágio Curricular + 160 horas do Trabalho de Graduação.</p>
                </div>
                <div class="col-3">
                    <asp:Image ImageUrl="~/image/ampulheta.png" ID="Image4" runat="server" />
                    <h3>Duração</h3>
                    <p>6 semestres.</p>
                </div>
                <div class="col-3">
                    <asp:Image ImageUrl="~/image/vaga.png" ID="Image3" runat="server" />
                    <h3>Vagas</h3>
                    <p>80 vagas semestrais, sendo 40 no período matutino e 40 no período vespertino.</p>
                </div>
                <div class="col-3">
                    <asp:Image ImageUrl="~/image/prancheta.png" ID="Image2" runat="server" />
                    <h3>Matriz Curricular</h3>
                    <p>
                        Para acessar a matriz curricular detalhada, clique 
                        <asp:HyperLink NavigateUrl="https://drive.google.com/file/d/1WTPLqtjYLe99dVygsSf_E7EV_wc4LKT_/view" runat="server">aqui.</asp:HyperLink>
                    </p>
                </div>
            </div>
            <div class="row">
                <h3>Coordenação</h3>
                <p>Professor Antônio Alfredo Lacerda</p>
            </div>
        </div>
    </section>
</asp:Content>
