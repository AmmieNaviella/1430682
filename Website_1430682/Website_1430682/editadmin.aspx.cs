using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


namespace Website_1430682
{
    public partial class editadmin : System.Web.UI.Page
    {
        string ID_game;
        SqlConnection db;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                db = new SqlConnection(ConfigurationManager.ConnectionStrings["db_1430692_etagameConnectionString"].ConnectionString);
                db.Open();
                if (Session["admin"] == null)
                {
                    Response.Redirect("error.aspx");
                }

                else
                {
                    register.Visible = false;
                    btnDelete.Visible = false;
                    btnEdit.Visible = false;
                }
            }

            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSortEventArgs e)
        {
            
            ID_game = GridView1.Rows[e.NewSelectedIndex].Cells[1].Text;

            btnDelete.Visible = true;
            btnEdit.Visible = true;
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int x = GridView1.SelectedIndex;
            string id = GridView1.Rows[x].Cells[1].Text;
            updateproduct(Convert.ToInt32(id));
        }

        protected void updateproduct(int pno)
        {
            try
            {
                String query = "UPDATE tblProductGame SET productname='" + txtpname.Text + "',productcategory='" + ddcat.SelectedItem.ToString() + "',";
                query += "price=" + txtprice.Text + ",quantity=" + txtqty.Text + "',";
                query += "description1='" + txtd1.Text + "' ";
                query += "WHERE Id=" + pno + "";
                SqlCommand com = new SqlCommand(query, db);
                com.ExecuteNonQuery();
                Response.Redirect("editproduct.aspx");
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
        protected void btnEdit_Click(object sender, EventArgs e)
        {
            register.Visible = true;
            GridView1.Visible = false;
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int x = GridView1.SelectedIndex;
            string id = GridView1.Rows[x].Cells[1].Text;

            try
            {
                String query = "DELETE FROM tblProductGame WHERE ID_game = " + Convert.ToInt32(id) + "";
                SqlCommand com = new SqlCommand(query, db);
                com.ExecuteNonQuery();
                com.Dispose();
                Response.Redirect("editadmin.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            register.Visible = false;
            GridView1.Visible = true;

            int x = GridView1.SelectedIndex;
            string id = GridView1.Rows[x].Cells[1].Text;
            txtpname.Text = GridView1.Rows[x].Cells[2].Text;
            txtprice.Text = GridView1.Rows[x].Cells[4].Text;
            txtqty.Text = GridView1.Rows[x].Cells[5].Text;
            txtd1.Text = GridView1.Rows[x].Cells[8].Text;
            txtd1.Text = GridView1.Rows[x].Cells[9].Text;
            txtd1.Text = GridView1.Rows[x].Cells[10].Text;
        }
    }
}