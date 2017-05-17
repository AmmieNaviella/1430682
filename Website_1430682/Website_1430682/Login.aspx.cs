using System;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

namespace Website_1430682
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUser_Click(object sender, EventArgs e)
        {
            UserStore<IdentityUser> userStore = new UserStore<IdentityUser>();
            userStore.Context.Database.Connection.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["db_1430692_etagameConnectionString"].ConnectionString;

            UserManager<IdentityUser> manager = new UserManager<IdentityUser>(userStore);

            var user = manager.Find(txtUserName.Text, txtPassword.Text);

            if (user != null)
                {

                //call owin functionality
                var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                var userIdentity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

                //sign in user
                authenticationManager.SignIn(new AuthenticationProperties
                {
                    IsPersistent = false
                }, userIdentity);

                //Redirect user to productpage
                Response.Redirect("Default.aspx");
            }
            else
            {
                litStatus.Text = "Invalid username or password";
            }
        }

        protected void btnAdmin_Click(object sender, EventArgs e)
        {
            UserStore<IdentityUser> userStore = new UserStore<IdentityUser>();
            userStore.Context.Database.Connection.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["db_1430692_etagameConnectionString"].ConnectionString;

            UserManager<IdentityUser> manager = new UserManager<IdentityUser>(userStore);

            var Admin = manager.Find(txtUserName.Text, txtPassword.Text);

            if (Admin != null)
            {
                //Call owin functionality
                var authenticatonManager = HttpContext.Current.GetOwinContext().Authentication;
                var userIdentity = manager.CreateIdentity(Admin, DefaultAuthenticationTypes.ApplicationCookie);

                //signin user
                authenticatonManager.SignIn(new AuthenticationProperties
                {
                    IsPersistent = false
                }, userIdentity);

               // redirect user to administartorpage
                Response.Redirect("administrator.aspx");
                    
            }
            else
            {
                litStatus.Text = "Invalid username or password";
            }
        }
    }
}