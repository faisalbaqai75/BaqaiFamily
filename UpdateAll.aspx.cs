using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UpdateAll : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinqDataSource1_Deleting(object sender, LinqDataSourceDeleteEventArgs e)
    {
        lblError.Visible = true;
        PersonInfo p = e.OriginalObject as PersonInfo;

        if (p.PersonID == 0)
        {
            e.Cancel = true;
            return;
        }

        if (p.SpouseID != null && p.SpouseID > 0)
        {
            e.Cancel = true;
            lblError.Text = "Remove Spouse of the person before deleting.";
            return;
        }

        using (MyFamilyDatabaseDataContext db = new MyFamilyDatabaseDataContext())
        {
            PersonInfo spouse = db.PersonInfos.Where(o => o.SpouseID == p.PersonID).FirstOrDefault();
            if (spouse != null && spouse.PersonID != 0)
            {
                e.Cancel = true;
                lblError.Text = "Person is already marked as Spouse for " + spouse.PersonID + ", update Person first.";
                return;
            }
            if (db.PersonInfos.Where(c => c.FatherID == p.PersonID).Count() > 0)
            {
                e.Cancel = true;
                lblError.Text = "Person is already father.";
                return;
            }
        }

    }
}
