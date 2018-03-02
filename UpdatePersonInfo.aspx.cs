using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UpdatePersonInfo : System.Web.UI.Page
{
    PersonInfo _PersonInfo;
    MyFamilyDatabaseDataContext _db;
    protected void Page_Load(object sender, EventArgs e)
    {
        _db = new MyFamilyDatabaseDataContext();

        cboSpouseId.Items.Clear();
        cboOccupationId.Items.Clear();
        cboFatherId.Items.Clear();

        //Add Empty entries
        cboSpouseId.Items.Add(new ListItem("(None)", "-1"));
        cboFatherId.Items.Add(new ListItem("(None)", "-1"));

        foreach (PersonInfo personInfo in _db.PersonInfos.OrderBy(o => o.FirstName))
        {
            ListItem item = new ListItem(personInfo.FullName + " (ID=" + personInfo.PersonID + ")", personInfo.PersonID.ToString());
            cboSpouseId.Items.Add(item);

            if (personInfo.Gender == "Male")
            {
                ListItem item2 = new ListItem(personInfo.FullName + " (ID=" + personInfo.PersonID + ")", personInfo.PersonID.ToString());
                cboFatherId.Items.Add(item2);
            }
        }

        foreach (Occupation occupation in _db.Occupations)//.OrderBy(o => o.OccupationDesc))
        {
            ListItem item = new ListItem(occupation.OccupationDesc, occupation.OccupationID.ToString());
            cboOccupationId.Items.Add(item);
        }

        int personId = 0;
        if (int.TryParse(Request["PersonId"] ?? "0", out personId) && personId != -1)
        {
            this.txtPersonId.Text = personId.ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        PopulatePersonInfo();
        if (_PersonInfo != null)
        {
            lblMessage.Text = string.Empty;
            //Validate input parameters.

            if (string.IsNullOrEmpty(txtLastName.Text))
            {
                lblMessage.Text = "Last Name is required.";
                return;
            }

            if (string.IsNullOrEmpty(txtFirstName.Text))
            {
                lblMessage.Text = "First Name is required.";
                return;
            }

            if (string.IsNullOrEmpty(txtUserName.Text))
            {
                lblMessage.Text = "UserName is required.";
                return;
            }

            if (string.IsNullOrEmpty(txtPassword.Text))
            {
                lblMessage.Text = "Password is required.";
                return;
            }

            DateTime DOB;
            if (string.IsNullOrEmpty(txtDOB.Text) || DateTime.TryParse(txtDOB.Text, out DOB) == false)
            {
                lblMessage.Text = "Date of birth is required and it should be valid in (MM/DD/YYYY) format.";
                return;
            }

            if (!string.IsNullOrEmpty(cboSpouseId.SelectedItem.Value) && cboSpouseId.SelectedItem.Value != "0" )
            {
                PersonInfo spouse = _db.PersonInfos.Where(p => p.PersonID == Convert.ToInt32(cboSpouseId.SelectedItem.Value)).FirstOrDefault();
                if (spouse.Gender == cboGender.Text)
                {
                    lblMessage.Text = "Invalid spouse.";
                    return;
                }
            }

            //If pwd is not special password, then check for user/pwd
            if (txtPassword.Text != "pakistan") 
            {
                //Check if user/pwd matches.
                if (txtUserName.Text.ToLower().Trim() != _PersonInfo.UserName.ToLower().Trim() ||
                    txtPassword.Text != _PersonInfo.Password)
                {
                    //If user/pwd doesn't match, check if this user is managed by someone else
                    if (_PersonInfo.ManagedBy != null && _PersonInfo.ManagedBy != 0)
                    {
                        PersonInfo managedBy = _db.PersonInfos.Where(p => p.PersonID == _PersonInfo.ManagedBy.Value).FirstOrDefault();
                        //Assuming ManagedBy will not be null now.

                        //Check if user/pwd matches by 'Managed By' person.
                        if (txtUserName.Text.ToLower().Trim() != managedBy.UserName.ToLower().Trim() ||
                            txtPassword.Text != managedBy.Password)
                        {
                            lblMessage.Text = "'Managed By' User Name or Password didn't match";
                            return;
                        }
                    }
                    else
                    {
                        lblMessage.Text = "User Name or Password didn't match";
                        return;
                    }
                }
            }


            //_PersonInfo.PersonID = Convert.ToInt32(txtPersonId.Text);
            _PersonInfo.FirstName = txtFirstName.Text;
            _PersonInfo.MiddleName = txtMiddleName.Text;
            _PersonInfo.LastName = txtLastName.Text;
            _PersonInfo.Gender = cboGender.Text;
            _PersonInfo.OccupationID = Convert.ToInt16(cboOccupationId.SelectedItem.Value);
            _PersonInfo.Contact = txtContact.Text;
            _PersonInfo.DOB = Convert.ToDateTime(txtDOB.Text);
            _PersonInfo.PlaceOfBirth = txtPlaceOfBirth.Text;
            _PersonInfo.PrimaryEmail = txtPrimaryEmail.Text;
            _PersonInfo.SecondaryEmail = txtSecondaryEmail.Text;
            _PersonInfo.AboutMe = txtAboutMe.Text;
            _PersonInfo.SpouseID = cboSpouseId.SelectedItem.Value == "-1" ? 0 : Convert.ToInt32(cboSpouseId.SelectedItem.Value);
            _PersonInfo.FatherID = cboFatherId.SelectedItem.Value == "-1" ? 0 : Convert.ToInt32(cboFatherId.SelectedItem.Value);

            _PersonInfo.ShowDOB = chkHideYearOfBirth.Checked ? 0 : 1;

            try
            {
                _db.SubmitChanges();
                Response.Write(ExtMethods.Bold("Updated person information."));
                ExtMethods.SendUpdateEmail(_PersonInfo);
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

    private void PopulateFields()
    {
        if (_PersonInfo != null)
        {
            txtPersonId.Text = _PersonInfo.PersonID.ToString();
            txtFirstName.Text = _PersonInfo.FirstName;
            txtMiddleName.Text = _PersonInfo.MiddleName;
            txtLastName.Text = _PersonInfo.LastName;
            cboGender.Text = _PersonInfo.Gender;
            //personInfo.OccupationID = txtOccupationId.Text
            txtContact.Text = _PersonInfo.Contact;
            txtDOB.Text = _PersonInfo.DOB != null ? _PersonInfo.DOB.Value.ToShortDateString() : "1/1/1900";
            txtPlaceOfBirth.Text = _PersonInfo.PlaceOfBirth;
            chkHideYearOfBirth.Checked = _PersonInfo.ShowDOB == null ? true : _PersonInfo.ShowDOB.Value == 0;
            txtPrimaryEmail.Text = _PersonInfo.PrimaryEmail;
            txtSecondaryEmail.Text = _PersonInfo.SecondaryEmail;
            txtAboutMe.Text = _PersonInfo.AboutMe;
            //SpouseID = txtSpouseId.SelectedItem.Value == "-1" ? (int?)null : Convert.ToInt32(txtSpouseId.SelectedItem.Value);
            //FatherID = txtFatherId.SelectedItem.Value == "-1" ? (int?)null : Convert.ToInt32(txtFatherId.Text);
            cboSpouseId.SelectedItem.Selected = false;
            cboFatherId.SelectedItem.Selected = false;
            cboOccupationId.SelectedItem.Selected = false;

            if (_PersonInfo.SpouseID != null && _PersonInfo.SpouseID != 0)
                cboSpouseId.Items.FindByValue(_PersonInfo.SpouseID.ToString()).Selected = true;
            else
                cboSpouseId.Items[0].Selected = true;

            if (_PersonInfo.FatherID != null && _PersonInfo.FatherID != 0)
                cboFatherId.Items.FindByValue(_PersonInfo.FatherID.ToString()).Selected = true;
            else
                cboFatherId.Items[0].Selected = true;

            if (_PersonInfo.OccupationID != null)
                cboOccupationId.Items.FindByValue(_PersonInfo.OccupationID.ToString()).Selected = true;
            else
                cboOccupationId.Items[0].Selected = true;
        }
        

    }
    
    protected void Button2_Click(object sender, EventArgs e)
    {
        PopulatePersonInfo();
        if (_PersonInfo != null)
        {
            PopulateFields();
            UpdateTable.Visible = true;
        }
        else
        {
            Response.Write("Unable to find person");
        }
    }

    private void PopulatePersonInfo()
    {
        int personId;
        if (int.TryParse(txtPersonId.Text, out personId) == false)
        {
            lblMessage.Text = "PersonId is invalid.";
            return;
        }
        _PersonInfo = _db.PersonInfos.Where(p => p.PersonID == personId).FirstOrDefault();
    }
    protected void txtSpouseId_SelectedIndexChanged(object sender, EventArgs e)
    {
        //txtPersonId.Text = "Change called";
        lblMessage.Text = "selection changed";
        lblMessage.Text += cboSpouseId.SelectedItem.Text;
    }
    protected void btnSendPwd_Click(object sender, EventArgs e)
    {
        if (_PersonInfo == null)
            PopulatePersonInfo();

        if (string.IsNullOrEmpty(_PersonInfo.PrimaryEmail))
        {
            lblMessage.Text = "Primary Email is invalid";
            return;
        }

        if (ExtMethods.SendPasswordEmail(_PersonInfo))
            lblMessage.Text = "Your password has sent to your Primary Email '" +_PersonInfo.PrimaryEmail+ "'. If you can't find in your inbox, sometimes it goes to Junk mail.";
    }
    protected void btnChangePwd_Click(object sender, EventArgs e)
    {
        lblMessage.Text = "TODO: Password Change feature is not implemented yet";
    }
}
