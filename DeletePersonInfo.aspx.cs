using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DeletePersonInfo : System.Web.UI.Page
{
    PersonInfo _PersonInfo;
    MyFamilyDatabaseDataContext _db;
    protected void Page_Load(object sender, EventArgs e)
    {
        _db = new MyFamilyDatabaseDataContext();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        PopulatePersonInfo();
        if (_PersonInfo != null)
        {
            _db.PersonInfos.DeleteOnSubmit(_PersonInfo);
            try
            {
                _db.SubmitChanges();
                Response.Write("Deleted PersonInfo");
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
        else
        {
            Response.Write("_PersonInfo is null");
        }
    }
    
    protected void Button2_Click(object sender, EventArgs e)
    {
        PopulatePersonInfo();
        if (_PersonInfo != null)
        {
            txtPersonId.Text = _PersonInfo.PersonID.ToString();
            txtGender.Text = _PersonInfo.Gender;
            //personInfo.OccupationID = txtOccupationId.Text
            txtContact.Text = _PersonInfo.Contact;
            txtDOB.Text = _PersonInfo.DOB != null ? _PersonInfo.DOB.ToString() : string.Empty;
            txtPlaceOfBirth.Text = _PersonInfo.PlaceOfBirth;
            txtPrimaryEmail.Text = _PersonInfo.PrimaryEmail;
            txtSecondaryEmail.Text = _PersonInfo.SecondaryEmail;
            txtAboutMe.Text = _PersonInfo.AboutMe;
            txtSpouseID.Text = (_PersonInfo.SpouseID != null && _PersonInfo.SpouseID != 0)? _PersonInfo.SpouseID.ToString() : string.Empty;
            txtFatherID.Text = (_PersonInfo.FatherID != null && _PersonInfo.FatherID != 0) ? _PersonInfo.FatherID.ToString() : string.Empty;
            _PersonInfo.UserName = _PersonInfo.FullName;
            _PersonInfo.Password = _PersonInfo.FullName;
        }
        else
        {
            Response.Write("Unable to find person");
        }
    }

    private void PopulatePersonInfo()
    {
        _PersonInfo = _db.PersonInfos.Where(p => p.PersonID == Convert.ToInt32(txtPersonId.Text)).FirstOrDefault();
    }
}
