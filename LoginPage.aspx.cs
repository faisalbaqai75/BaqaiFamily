using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LoginPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ViewState["GoBackTo"] = Request.UrlReferrer;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        using (MyFamilyDatabaseDataContext db = new MyFamilyDatabaseDataContext())
        {
            string uName = TextBox1.Text;
            string uPwd = TextBox2.Text;

            PersonInfo pInfo = db.PersonInfos.Where(p => p.UserName.ToLower() == uName.ToLower()
                && p.Password == uPwd).FirstOrDefault();

            if (pInfo != null)
            {
                Session["LogedInUserInfo"] = pInfo;
                
                //Send back to the page where user came from. If user directly landed to this page, send to Default.aspx
                if (ViewState["GoBackTo"] != null)
                    Response.Redirect(ViewState["GoBackTo"].ToString());
                else
                    Response.Redirect("./Default.aspx");
            }
            else
            {
                Session["LogedInUserInfo"] = null;
                
                Response.Write("Invalid UserName or Password");
            }
          
        }
    }
}
