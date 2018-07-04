using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WORLD.Models;

namespace WORLD
{
    public partial class CRUDCountry : System.Web.UI.Page
    {
        private worldEntities1 entities = new worldEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("AddCountry.aspx");
        }
    }
}