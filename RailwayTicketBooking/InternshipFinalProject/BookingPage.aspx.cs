using BussinesLogicLayer;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Net;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InternshipFinalProject
{
    public partial class SearchedTrains : System.Web.UI.Page
    {
        protected SqlConnection Page_Load(object sender, EventArgs e)
        {
                SqlConnection connect = new SqlConnection(@"Data Source=LAPTOP-28STMO59;Initial Catalog=InternshipProject2022;User ID=sa;Password=Aariyan@77630");

                if (connect.State != ConnectionState.Open)
                {
                    connect.Open();
                }
                return connect;
        }


        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Continue(object sender, EventArgs e)
        {
            String FullName, Age, Gender, MobileNo, PassengerNo;
            FullName = Fullname.Text.ToString();
            Age = age.Text.ToString();
            Gender = gender.Text.ToString();
            MobileNo = phoneno.Text.ToString();
            PassengerNo = passengerno.Text.ToString();
            BLL bll = new BLL();
            bll.TicketDetails(FullName, Age, Gender, MobileNo, PassengerNo);
            Fullname.Text = "";
            age.Text = "";
            gender.Text = "";
            phoneno.Text = "";
            passengerno.Text = "";
            Message.Visible = true;
            Panel2.Visible = true;
            //DisplayTicket();
        }

        /*public void DisplayTicket()
        {

            String mycon = @"Data Source=LAPTOP-28STMO59;Initial Catalog=InternshipProject2022;User ID=sa;Password=Aariyan@77630";
            //query
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand("SELECT * FROM PassengerDetails", con);
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Panel2.Visible = true;
                namelable.Text = ds.Tables[0].Rows[0]["Name"].ToString();
                agelable.Text = ds.Tables[0].Rows[0]["Age"].ToString();
                genderlable.Text = ds.Tables[0].Rows[0]["Gender"].ToString();
                mobilelable.Text = ds.Tables[0].Rows[0]["Mobile No."].ToString();
                passengernolable.Text = ds.Tables[0].Rows[0]["Passenger Details"].ToString();

            }
        }
        */
    }
}