using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Models;

namespace Website_1430682
{
    public partial class gameproduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FillPage();
        }
        private void FillPage()
        {
            //Get a list of all products in DB
            GameProductModel GameproductModel = new GameProductModel();
            List<Product> products = GameproductModel.GetAllProducts();

            //Make sure products exist in the database
            if (products != null)
            {
                //Create a new Panel with an ImageButton and 2 abels for each Product
                foreach (Product product in products)
                {
                    Panel productPanel = new Panel();
                    ImageButton imageButton = new ImageButton();
                    Label lblProductName = new Label();
                    Label lblPrice = new Label();

                    //Set childConrol's properties
                    imageButton.ImageUrl = "~/Images/Products/" + product.Image;
                    imageButton.CssClass = "productImage";
                    imageButton.PostBackUrl = "usermember.aspx?id=" + product.ID_game;

                    lblProductName.Text = product.name_game;
                    lblProductName.CssClass = "GameName";

                    lblPrice.Text = "$" + product.Price;
                    lblPrice.CssClass = "GamePrice";

                    //Add child control to Panel
                    productPanel.Controls.Add(imageButton);
                    productPanel.Controls.Add(new Literal { Text = "<br/>" });
                    productPanel.Controls.Add(lblProductName);
                    productPanel.Controls.Add(new Literal { Text = "<br/>" });
                    productPanel.Controls.Add(lblPrice);

                    //Add dynamic Panels to static Parent panel
                    pnlProducts.Controls.Add(productPanel);
                }
            }
            else
            {
                //No products found
                pnlProducts.Controls.Add(new Literal { Text = "No Game found!" });
            }
        }
    }
}