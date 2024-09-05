using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BussinesLogicLayer;

namespace InternshipFinalProject
{
    public partial class SignUp : System.Web.UI.Page
    {
        //SQL Data Base Connection Created
        SqlConnection connect = new SqlConnection(@"Data Source=LAPTOP-28STMO59;Initial Catalog=InternshipProject2022;Persist Security Info=True;User ID=SA;Password=Aariyan@77630");


        /// <summary>
        /// The Function is called Automatically when ever the Page is Reloaded
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        /// <summary>
        /// Save Client Data to the Data Base on clicking of the submit Button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Submit_Click(object sender, EventArgs e)
        {
            String FirstName, LastName, UserName, Password, ConfirmPassword, MoblieNumber, Address;
            FirstName = Firstname.Text.ToString();
            LastName = Lastname.Text.ToString();
            UserName = Username.Text.ToString();
            Password = password.Text.ToString();
            ConfirmPassword = confirmpassword.Text.ToString();
            MoblieNumber = phonenumber.Text.ToString();
            Address = address.Text.ToString();
            BLL bll = new BLL();
            bll.InsertData(FirstName, LastName, UserName, Password, ConfirmPassword, MoblieNumber, Address);
            Firstname.Text = "";
            Lastname.Text = "";
            Username.Text = "";
            password.Text = "";
            confirmpassword.Text = "";
            phonenumber.Text = "";
            address.Text = "";
        }
    }
}