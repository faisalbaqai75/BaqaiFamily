using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddPersonInfoPage : System.Web.UI.Page
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

    protected void LinqDataSource1_Inserting(object sender, LinqDataSourceInsertEventArgs e)
    {
        lblErrors.Visible = false;
        PersonInfo p = e.NewObject as PersonInfo;
        if (p == null)
        {
            e.Cancel = true;
            return;
        }

        //TODO: Remove once update DB for First and LastName
        if (string.IsNullOrEmpty(p.FullName))
        {
            e.Cancel = true;
            return;
        }

        p.FirstName = p.LastName = p.FullName;

        /*if (p.SpouseID == 0) p.SpouseID = null;
        if (p.OccupationID == 0) p.OccupationID = null;
        if (p.FatherID == 0) p.Father = null;
        if (p.ManagedBy == 0) p.ManagedBy = null;*/

        using (MyFamilyDatabaseDataContext db = new MyFamilyDatabaseDataContext())
        {
            //Validate if other person's Spouse is not defined.
            PersonInfo spouse = null;
            if (p.SpouseID != null && p.SpouseID != 0)
            {
                spouse = db.PersonInfos.Where(sp => sp.PersonID == p.SpouseID).FirstOrDefault();

                //If Spouse is already married to someone else
                if (spouse.SpouseID != 0 && spouse.SpouseID != null)
                {
                    lblErrors.Text = "Spouse is invalid. <a href='./PersonInfo.aspx?PersonID=" + spouse.PersonID + "'>" + spouse.FullName + "</a> is already married to " + spouse.Spouse.FullName;
                    lblErrors.Visible = true;
                    e.Cancel = true;
                    return;
                }

                //If Spouse gender is same
                if (p.Gender == spouse.Gender)
                {
                    lblErrors.Text = "Spouse is invalid. Both can't have same gender.";
                    lblErrors.Visible = true;
                    e.Cancel = true;
                    return;
                }

            }


            //Get New ID
            int newPersonId = db.PersonInfos.Max(person => person.PersonID) + 1;
            p.PersonID = newPersonId;

        }
    }
    protected void LinqDataSource1_Inserted(object sender, LinqDataSourceStatusEventArgs e)
    {
        PersonInfo p = e.Result as PersonInfo;

        if (p.SpouseID != null && p.SpouseID != 0)
        {
            //Updating SpouseID after submit
            using (MyFamilyDatabaseDataContext db = new MyFamilyDatabaseDataContext())
            {
                PersonInfo spouse = db.PersonInfos.Where(sp => sp.PersonID == p.SpouseID).FirstOrDefault();
                spouse.SpouseID = p.PersonID;
                db.SubmitChanges();
            }
        }

        ExtMethods.SendAddEmail(p);
        Response.Redirect("./PersonInfo.aspx?PersonID=" + p.PersonID);
    }
}
