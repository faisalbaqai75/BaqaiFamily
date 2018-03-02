using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditPersonInfoPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        PersonInfo pInfo = Session["LogedInUserInfo"] as PersonInfo;
        if (pInfo != null)
        {
            lblLogin.Text = "Welcome " + pInfo.FullName;
        }
        else
        {
            lblLogin.Text = "<a href='./LoginPage.aspx'>Login</a>";
        }

    }
    protected void LinqDataSource1_Updating(object sender, LinqDataSourceUpdateEventArgs e)
    {
        lblError.Visible = true;
        PersonInfo p = e.NewObject as PersonInfo;
        //TODO: Remove once update DB for First and LastName
        if (!string.IsNullOrEmpty(p.FullName))
        {
            p.FirstName = p.LastName = p.FullName;
        }

        /*if (p.SpouseID == 0) p.SpouseID = null;
        if (p.OccupationID == 0) p.OccupationID = null;
        if (p.FatherID == 0) p.Father = null;
        if (p.ManagedBy == 0) p.ManagedBy = null;*/

        using (MyFamilyDatabaseDataContext db = new MyFamilyDatabaseDataContext())
        {

            //Validate if other person's Spouse is not someone else
            PersonInfo spouse = null;
            if (p.SpouseID != null && p.SpouseID != 0)
            {
                spouse = db.PersonInfos.Where(sp => sp.PersonID == p.SpouseID).FirstOrDefault();

                //If Spouse is already married to someone else
                if (spouse.SpouseID != 0 && spouse.SpouseID != null && spouse.SpouseID != p.PersonID)
                {
                    lblError.Text = "Spouse is invalid. <a href='./PersonInfo.aspx?PersonID=" + spouse.PersonID + "'>" + spouse.FullName + "</a> is already married to " + spouse.Spouse.FullName;
                    lblError.Visible = true;
                    e.Cancel = true;
                    return;
                }

                //If Spouse gender is same
                if (p.Gender == spouse.Gender)
                {
                    lblError.Text = "Spouse is invalid. Both can't have same gender.";
                    lblError.Visible = true;
                    e.Cancel = true;
                    return;
                }

            }
        }
    }
    protected void LinqDataSource1_Updated(object sender, LinqDataSourceStatusEventArgs e)
    {
        PersonInfo p = e.Result as PersonInfo;

        if (p != null)
        {
            ExtMethods.SendUpdateEmail(p);
        }

        Response.Redirect("./PersonInfo.aspx?PersonID=" + p.PersonID);
    }

}
