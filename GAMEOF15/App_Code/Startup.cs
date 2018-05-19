using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(GAMEOF15.Startup))]
namespace GAMEOF15
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
