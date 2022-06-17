using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.Web;

namespace ASD2022T
{

    /// <summary>
    /// TRATAMENTO DE ERRO
    /// </summary>
    /// 
    public class TratamentoExcecao
    {

        //private string caminhoFisico = System.Web.HttpContext.Current.Server.MapPath("~/Excecoes.txt");
        private string m_fileName = "~/Excecoes.txt";

        #pragma warning disable CS1591 // Missing XML comment for publicly visible type or member
        public string FileName
        {
            get
            {
                return m_fileName;
            }
            set
            {
                m_fileName = value;
            }
        }

        #pragma warning disable CS1591 // Missing XML comment for publicly visible type or member
        public void SaveException(Exception ex)
        #pragma warning restore CS1591 // Missing XML comment for publicly visible type or member
        {
            string path = HttpContext.Current.Server.MapPath(m_fileName);
            string str = "Data: " + DateTime.Now.ToString() + "\n";
            str = str + "Mensagem: " + ex.Message + "\n";
            str = str + ex.GetType().ToString() + "\n";
            str = str + ex.Message + "\n";
            str = str + ex.StackTrace + "\n";
            str += "----------------------------\n";
            File.AppendAllText(path, str);
        }

        /// <summary>
        /// LE O ARQUIVO CONTENDO AS EXCECOES SALVAS
        /// </summary>
        /// <returns></returns>
        public string LoadException()
        {

            string path = HttpContext.Current.Server.MapPath(m_fileName);
            if (File.Exists(path))
            {
                return File.ReadAllText(path);
            }

            return "";
        }

        /// <summary>
        /// DELETA AS MENSAGENS ARMAZENADAS DO ARQUIVO DE EXCECOES
        /// </summary>
        public void DeleteException()
        {
            string path = HttpContext.Current.Server.MapPath(m_fileName);
            if (File.Exists(path))
            {
                File.WriteAllText(path, "");
            }
        }
    }
}
