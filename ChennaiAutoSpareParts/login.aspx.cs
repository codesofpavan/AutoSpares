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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signin_Click1(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(@"data source=SAI\SQLEXPRESS;initial catalog=SpareParts;integrated security=True;"))
                {
                    con.Open();
                    string qry = "select * from customer where username='" + uname.Text + "' and password='" + pwd.Text + "'";
                    SqlCommand cmd = new SqlCommand(qry, con);
                    SqlDataReader sdr = cmd.ExecuteReader();
                    if (sdr.Read())
                    {
                        Response.Write("<script> alert('login success'</script>");
                        Response.Redirect("HomePage.aspx");
                    }
                    else
                    {
                        Response.Redirect("register.aspx");
                    }
                    con.Close();
                }

            }
            catch (Exception ex)
            {
                Response.Write("Error " + ex.Message);
            }
        }
    }
}