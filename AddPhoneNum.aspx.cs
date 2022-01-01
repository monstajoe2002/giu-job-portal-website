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
    public partial class AddPhoneNum : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addBtn_Click(object sender, EventArgs e)
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
            //create a new connection
            SqlConnection connection = new SqlConnection(connectionString);
            
            SqlCommand loginproc = new SqlCommand("UserLogin", connection);
            loginproc.CommandType = CommandType.StoredProcedure;
            int phone = Int32.Parse(phoneNum.Text);
            int id = Int32.Parse(stu_id.Text);
            loginproc.Parameters.Add(new SqlParameter("@sid", id));
            loginproc.Parameters.Add(new SqlParameter("@mobileNumber", phone));
            
            


            connection.Open();
            loginproc.ExecuteNonQuery();
            connection.Close();

           
        }
    }
}