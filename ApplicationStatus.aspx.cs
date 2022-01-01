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
    public partial class ApplicationStatus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void view_btn_Click(object sender, EventArgs e)
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
            //create a new connection
            SqlConnection connection = new SqlConnection(connectionString);
            string StudentID = sID.Text;
            string JobID = jID.Text;
            SqlCommand viewstats = new SqlCommand("ViewMyStatus", connection);
            viewstats.CommandType = CommandType.StoredProcedure;
            viewstats.Parameters.Add(new SqlParameter("@sid", StudentID));
            viewstats.Parameters.Add(new SqlParameter("@job_id", JobID));
            SqlParameter AppStatus = viewstats.Parameters.Add("@application_status", SqlDbType.VarChar,20);
            
            AppStatus.Direction = ParameterDirection.Output;
            connection.Open();
            //viewstats.ExecuteNonQuery();
            connection.Close();
            
            
        }
    }
}