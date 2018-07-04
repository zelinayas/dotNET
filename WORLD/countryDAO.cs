//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;
//using WORLD.Models;

//namespace WORLD
//{
//    public class countryDAO
//    {
//        private static worldEntities entities = new worldEntities();
//        //private Logger logger = NLog.LogManager.GetCurrentClassLogger();
//        public countryDAO()
//        {

//        }

//        public int add(country tes)   //access modifier | tipe out | 
//        {
//            //var result = 0;
//            try
//            {
//                entities.country.Add(tes);
//                return entities.SaveChanges();
//            }

//            catch (Exception ex)
//            {
//                //result = -1;
//                //logger.Error(ex.GetType());
//                //logger.Error(ex.Message);
//                //logger.Error(ex.InnerException);
//                throw ex; //disini kita bisa tau, klas Log di dB yaitu DbUpdateException
//            }

//            //return result;
//        }

//        public int edit(int id, country tes)
//        {
//            var result = 0;
//            try
//            {
//                var existingTES = entities.country.Find(id);
//                //existingTES.PESERTA_TES =  ;

//                result = entities.SaveChanges();
//            }

//            catch
//            {
//                result = -1;
//            }
//            return result;

//        }

//        public country detail(int id)  //TES : tipe data yg kebih kompleks, out = TES aitu berupa objek
//        {
//            return entities.country.Find(id);  //return objek
//        }

//        public int delete(int id)
//        {
//            var result = 0;
//            try
//            {
//                var existingTES = entities.country.Find(id);
//                entities.country.Remove(existingTES);
//                result = entities.SaveChanges();
//            }
//            catch
//            {
//                result = -1;
//            }
//            return result;
//        }

//        public int delete(int id, bool isPermanent)
//        {
//            int result = 0;

//            try
//            {
//                var existingTES = entities.country.Find(id);
//                if (!isPermanent)
//                {
//                    existingTES.ID_TES = 2;

//                }

//                else
//                {
//                    result = delete(id);
//                }
//            }
//            catch
//            {
//                result = -1;
//            }
//            return result;
//        }



//        public List<country> getAll()
//        {
//            var q = from x in entities.Region
//                    where x.Is_Active.Equals(true)
//                    select x;
//            foreach (var item in q)
//            {
//                Console.WriteLine(item.ID_SUBTES + " " + item.Is_Active);
//            }

//            return entities.TES.ToList();
//        }

//        //public List<TES> CariByNameModified (string c)  //TES itu primary, subtes itu foreign 
//        //{
//        //    var p = from x in entities.TES
//        //            where x.SUBTES.Modified_by.Contains(c)
//        //            select x;
//        //    foreach (var item in p)
//        //    {
//        //        Console.WriteLine(item.Modified_by + " " + item.Modified_by);
//        //    }
//        //    return entities.TES.ToList();
//        //}








//        //public void AddTes()
//        //{
//        //    var tes = new TES();
//        //   // tes.PESERTA_TES = "Siapakah namamu?";
//        //    entities.TES.Add(tes);
//        //    entities.SaveChanges();
//        //}

//        //public void editTes()
//        //{

//        //}
//    }
//}