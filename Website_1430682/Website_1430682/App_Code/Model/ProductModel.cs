using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Website_1430682.App_Code.Model
{
    public class ProductModel
    {
        public string InsertProduct(Product product)
        {
            try
            {
                ETAGAMEEntities1 db = new ETAGAMEEntities1();
                db.Products.Add(product);
                db.SaveChanges();

                return product.Name + "Successfully inserted";
            }
            catch (Exception e)
            {

                return "Error:" + e;
            }
        }

        public string Updateproduct(int id, Product product)
        {
            try
            {
                ETAGAMEEntities1 db = new ETAGAMEEntities1();

                Product p = db.Products.Find(id);

                p.Name = product.Name;
                p.Price = product.Price;
                p.TypeId = product.TypeId;
                p.Description = product.Description;
                p.Image = product.Image;

                db.SaveChanges();
                return product.Name + "Successfully Updated";
            }
            catch (Exception e)
            {

                return "Error:" + e;
            }
        }

        public string DeleteProduct(int id)
        {
            try
            {
                ETAGAMEEntities1 db = new ETAGAMEEntities1();
                Product product = db.Products.Find(id);

                db.Products.Attach(product);
                db.Products.Remove(product);
                db.SaveChanges();

                return product.Name + "Successfully Deleted";
            }
            catch (Exception e)
            {

                return "Error:" + e;
            }
        }
    }
}