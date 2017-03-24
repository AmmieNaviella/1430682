using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Website_1430682.Pages.Administrator
{
    public partial class ManageProductTypes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            ProductTypeModel model = new ProductTypeModel();
            ProductType pt = createProductType();

            lblResult.Text = model.InsertProductType(pt);
        }

        private ProductType createProductType()
        {
            ProductType p = new ProductType();
            p.Name = txtname.Text;

            return p;
        }
    }
}