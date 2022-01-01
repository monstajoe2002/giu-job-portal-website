using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace giu_job_portal_website
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void View_Profile_Page(object sender, EventArgs e)
        {
            Response.Redirect("About.aspx");
        }

        protected void ViewJobs_Click(object sender, EventArgs e)
        {
            Response.Redirect("Jobs.aspx");
        }
    }
}