using System;
using ASD2022T;

// RELACIONADO A E-MAIL
using System.Net.Mail;


namespace ProjetoSiteInstitucional
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Enviar_Click(object sender, EventArgs e)
        {
            try
            {
                // 1. VALIDAR OS DADOS DIGITADOS
                string mensagem = Mensagem.Text.Trim();
                string nome = Nome.Text.Trim();
                string email = Email.Text.Trim();

                if (mensagem == "")
                {
                    Msg.Text = "Digite a mensagem";
                }
                else if (nome == "")
                {
                    Msg.Text = "Digite o seu nome";
                }
                else if (email == "")
                {
                    Msg.Text = "Digite o seu e-mail";
                }
                else
                {
                    // 2. CRIA O PACOTE DO EMAIL
                    // Criar uma instancia da classe MailMessage
                    //cria uma mensagem
                    MailMessage mail = new MailMessage();


                    //define os endereços
                    MailAddress from = new MailAddress("sabrina.silva51@fatec.sp.gov.br");
                    mail.From = from;
                    mail.To.Add("sabrina.silva51@fatec.sp.gov.br");

                    //define o conteúdo
                    mail.Subject = "Email enviado pelo form de contato";
                    mail.Body = "Mensagem: " + mensagem + "\n";
                    mail.Body += "Nome: " + nome + "\n";
                    mail.Body += "E-mail: " + email + "\n";
                    mail.IsBodyHtml = false;

                    // 3. ENVIA O EMAIL
                    // Criar uma instalcia da classe SmtpClient
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.live.com";
                    smtp.Port = 587;
                    smtp.Credentials = new System.Net.NetworkCredential("sabrina.silva51@fatec.sp.gov.br", "Pad#121963");
                    smtp.Send(mail);

                    // limpa a memória
                    mail.Dispose();
                    smtp.Dispose();
                }
            }
            catch (Exception ex)
            {
                Msg.Text = "Houve uma falha ao enviar o e-mail" + ex.Message;
                TratamentoExcecao exx = new TratamentoExcecao();
                exx.FileName = "Log.txt";
                exx.SaveException(ex);

                //string caminhoFisico = System.Web.HttpContext.Current.Server.MapPath("~/Excecoes.txt");
                //string conteudo = "Data: " + DateTime.Now.ToString() + "\n";
                //conteudo += "Mensagem: " + ex.Message + "\n";
                //conteudo += "--------------------------\n";
                //System.IO.File.AppendAllText(caminhoFisico, conteudo);
            }
        }
    }
}