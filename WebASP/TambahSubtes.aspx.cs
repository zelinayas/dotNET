using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TesOnline;


namespace WebASP
{
    public partial class TambahKelompokSoal : System.Web.UI.Page
    {
        private Test_OnlineEntities2 entities = new Test_OnlineEntities2();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SUBTES subtes = new SUBTES
            {
               Created_by = NamaCreateByInput.Text     
            };
            entities.SUBTES.Add(subtes);
            entities.SaveChanges();
                      
            //SoalDAO soalDAO = new SoalDAO();
            //soalDAO.add(soal);
        }
    }
}