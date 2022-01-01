using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace giu_job_portal_website
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sign_in_Click(object sender, EventArgs e)
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
            //create a new connection
            SqlConnection connection = new SqlConnection(connectionString);
            string mail = Email.Text;
            string pass = Password.Text;
            SqlCommand loginproc = new SqlCommand("UserLogin", connection);
            loginproc.CommandType = CommandType.StoredProcedure;
            loginproc.Parameters.Add(new SqlParameter("@email", mail));
            loginproc.Parameters.Add(new SqlParameter("@password", pass));
            SqlParameter success = loginproc.Parameters.Add("@success", SqlDbType.Bit);
            SqlParameter id = loginproc.Parameters.Add("@user_id", SqlDbType.Int);
            success.Direction = ParameterDirection.Output;
            id.Direction = ParameterDirection.Output;


            connection.Open();
            loginproc.ExecuteNonQuery();
            connection.Close();

            if (success.Value.ToString()=="True")
            {
                Response.Redirect("Default.aspx");
            }
            else if (success.Value.ToString() == "False")
            {
                Response.Write("Try again!");
            }

        }
    }
}