using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;
using System.Data.SqlClient;
using System.Configuration;


namespace Website_1430682
{


    public partial class Login : System.Web.UI.Page
    {
        SqlConnection db;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                db = new SqlConnection(ConfigurationManager.ConnectionStrings["db_1430692_etagameConnectionString"].ConnectionString);
                db.Open();
                load_products();




            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }



        protected void load_products()
        {
            try
            {
                string query = "SELECT * FROM tblProductGame ORDER BY Id DESC";
                SqlCommand com = new SqlCommand(query, db);
                SqlDataReader rd = com.ExecuteReader();

                Literal2.Text = "<ul>";

                while (rd.Read())
                {
                    Literal2.Text += "<li>";
                    Literal2.Text += "<ul>";
                    Literal2.Text += "<li>" + rd[1].ToString() + "</li>";
                    Literal2.Text += "<li><img src='/Images/products/" + rd[10].ToString() + "' alt='img' /></li>";
                    Literal2.Text += "<li>" + rd[5].ToString() + "</li>";
                    Literal2.Text += "<li>" + rd[6].ToString() + "</li>";
                    Literal2.Text += "</ul>";
                    Literal2.Text += "</li>";

                }
                Literal2.Text += "</ul>";
                rd.Close();
                com.Dispose();
            }

            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }


        }


        protected void btnlogin_Click(object sender, EventArgs e)

        {
            if (loginuser.Text.Equals("administrator") == false)
            {
                try
                {

                    String query = "SELECT COUNT(*) FROM tblLogin WHERE username='" + loginuser.Text + "' AND password='" + loginpassword.Text + "'";
                    SqlCommand com = new SqlCommand(query, db);
                    int result = Convert.ToInt32(com.ExecuteScalar().ToString());

                    if (result != 0)
                    {

                        Session["user"] = loginuser.Text;
                        Response.Redirect("Contact.aspx");

                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid username or password, Please check.')</script>");
                    }

                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }

            }
            else
            {
                if (loginuser.Text.Equals("admin@afrina") && loginpassword.Text.Equals("admin@afrina"))
                {
                    Session["admin"] = "admin@afrina";
                    Response.Redirect("default.aspx");

                }
            }
        }
    }
}
    
