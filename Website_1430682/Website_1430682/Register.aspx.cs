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
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection db;
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                db = new SqlConnection(ConfigurationManager.ConnectionStrings["db_1430692_etagameConnectionString"].ConnectionString);
                db.Open();



            }

            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }

        protected void regbtn_Click(object sender, EventArgs e)
        {

            {

                try
                {
                    if (userexists(txtusername.Text) == false)
                    {
                        string datenow = DateTime.Now.ToString();
                        string filetype = Path.GetExtension(FileUpload1.FileName);
                        string path = "";
                        if (FileUpload1.HasFile)
                        {
                            FileUpload1.SaveAs(Server.MapPath("/Images/members/") + txtusername.Text + filetype);
                            path = "/Images/members/" + txtusername.Text + filetype;
                        }
                        else
                        {
                            path = "/Images/members/no-image.png";
                        }

                        String query = "INSERT INTO tblRegister (Username,Password,Firstname,Lastname,Email";
                        query += "dateadded,imagepath) VALUES('" + txtusername.Text + "','" + txtpassword.Text + "','";
                        query += "'" + txtfirstname.Text + "','" + txtlastname.Text + "','" + txtemail.Text + "','";


                        SqlCommand com = new SqlCommand(query, db);
                        com.ExecuteNonQuery();
                        com.Dispose();
                        Literal1.Text = "Member successfully added!.please proceed to login";

                    }
                    else
                    {
                        Literal1.Text = "Username already taken! choose a different username";
                        txtusername.Focus();
                        txtusername.BackColor = System.Drawing.Color.Red;
                    }
                }
                catch (Exception ex)
                {
                    Literal1.Text = ex.Message;
                }
            }
        }

        protected Boolean userexists(String user)
        {
            String query = "SELECT COUNT(*) FROM tblRegister WHERE Username='" + user + "'";
            SqlCommand com = new SqlCommand(query, db);
            int count = Convert.ToInt32(com.ExecuteScalar().ToString());

            if (count != 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }


    }
}