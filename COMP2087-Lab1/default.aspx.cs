using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COMP2087_Lab1
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        // print the information to the page 
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // print their name
            lblName.Text = "Hello: " + txtName.Text;

            // print their password
            lblPass.Text = "Your password is: " + txtPass.Text;

            // print their address 
            lblAddress.Text = "Your address is: " + txtAddress.Text;

            // print their education level
            lblEducation.Text = "Education: " + rblEducation.SelectedItem.Text;

            // create an if statement for the laptop check box for when it is clicked
            lblLaptop.Text = "";
            if (cbLaptop.Checked)
            {
                lblLaptop.Text = "Has a laptop: True";
            }

            // show the skills they have selected
            lblSkills.Text = "Skills: ";
            foreach(ListItem skill in cblSkills.Items)
            {
                if (skill.Selected)
                {
                    lblSkills.Text = lblSkills.Text + " " + skill.Text;
                }
            }

            // select the province they are from
            lblProvince.Text = "You are from: " + ddlProvince.SelectedItem.Text;
        }
    }
}