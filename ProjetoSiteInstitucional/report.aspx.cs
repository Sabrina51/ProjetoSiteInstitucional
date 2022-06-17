using System;
using ASD2022T;

namespace ProjetoSiteInstitucional
{
    public partial class report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TratamentoExcecao ex = new TratamentoExcecao();
            ex.FileName = "~/Log.txt";
            report1.Text = ex.LoadException().Replace("\n", "<br />");
        }

        protected void Click_limpar_log(object sender, EventArgs e)
        {
            TratamentoExcecao ex = new TratamentoExcecao();
            ex.FileName = "~/Log.txt";
            ex.DeleteException();
            report1.Text = "";
        }
    }
}