using BussinesLogicLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InternshipFinalProject
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }


        /// <summary>
        /// Call the function in Bussiness Logic Layer to Check the valid user on clicking the submit button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Submit_Click(object sender, EventArgs e)     //Function not working
        {
            String  Password;
            String UserName;
            Password = Passwords.Text.ToString();
            UserName = Username.Text.ToString();
            BLL bll = new BLL();
            int result = bll.LogInValidation(Password, UserName);   
            Username.Text = "";
            Passwords.Text = "";
            if(result == 1)
            {
                Session["New"] = Username.Text;
                Response.Redirect("Tickets Booking.aspx");
            }
            else
            {
                InvalidCredentials.Visible = true;
            }
        }
    }
}