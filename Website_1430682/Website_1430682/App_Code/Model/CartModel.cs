using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Website_1430682.App_Code.Model
{
    public class CartModel
    {
        public string InsertCart(Cart cart)
        {
            try
            {
                ETAGAMEEntities1 db = new ETAGAMEEntities1();
                db.Carts.Add(cart);
                db.SaveChanges();

                return cart.DatePurchased + "Successfully inserted";
            }
            catch (Exception e)
            {

                return "Error:" + e;
            }
        }

        public string UpdateCart(int id, Cart cart)
        {
            try
            {
                ETAGAMEEntities1 db = new ETAGAMEEntities1();

                Cart p = db.Carts.Find(id);

                p.DatePurchased = cart.DatePurchased;
                p.ClientId = cart.ClientId;
                p.Amount = cart.Amount;
                p.IsInCart = cart.IsInCart;
                p.ProductID = cart.ProductID;

                db.SaveChanges();
                return cart.DatePurchased + "Successfully Updated";
            }
            catch (Exception e)
            {

                return "Error:" + e;
            }
        }

        public string DeleteCart(int id)
        {
            try
            {
                ETAGAMEEntities1 db = new ETAGAMEEntities1();
                Cart cart = db.Carts.Find(id);

                db.Carts.Attach(cart);
                db.Carts.Remove(cart);
                db.SaveChanges();

                return cart.DatePurchased + "Successfully Deleted";
            }
            catch (Exception e)
            {

                return "Error:" + e;
            }
        }
    }
}