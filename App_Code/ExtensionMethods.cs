using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
using System.Net;

partial class PersonInfo
{
    public PersonInfo Mother
    {
        get
        {
            if (this.FatherID == null || this.FatherID == 0) return null;

            if (this.Father.SpouseID == null || this.Father.SpouseID == 0) return null;

            return this.Father.Spouse;
        }
    }

    public IEnumerable<PersonInfo> Siblings
    {
        get
        {
            if (this.FatherID == null || this.FatherID == 0) return null;

            return this.Father.Children.Where(p => p.PersonID != this.PersonID).OrderBy(o => o.FullName);
        }
    }

    /// <summary>
    /// This will return all children for both Mother or Father while 'Children'
    /// property will just return children of a Father.
    /// </summary>
    public IEnumerable<PersonInfo> AllChildren
    {
        get
        {
            if (this.Gender == "Male") return this.Children;

            if (this.SpouseID == null || this.SpouseID == 0) return null;

            return this.Spouse.Children.OrderBy(o => o.FullName);
        }
    }
}

public static class ExtMethods
{
    public static string Bold(string str)
    {
        return "<b>" + str + "</b>";
    }

    public static string Underline(string str)
    {
        return "<u>" + str + "</u>";
    }

    public static string Hyperlink(string text, string link)
    {
        //<a href='FamilyTree.aspx'>text</a>
        return "<a href='" + link + "'>" + text + "</a>";
    }

    public static void WriteLine(HttpResponse response)
    {
        response.Write("<br/>");
    }

    public static void WriteLine(HttpResponse response, string str)
    {
        response.Write(str);
        WriteLine(response);
    }

    public static void WritePersonTree(PersonInfo person, HttpResponse Response)
    {
        Response.Write("<li>");
        Response.Write(Hyperlink(person.FullName, "./PersonInfo.aspx?PersonID=" + person.PersonID));
        Response.Write("</li>");
        if (person.AllChildren != null)
        {
            foreach (var child in person.AllChildren)
            {
                Response.Write("<ul>");
                WritePersonTree(child, Response);//, depth + 1);
                Response.Write("</ul>");
            }
        }
    }

    //static void WritePersonTree(PersonInfo person, HttpResponse Response, int depth)
    //{
    //}

    public static void WriteFatherChain(PersonInfo person, HttpResponse Response)
    {
        if (person == null) return;

        Response.Write("<li>");
        Response.Write(Hyperlink(person.FullName, "./PersonInfo.aspx?PersonID=" + person.PersonID));
        Response.Write("</li>");

        if (person.FatherID != null && person.FatherID != 0)
        {
            Response.Write("<ul>");
            WriteFatherChain(person.Father, Response);
            Response.Write("</ul>");
        }
    }

    public static bool SendUpdateEmail(PersonInfo personInfo)
    {
        if (personInfo == null) return false;

        string messageBody = SerializeObject(personInfo);

        return SendEmail(personInfo.FullName + " updated on BaqaiFamilyy", messageBody, "fbaqai@hotmail.com", personInfo);

    }

    public static string SerializeObject(PersonInfo personInfo)
    {
        string serializedObject =
            "PersonID:" + personInfo.PersonID + "\r\n" +
            "FirstName:" + personInfo.FirstName + "\r\n" +
            "MiddleName:" + personInfo.MiddleName + "\r\n" +
            "LastName:" + personInfo.LastName + "\r\n" +
            "Gender:" + personInfo.Gender + "\r\n" +
            "OccupationID:" + personInfo.OccupationID + "\r\n" +
            "Contact:" + personInfo.Contact + "\r\n" +
            "DOB:" + personInfo.DOB + "\r\n" +
            "PlaceOfBirth:" + personInfo.PlaceOfBirth + "\r\n" +
            "PrimaryEmail:" + personInfo.PrimaryEmail + "\r\n" +
            "SecondaryEmail:" + personInfo.SecondaryEmail + "\r\n" +
            "AboutMe:" + personInfo.AboutMe + "\r\n" +
            "SpouseID:" + personInfo.SpouseID + "\r\n" +
            "FatherID:" + personInfo.FatherID + "\r\n" +
            "UserName:" + personInfo.UserName + "\r\n" +
            "Password:" + personInfo.Password + "\r\n" +
            "ShowDOB:" + personInfo.ShowDOB + "\r\n" +
            "ManagedBy:" + personInfo.ManagedBy + "\r\n" +
            "FullName:" + personInfo.FullName + "\r\n";

        return serializedObject;
    }

    public static bool SendAddEmail(PersonInfo personInfo)
    {
        if (personInfo == null) return false;
        //Deserialize for future use.
        string messageBody = SerializeObject(personInfo);
           

        return SendEmail(personInfo.FullName + " added on BaqaiFamily", messageBody, "fbaqai@hotmail.com", personInfo);
    }

    public static bool SendPasswordEmail(PersonInfo personInfo)
    {
        string body = string.Format("Your UserName is {0}. \r\n Your Password is {1}. \r\n Your PersonID = {2}", personInfo.UserName, personInfo.Password, personInfo.PersonID);
        return SendEmail("Your password on BaqaiFamily website", body, personInfo.PrimaryEmail, personInfo);
    }

    public static bool SendEmail(string subject, string body, string emailTo, PersonInfo personInfo)
    {
        return true;
        try
        {
            MailMessage mail = new MailMessage();
            //SmtpClient smtpClient = new SmtpClient("relay-hosting.secureserver.net");
            SmtpClient smtpClient = new SmtpClient
            {
                Host = "smtp.gmail.com",
                Port = 587,
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                UseDefaultCredentials = false,
            };

            smtpClient.Credentials = new NetworkCredential("faisalbaqai@gmail.com", "<Password>");

            mail.From = new MailAddress("faisalbaqai@gmail.com");
            mail.To.Add(emailTo);
            mail.Subject = subject;
            mail.Body = body;

            //smtpClient.Port = 587;
            //smtpClient.Credentials = new System.Net.NetworkCredential("username", "password");
            //smtpClient.EnableSsl = true;

            smtpClient.Send(mail);
            return true;
        }
        catch (Exception e)
        {
            return false;
        }
    }
    public static bool SendEmail(string subject, PersonInfo personInfo)
    {
        return SendEmail(subject, subject, "fbaqai@hotmail.com", personInfo);
    }
}

