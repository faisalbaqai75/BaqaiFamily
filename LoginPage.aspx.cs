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
