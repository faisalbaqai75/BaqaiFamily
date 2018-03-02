using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddNewOccupation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtOccupation.Text))
        {
            Response.Write("Occupation can't be empty");
            return;
        }

        try
        {
            using (MyFamilyDatabaseDataContext db = new MyFamilyDatabaseDataContext())
            {
                Occupation occupation = new Occupation();
                occupation.OccupationDesc = txtOccupation.Text;
                db.Occupations.InsertOnSubmit(occupation);
                db.SubmitChanges();
                Response.Write("New occupation inserted");
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}
