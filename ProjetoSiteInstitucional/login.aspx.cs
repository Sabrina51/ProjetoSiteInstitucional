using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using AppDatabase;

namespace ProjetoSiteInstitucional
{
    public partial class login : System.Web.UI.Page
    {
        string conexao = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/Database1.accdb") + ";Persist Security Info=False;";

        protected void Page_Load(object sender, EventArgs e)
        {
            LoadUsuarios();
        }

        protected void Salvar_Click(object sender, EventArgs e)
        {

            string comando = "";

            if (NomeAcessoExiste(NomeAcesso.Text))
            {

                Mensagem.Text = "Este nome de acesso ja esta cadastrado para outro usuario";
            }
            else
            {
                if (Codigo.Text != "")
                {
                    comando = "UPDATE Usuarios SET Nome='" + Utilities.Filter(Nome.Text) + "',NomeAcesso='" + Utilities.Filter(NomeAcesso.Text) + "',Senha='" + Utilities.Filter(Senha.Text) + "' WHERE Codigo=" + Utilities.Filter(Codigo.Text);
                }
                else
                {
                    comando = "INSERT INTO Usuarios(Nome,NomeAcesso,Senha) VALUES('" + Utilities.Filter(Nome.Text) + "','" + Utilities.Filter(NomeAcesso.Text) + "','" + Utilities.Filter(Senha.Text) + "');";
                }

                AppDatabase.OleDBTransaction db = new OleDBTransaction();
                db.ConnectionString = conexao;
                db.Query(comando);

                LimparControles();
                LoadUsuarios();
            }
        }
        protected void LimparControles()
        {
            Codigo.Text = "";
            Nome.Text = "";
            NomeAcesso.Text = "";
            Senha.Text = "";
            Excluir.Visible = false;
        }

        protected void LoadUsuarios()
        {
            string comando = "SELECT Codigo,Nome,NomeAcesso FROM Usuarios ORDER BY Nome ASC;";
            AppDatabase.OleDBTransaction db = new OleDBTransaction();
            db.ConnectionString = conexao;
            db.Query(comando);
            System.Data.DataTable tb = (System.Data.DataTable)db.Query(comando);

            ExibirUsuarios.DataSource = tb;
            ExibirUsuarios.DataBind();

        }

        protected void ExibirUsuarios_SelectedIndexChanged(object sender, EventArgs e)
        {
            Codigo.Text = ExibirUsuarios.SelectedRow.Cells[1].Text;

            string comando = "SELECT * FROM Usuarios WHERE Codigo=" + Codigo.Text;

            AppDatabase.OleDBTransaction db = new OleDBTransaction();
            db.ConnectionString = conexao;
            db.Query(comando);
            System.Data.DataTable tb = (System.Data.DataTable)db.Query(comando);

            Nome.Text = tb.Rows[0]["Nome"].ToString();
            NomeAcesso.Text = tb.Rows[0]["NomeAcesso"].ToString();
            Senha.Text = tb.Rows[0]["Senha"].ToString();
            Excluir.Visible = true;

        }

        protected void Excluir_Click(object sender, EventArgs e)
        {

        }

        protected bool NomeAcessoExiste(string nomeacesso)

        {
           return false;
        }
    }
}