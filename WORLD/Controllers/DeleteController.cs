using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using WORLD.Models;

namespace WORLD.Controllers
{
    public class DeleteController : ApiController
    {

        private worldEntities1 db = new worldEntities1();

        Country c = new Country();
        // GET api/<controller>
        //public IEnumerable<Country> GetAllCountry()
        //{
        //    //return new string[] { "value1", "value2" };
        //    //return c;
        //}

        // GET api/<controller>/5
        public Country GetCountryById(int id)
        {
            Country cc = db.Country.Find(id);
            
            return cc;
        }



        // POST api/<controller>
        public void Post([FromBody]string value)
        {
        }

        // PUT api/<controller>/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/<controller>/5
        public void Delete(int id)
        {
            Country q = db.Country.Where(x => x.ID == id).Single<Country>();
            db.Country.Remove(q);
            db.SaveChanges();
        }
    }
}