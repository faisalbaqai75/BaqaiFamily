using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class InvalidSpouse : System.Web.UI.Page
{
    protected MyFamilyDatabaseDataContext _db;

    protected void Page_Load(object sender, EventArgs e)
    {
        _db = new MyFamilyDatabaseDataContext();
        foreach (PersonInfo personInfo in _db.PersonInfos.Where(p => p.PersonID !=0) )
        {
            if (personInfo.SpouseID != null && personInfo.SpouseID != 0)
            {
                PersonInfo spouse = _db.PersonInfos.Where(p => p.PersonID == personInfo.SpouseID).FirstOrDefault();
                if (spouse == null)
                {
                    ExtMethods.WriteLine(Response, "Spouse not found: " + personInfo.SpouseID);
                }
                else
                {
                    if (personInfo.PersonID != spouse.SpouseID)
                    {
                        ExtMethods.WriteLine(Response, string.Format("Spouse Mismatch: PersonId={0}, Person.SpouseID={1}, Spouse.SpouseID={2}", personInfo.PersonID, personInfo.SpouseID, spouse.SpouseID));
                    }
                }
            }
        }
    }

    protected override void OnUnload(EventArgs e)
    {
        if (_db != null)
        {
            _db.Dispose();
            _db = null;
        }
    }
}
