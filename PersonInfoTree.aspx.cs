﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PersonInfoTree : System.Web.UI.Page
{
    public MyFamilyDatabaseDataContext _db;
    public PersonInfo _PersonInfo;
    public PersonInfo _LogedInUserInfo;
    protected void Page_Load(object sender, EventArgs e)
    {
        _db = new MyFamilyDatabaseDataContext();
        
        int id;
        if (!int.TryParse(Request["PersonID"], out id))
            id = 9;

        _PersonInfo = _db.PersonInfos.Where(p => p.PersonID == id).FirstOrDefault();

        _LogedInUserInfo = Session["LogedInUserInfo"] as PersonInfo;
        if (_LogedInUserInfo != null)
        {
            lblLogin.Text = string.Format("Welcome <a href='./PersonInfo.aspx?PersonID={0}'>{1}</a>", _LogedInUserInfo.PersonID, _LogedInUserInfo.FullName);
        }
        else
        {
            lblLogin.Text = "<a href='./LoginPage.aspx'>Login</a>";
        }
    }
    
    
}