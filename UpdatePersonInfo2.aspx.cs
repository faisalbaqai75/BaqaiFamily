using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UpdatePersonInfo2 : System.Web.UI.Page
{
    public PersonInfo _PersonInfo;
    public MyFamilyDatabaseDataContext _db;

    protected void Page_Load(object sender, EventArgs e)
    {
        _db = new MyFamilyDatabaseDataContext();

                int personId;
        if (int.TryParse(Request["PersonId"], out personId) == false)
        {
            Response.Write("Unable to person PersonId");
            return;
        }
        _PersonInfo = _db.PersonInfos.Where(p => p.PersonID == personId).FirstOrDefault();

    }
}
