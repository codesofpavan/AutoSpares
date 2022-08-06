using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace ChennaiAutoSpareParts
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void signup_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(@"data source=SAI\SQLEXPRESS;initial catalog=SpareParts;integrated security=True;"))
                {
                    con.Open();
                    string qry = "insert into customer values(@username,@email,@mobilenumber,@password)";
                    SqlCommand cmd = new SqlCommand(qry, con);
                    cmd.Parameters.AddWithValue("username", uname.Text);
                    cmd.Parameters.AddWithValue("password", pwd.Text);
                    cmd.Parameters.AddWithValue("email", email.Text);
                    cmd.Parameters.AddWithValue("mobilenumber", mobnum.Text);
                    cmd.ExecuteNonQuery();

                    uname.Text = "";
                    pwd.Text = "";
                    email.Text = "";
                    mobnum.Text = "";
                    uname.Focus();
                    Response.Redirect("login.aspx");
                }

            }
            catch (Exception ex)
            {
                Response.Write("Error " + ex.Message);
            }
        }
    }
}