using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Website_1430682.App_Code.Model
{
    public class ProductTypeTypeModel
    {
        public string InsertProductType(ProductType productType)
        {
            try
            {
                ETAGAMEEntities1 db = new ETAGAMEEntities1();
                db.ProductTypes.Add(productType);
                db.SaveChanges();

                return productType.Name + "Successfully inserted";
            }
            catch (Exception e)
            {

                return "Error:" + e;
            }
        }

        public string Updateproduct(int id, ProductType productType)
        {
            try
            {
                ETAGAMEEntities1 db = new ETAGAMEEntities1();

                ProductType p = db.ProductTypes.Find(id);

                p.Name = productType.Name;
               

                db.SaveChanges();
                return productType.Name + "Successfully Updated";
            }
            catch (Exception e)
            {

                return "Error:" + e;
            }
        }

        public string DeleteProductType(int id)
        {
            try
            {
                ETAGAMEEntities1 db = new ETAGAMEEntities1();
                ProductType productType = db.ProductTypes.Find(id);

                db.ProductTypes.Attach(productType);
                db.ProductTypes.Remove(productType);
                db.SaveChanges();

                return productType.Name + "Successfully Deleted";
            }
            catch (Exception e)
            {

                return "Error:" + e;
            }
        }
    }
}