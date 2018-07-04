//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;
//using System.Data.SqlClient;
//using System.Data;
//using WORLD.Models;


//namespace WORLD
//{
//    public partial class TambahCountry : System.Web.UI.Page
//    {
//        private worldEntities entities = new worldEntities();
//        //protected void Page_Load(object sender, EventArgs e)
//        //{
//        //    if (!Page.IsPostBack)
//        //    {
//        //        using (var coun = new worldEntities())
//        //        {
//        //            DropDownList1.DataSource = coun.Region;
//        //            DropDownList1.DataTextField = "Name_Region";
//        //            DropDownList1.DataValueField = "ID";
//        //            DropDownList1.DataBind();
                    
//        //        }
                
                
//        //    }

//        //}
      
//        protected void Button1_Click(object sender, EventArgs e)
//        {
//            country coun = new country
//            {
//                CodeBlockType 

//                Country1 = countryNameInput.Text,
//                Continent = ContinentInput.Text,
//                Regio = regionDropdown.SelectedIndex,
//                Surface_Area = float.Parse(surfaceAreaInput.Text),
//                Indep_Year = int.Parse(inYeInput.Text),
//                Population = int.Parse(populationInput.Text)
//            };

//            db.Country.Add(country);
//            db.SaveChanges();
//            Response.Redirect("CrudCountry.aspx");



//        };

            


//            entities.country.Add(subtes);
//            entities.SaveChanges();

//        }


//    //protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
//    //{
//    //    if (!Page.IsPostBack)
//    //    {
//    //        using (var coun = new worldEntities())
//    //        {
//    //            DropDownList1.DataSource = coun.Region;
//    //            DropDownList1.DataTextField = "Name_Region";
//    //            DropDownList1.DataValueField = "ID";
//    //            DropDownList1.DataBind();
//    //        }


//    //    }


//    //}



//}
