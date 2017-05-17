using System;
using System.Collections.Generic;
using Microsoft.AspNet.Identity;
using Models;

namespace Website_1430682
{
    public partial class success : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<ShoppingCart> shoppingcarts = (List<ShoppingCart>)Session[User.Identity.GetUserId()];

            ShopCartModel model = new ShopCartModel();
            model.MarkOrdersAsPaid(shoppingcarts);

            Session[User.Identity.GetUserId()] = null;
        }
    }
}