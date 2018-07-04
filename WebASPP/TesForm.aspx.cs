using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebASPP
{
    public partial class TesForm : System.Web.UI.Page
    {
        private Test_OnlineEntities entities = new Test_OnlineEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var t = from x in entities.TIPE_SOAL
                    select x;
            GridView1.DataSource = t.ToList();
            GridView1.DataBind();
            
        }
    }
}