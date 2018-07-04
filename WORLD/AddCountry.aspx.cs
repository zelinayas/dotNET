using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WORLD.Models;

namespace WORLD
{
    public partial class AddCountry : System.Web.UI.Page
    {
        private worldEntities1 entities = new worldEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Button1.Text == "Simpan")
            {
                Country c = new Country
                {
                    Code = id.Text,
                    Region_ID = DropDownList1.SelectedIndex,                    
                    Name_Country = countryh.Text,
                    Continent = continent.Text,
                    Surface_Area = float.Parse(surface.Text),
                    Indep_Year = int.Parse(indep.Text),
                    Population = int.Parse(population.Text),
                    Life_Expectancy = float.Parse(life.Text),
                    GNP = float.Parse(gnp.Text),
                    GNPOld = float.Parse(gnpold.Text),
                    Local_Name = local.Text,
                    Government_Form = government.Text,
                    Head_Of_State = head.Text,
                    Capital = int.Parse(capital.Text),
                    Code2 = code2.Text
                };
                entities.Country.Add(c);
                entities.SaveChanges();
                Response.Redirect("AddCountry.aspx");

            }
            else
            {               
                Country ase = entities.Country.Find(int.Parse(GridView1.SelectedRow.Cells[1].Text));
                //ase.ID = int.Parse(id.Text);
                ase.Code = id.Text;
                ase.Region_ID = DropDownList1.SelectedIndex;
                ase.Name_Country = countryh.Text;
                ase.Continent = continent.Text;
                ase.Surface_Area = float.Parse(surface.Text);
                ase.Indep_Year = int.Parse(indep.Text);
                ase.Population = int.Parse(population.Text);
                ase.Life_Expectancy = float.Parse(life.Text);
                ase.GNP = float.Parse(gnp.Text);
                ase.GNPOld = float.Parse(gnpold.Text);
                ase.Local_Name = local.Text;
                ase.Government_Form = government.Text;
                ase.Head_Of_State = head.Text;
                ase.Capital = int.Parse(capital.Text);
                ase.Code2 = code2.Text;
                entities.SaveChanges();
                Response.Redirect("CRUDCountry.aspx");

               
            }

        }

        //protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    Country ase = entities.Country.Find(int.Parse(GridView1.SelectedRow.Cells[1].Text));
           
        //    //ase.ID = int.Parse(id.Text);
        //    ase.Region_ID = DropDownList1.SelectedIndex;
        //    ase.Code = id.Text;
        //        ase.Name_Country = countryh.Text;
        //        ase.Continent = continent.Text;
        //        ase.Surface_Area = float.Parse(surface.Text);
        //        ase.Indep_Year = int.Parse(indep.Text);
        //        ase.Population = int.Parse(population.Text);
        //        ase.Life_Expectancy = float.Parse(life.Text);
        //        ase.GNP = float.Parse(gnp.Text);
        //        ase.GNPOld = float.Parse(gnpold.Text);
        //        ase.Local_Name = local.Text;
        //        ase.Government_Form = government.Text;
        //        ase.Head_Of_State = head.Text;
        //        ase.Capital = int.Parse(capital.Text);
        //        ase.Code2 = code2.Text;

        //        entities.SaveChanges();
        //        Response.Redirect("CRUDCountry.aspx");


        //}

        //protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    //DropDownList1.SelectedIndex = intGridView2.SelectedRow.Cells[1].Text;
        //    id.Text = GridView1.SelectedRow.Cells[1].Text;
        //    countryh.Text = GridView1.SelectedRow.Cells[2].Text;
        //    continent.Text = GridView1.SelectedRow.Cells[3].Text;
        //    surface.Text = GridView1.SelectedRow.Cells[4].Text;
        //    indep.Text = GridView1.SelectedRow.Cells[5].Text;
        //    population.Text = GridView1.SelectedRow.Cells[6].Text;
        //    life.Text = GridView1.SelectedRow.Cells[7].Text;
        //    gnp.Text = GridView1.SelectedRow.Cells[8].Text;
        //    gnpold.Text = GridView1.SelectedRow.Cells[9].Text;
        //    local.Text = GridView1.SelectedRow.Cells[10].Text;
        //    government.Text = GridView1.SelectedRow.Cells[11].Text;
        //    head.Text = GridView1.SelectedRow.Cells[12].Text;
        //    capital.Text = GridView1.SelectedRow.Cells[13].Text;
        //    //TextBox14.Text = GridView2.SelectedRow.Cells[15].Text;
        //    Button1.Text = "Ubah";
        //}

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            //DropDownList1.SelectedIndex = intGridView2.SelectedRow.Cells[1].Text;
            id.Text = GridView1.SelectedRow.Cells[3].Text;
            countryh.Text = GridView1.SelectedRow.Cells[4].Text;
            continent.Text = GridView1.SelectedRow.Cells[5].Text;
            surface.Text = GridView1.SelectedRow.Cells[6].Text;
            indep.Text = GridView1.SelectedRow.Cells[7].Text;
            population.Text = GridView1.SelectedRow.Cells[8].Text;
            life.Text = GridView1.SelectedRow.Cells[9].Text;
            gnp.Text = GridView1.SelectedRow.Cells[10].Text;
            gnpold.Text = GridView1.SelectedRow.Cells[11].Text;
            local.Text = GridView1.SelectedRow.Cells[12].Text;
            government.Text = GridView1.SelectedRow.Cells[13].Text;
            head.Text = GridView1.SelectedRow.Cells[14].Text;
            capital.Text = GridView1.SelectedRow.Cells[15].Text;
            code2.Text = GridView1.SelectedRow.Cells[16].Text;
            Button1.Text = "Ubah";
        }
    }


}
