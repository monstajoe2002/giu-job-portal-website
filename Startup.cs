using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(giu_job_portal_website.Startup))]
namespace giu_job_portal_website
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
