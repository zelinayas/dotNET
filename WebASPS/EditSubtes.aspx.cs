using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TesOnline;
using TesOnlineTes;

namespace WebASPS
{
    public partial class EditSubtes : System.Web.UI.Page
    {
        //private Test_OnlineEntities entities = new Test_OnlineEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SUBTES subtes = new SUBTES
            {
                ID_SUBTES = int.Parse(NamaIDInput.Text),
                Modified_by = NamaIDInput.Text
            };

            //SubtesDAO subtesdao = new SubtesDAO();
            //subtesdao.add(subtes);
            
            //entities.SUBTES.Add(subtes);
            //entities.SaveChanges();
        }
    }
}