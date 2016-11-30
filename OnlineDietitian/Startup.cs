using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(OnlineDietitian.Startup))]
namespace OnlineDietitian
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
