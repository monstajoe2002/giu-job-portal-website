using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace giu_job_portal_website
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddPhoneNum_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddPhoneNum.aspx");
        }

        protected void ViewAppStats_Click(object sender, EventArgs e)
        {

        }
    }
}