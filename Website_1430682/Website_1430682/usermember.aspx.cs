using System;
using System.Linq;
using Microsoft.AspNet.Identity;
using Models;


namespace Website_1430682
{
    public partial class usermember : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            FillPage();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(Request.QueryString["id"]))
            {
                string CustomerID = Context.User.Identity.GetUserId();

                if (CustomerID != null)
                {

                    int ProductID = Convert.ToInt32(Request.QueryString["id"]);
                    int Amount = Convert.ToInt32(ddlAmount.SelectedValue);

                    ShoppingCart cart = new ShoppingCart
                    {
                        AmountPurchased = Amount,
                        Customer_ID = CustomerID,
                        DatePurchased = DateTime.Now,
                        ProductInCart = true,
                        Product_ID = ProductID,
                    };

                    ShopCartModel model = new ShopCartModel();
                    lblResult.Text = model.InsertShoppingCart(cart);
                }
                else
                {
                    lblResult.Text = "Please log in to order items";
                }
            }
        }

             private void FillPage()
        {
            //Get selected product data
            if (!string.IsNullOrWhiteSpace(Request.QueryString["id"]))
            {
                int id = Convert.ToInt32(Request.QueryString["id"]);
                ProductModel model = new ProductModel();
                Product product = model.GetProduct(id);

                //Fill page with data
                lblTitle.Text = product.Product_Name;
                lblDescription.Text = product.Description;
                lblPrice.Text = "Price per unit:<br/>$ " + product.Price;
                imgProduct.ImageUrl = "~/Images/Brands of Products/" + product.Image;
                lblItemNr.Text = product.Product_ID.ToString();

                //Fill amount list with numbers 1-50
                int[] amount = Enumerable.Range(1, 50).ToArray();
                ddlAmount.DataSource = amount;
                ddlAmount.AppendDataBoundItems = true;
                ddlAmount.DataBind();
            }
        }
    }
}