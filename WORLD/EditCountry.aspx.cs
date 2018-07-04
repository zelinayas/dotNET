//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;
//using WORLD.Models;

//namespace WORLD
//{
//    public partial class EditCountry : System.Web.UI.Page
//    {
//        private worldEntities1 entities = new worldEntities1();
//        protected void Page_Load(object sender, EventArgs e)
//        {

//        }

//        protected void Button1_Click(object sender, EventArgs e)
//        {
//            Country c = c.ID.Find(int.Parse(GridView1.SelectedRow.Cells[1].Text));
//            {
                
//                //Region_ID = DropDownList1.SelectedIndex,
                
//            };
//            entities.Country.Add(c);
//            entities.SaveChanges();
//            Response.Redirect("CRUDCountry.aspx");

//        }
//    }
//}