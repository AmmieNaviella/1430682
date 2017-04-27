using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace Website_1430682
{
    public partial class administrator : System.Web.UI.Page
    {
        SqlConnection db;
        SqlCommand comand;

        protected void Page_Load(object sender, EventArgs e)
        {
           
            try
            {
                db = new SqlConnection(ConfigurationManager.ConnectionStrings["db_1430692_etagameConnectionString"].ConnectionString);
                db.Open();
                if (Session["admin"] == null)
                {
                    
                }
                

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }


        protected void btnsave_Click(object sender, EventArgs e)
        {
            {
                string filename = "";
                string imagepath = "";
                try
                {


                    if (pimage.HasFile)
                    {

                        imagepath = Path.GetExtension(pimage.FileName);
                        filename = txttitle.Text + imagepath;
                    }
                    else
                    {
                        filename = "";
                    }

                    if (productexists(txttitle.Text) == false)
                    {
                        String query = "INSERT INTO tblProductGame (name_game,game_cat,Price,Quantity,";
                        query += "Description,image)";
                        query += " VALUES ('" + txttitle.Text + "','" + ddcat.SelectedItem.ToString() + "'";
                        query += "" + txtprice.Text + "," + txtqty.Text + "'";
                        query += "" + txtdescription.Text + "','" + filename + "'";

                        pimage.SaveAs(Server.MapPath("/images/products/") + filename);

                        SqlCommand com = new SqlCommand(query, db);
                        com.ExecuteNonQuery();
                        litmessage.Text = "Product Added";
                        Clear();
                    }
                    else
                    {
                        litmessage.Text = "Product name already exists";
                        txttitle.BackColor = System.Drawing.Color.Red;
                        txttitle.Focus();
                    }
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }

            }
        }


        protected Boolean productexists(string product)
        {
            Boolean flag = true;
            try
            {
                String query = "SELECT COUNT(*) FROM tblProductGame WHERE name_game='" + product + "'";
                SqlCommand com = new SqlCommand(query, db);
                int count = Convert.ToInt32(com.ExecuteScalar().ToString());

                if (count == 0)
                {
                    flag = false;
                }
                return flag;
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);

                return flag;
            }
        }

        protected void Clear()
        {
            txtdescription.Text = "";
            txttitle.Text = "";
            txtprice.Text = "0";
            txtqty.Text = "0";


        }
    }
}