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
    public partial class TambahSubtes : System.Web.UI.Page
    {
        //private Test_OnlineEntities entities = new Test_OnlineEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SUBTES subtes = new SUBTES
            {

                Created_by = NamaCreatedInput.Text
            };

            SubtesDAO subtesdao = new SubtesDAO();
            subtesdao.add(subtes);
            //SubtesTesDAO xx = new SubtesTesDAO();
            

            //entities.SUBTES.Add(subtes);
            //entities.SaveChanges();
        }

        

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            LinkButton1.Text = "EditSubtes.aspx";
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

        }
    }
}