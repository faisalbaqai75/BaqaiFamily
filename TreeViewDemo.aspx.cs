using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class TreeViewDemo : System.Web.UI.Page
{
    public MyFamilyDatabaseDataContext db;
    protected void Page_Load(object sender, EventArgs e)
    {
        db = new MyFamilyDatabaseDataContext();

        TreeView1.Nodes.Clear();

        TreeNode rootNode = new TreeNode();
        rootNode.Value = "-1";
        rootNode.Text = "Baqai Family";
        rootNode.SelectAction = TreeNodeSelectAction.Expand;
        

        TreeView1.Nodes.Add(rootNode);
        
        var allMale = db.PersonInfos.Where(p => p.PersonID != 0 && (p.FatherID == null || p.FatherID == 0) && p.Gender == "Male" && p.FullName.Contains("Baqai")).OrderBy(o => o.FullName);
        foreach (PersonInfo male in allMale)
        {

            TreeNode childNode = new TreeNode();
            childNode.Text = male.FullName;
            childNode.Value = male.PersonID.ToString();
            childNode.SelectAction = TreeNodeSelectAction.Expand;
            childNode.Text = string.Format("<a href='/PersonInfo.aspx?PersonID={0}'>{1}</a>", male.PersonID, male.FullName);
            rootNode.ChildNodes.Add(childNode);

            PopulateChildren(childNode, male);
        }
    }

    protected override void OnUnload(EventArgs e)
    {
        if (db != null)
            db.Dispose();
            
    }

    protected void TreeView1_TreeNodePopulate(object sender, TreeNodeEventArgs e)
    {

    }

    void PopulateChildren(TreeNode personNode, PersonInfo person)
    {
        if (person != null && person.PersonID != 0 && person.Children.Count > 0)
        {
            foreach (PersonInfo child in person.Children.OrderBy( o=> o.FullName))
            {
                TreeNode childNode = new TreeNode();
                childNode.Text = string.Format("<a href='/PersonInfo.aspx?PersonID={0}'>{1}</a>", child.PersonID, child.FullName);
                childNode.Value = child.PersonID.ToString();
                childNode.SelectAction = TreeNodeSelectAction.Expand;
                personNode.ChildNodes.Add(childNode);

                PopulateChildren(childNode, child);

            }
        }
    }
   
}