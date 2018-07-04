using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebASPP
{
    public partial class TambahTes : System.Web.UI.Page
    {
        private Test_OnlineEntities entities = new Test_OnlineEntities ();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SUBTES subtes = new SUBTES
            {
              
               Created_by = CratedByInput.Text,
               Created_date = DateTime.Now,
               Modified_by = ModifiedByInput.Text,
               DURASI_SUB = DateTime.Now
            };
            entities.SUBTES.Add(subtes);
            entities.SaveChanges();
            Response.Redirect("TambahSubtes.aspx");
          

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            //LinkButton1.OnClientClick="EditSubtes.aspx";
            Response.Redirect("EditSubtes.aspx");
        }

       
    }
}