using System;
using System.Collections;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Security.Policy;

namespace Data_Base_Access_Layer
{
    public class DAL
    {
        /// <summary>
        /// Checks the Connection of Server and if the service of service is closed it opens it
        /// </summary>
        /// <returns></returns>
        public static SqlConnection CheckConnection()
        {
            SqlConnection connect = new SqlConnection(@"Data Source=LAPTOP-28STMO59;Initial Catalog=InternshipProject2022;User ID=sa;Password=Aariyan@77630");

            if (connect.State != ConnectionState.Open)
            {
                connect.Open();
            }
            return connect;
        }

        /// <summary>
        /// Insert Data of the User during Sign Up
        /// </summary>
        /// <param name="FirstName">Contains First Name</param>
        /// <param name="LastName">Contains Last Name</param>
        /// <param name="UserName">Contains User Name</param>
        /// <param name="Password">Contains Password</param>
        /// <param name="ConfirmPassword">Contains Confirm Password</param>
        /// <param name="MoblieNumber">Contains Mobile Number</param>
        /// <param name="Address">Contains Address</param>
        public void InsertData(String FirstName, String LastName, String UserName, String Password, String ConfirmPassword, String MoblieNumber, String Address)
        {
            SqlCommand command = new SqlCommand("InsertCoustmerData", CheckConnection());
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@FirstName", FirstName);
            command.Parameters.AddWithValue("@LastName ", LastName);
            command.Parameters.AddWithValue("@UserName", UserName);
            command.Parameters.AddWithValue("@Password", Password);
            command.Parameters.AddWithValue("@ConfirmPassword", ConfirmPassword);
            command.Parameters.AddWithValue("@MobileNumber", MoblieNumber);
            command.Parameters.AddWithValue("@Address", Address);
            command.ExecuteNonQuery();
        }

        /// <summary>
        /// Shows All the trains Name, number, having starting and ending locations 'like' search data
        /// </summary>
        /// <param name="Starts"></param>
        /// <param name="Ends"></param>
        public ArrayList SearchTrains(String Starts, String Ends)
        {
            ArrayList trains = new ArrayList();
            DataSet records = new DataSet();
            SqlCommand command = new SqlCommand("SearchTrains", CheckConnection());
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add(new SqlParameter("@Starts", Starts));
            command.Parameters.Add(new SqlParameter("@Ends", Ends));
            SqlDataAdapter adapter = new SqlDataAdapter();
            adapter.SelectCommand = command;
            adapter.Fill(records);
            if (records != null && records.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow row in records.Tables[0].Rows)
                {
                    TrainRoute trainRoute = new TrainRoute(row["Train Name"].ToString(), row["Train no#"].ToString(), row["Starts"].ToString(), row["Ends"].ToString());
                    trains.Add(trainRoute);
                }
            }
            return trains;
        }


        /// <summary>
        /// THis Function is Checking the Valid User
        /// </summary>
        /// <param name="EnteredPassword">It contains the password entered in the TextBox</param>
        /// <param name="UserName">It contains the UserName entered in the TextBox</param>
        /// <returns></returns>
        public int LogInValidation(String EnteredPassword, String UserName)
        {
            SqlCommand command = new SqlCommand("ValidUser", CheckConnection());
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@UserName", UserName);
            int UserVisible;
            UserVisible = Convert.ToInt32(command.ExecuteScalar().ToString());
            if (UserVisible == 1)
            {
                SqlCommand Passwordcommand = new SqlCommand("ValidatePassword", CheckConnection());
                Passwordcommand.CommandType = CommandType.StoredProcedure;
                Passwordcommand.Parameters.AddWithValue("@UserName", UserName);
                String Password = Passwordcommand.ExecuteScalar().ToString();
                if(Password == EnteredPassword)
                {
                    return 1;
                }
                else
                {
                    return 0;
                }
            }
            else
            {
                return 0;
            }

        }


        /// <summary>
        /// Add the Details of tickets In the DataBase
        /// </summary>
        /// <param name="FullName"></param>
        /// <param name="Age"></param>
        /// <param name="Gender"></param>
        /// <param name="MobileNo"></param>
        /// <param name="PassengerNo"></param>
        public void TicketDetails(String FullName , String Age, String Gender, String MobileNo, String PassengerNo)
        {
            SqlCommand command = new SqlCommand("InsertPassengerDetails", CheckConnection());
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@FullName", FullName);
            command.Parameters.AddWithValue("@Age ", Age);
            command.Parameters.AddWithValue("@Gender", Gender);
            command.Parameters.AddWithValue("@MobileNo", MobileNo);
            command.Parameters.AddWithValue("@TotalPassenger", PassengerNo);
            command.ExecuteNonQuery();
        }
    }
}
    

