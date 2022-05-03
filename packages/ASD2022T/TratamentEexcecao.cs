using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ASD2022T
{

    /// <summary>
    /// TRATAMENTO DE ERRO
    /// </summary>
    /// 
    public class TratamentEexcecao
    {

        private string caminhoFisico = System.Web.HttpContext.Current.Server.MapPath("~/Excecoes.txt");

        /// <summary>
        /// SALVA A EXCECAO EM UM DOCUMENTO TXT
        /// </summary>
        /// <param name="ex"></param>
        public void SaveException(Exception ex)
        {
            string conteudo = "Data: " + DateTime.Now.ToString() + "\n";

            conteudo += "Mensagem: " + ex.Message + "\n";
            conteudo += "--------------------------\n";
            System.IO.File.AppendAllText(caminhoFisico, conteudo);

        }

        /// <summary>
        /// LE O ARQUIVO CONTENDO AS EXCECOES SALVAS
        /// </summary>
        /// <returns></returns>
        public string LoadException()
        {

            return System.IO.File.ReadAllText(caminhoFisico);
        }
        /// <summary>
        /// DELETA AS MENSAGENS ARMAZENADAS DO ARQUIVO DE EXCECOES
        /// </summary>
        public void DeleteException()
        {

            System.IO.File.Delete(caminhoFisico);
        }
    }
}
