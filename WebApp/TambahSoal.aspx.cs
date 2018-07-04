using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebApp
{
    public partial class TambahSoal : System.Web.UI.Page
    {
        private Test_OnlineEntities entities = new Test_OnlineEntities();
        public object SoalDAO { get; private set; }


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SOAL dd = new SOAL
            {
                ISI_SOAL = NamaSoalInput.Text
            };
            entities.SOAL.Add(dd);
            entities.SaveChanges();
        }
    }
}