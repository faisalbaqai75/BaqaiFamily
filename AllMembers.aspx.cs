using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.ComponentModel;
using System.Data;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Linq.Expressions;
using System.Reflection;


public partial class AllMembers : System.Web.UI.Page
{
    protected MyFamilyDatabaseDataContext _db;
    public short? _OccupationId = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        _db = new MyFamilyDatabaseDataContext();
        //_db.DeferredLoadingEnabled = true;
        //_db.Log = Response.Output;

        short occId = -1;
        if (!short.TryParse(Request["OccupationId"] ?? "-1", out occId))
            _OccupationId = null;
        else
            _OccupationId = occId;

        PersonInfo pInfo = Session["LogedInUserInfo"] as PersonInfo;
        if (pInfo != null)
        {
            lblLogin.Text = string.Format("Welcome <a href='./PersonInfo.aspx?PersonID={0}'>{1}</a>", pInfo.PersonID, pInfo.FullName);
        }
        else
        {
            lblLogin.Text = "<a href='./LoginPage.aspx'>Login</a>";
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
