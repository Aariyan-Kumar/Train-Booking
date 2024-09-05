using System;
using System.Collections;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Text;
using System.Threading.Tasks;
using Data_Base_Access_Layer;

namespace BussinesLogicLayer
{
    public class BLL
    {
        //Object of the DataBaseLayer Class Is Created
        DAL dAL = new DAL();


        /// <summary>
        /// Calling the Function in DataBase Layer Function to insert Data in DataBase
        /// </summary>
        /// <param name="FirstName"></param>
        /// <param name="LastName"></param>
        /// <param name="UserName"></param>
        /// <param name="Password"></param>
        /// <param name="ConfirmPassword"></param>
        /// <param name="MoblieNumber"></param>
        /// <param name="Address"></param>
        public void InsertData(String FirstName, String LastName, String UserName, String Password, String ConfirmPassword, String MoblieNumber, String Address)
        {
            dAL.InsertData(FirstName, LastName, UserName, Password, ConfirmPassword, MoblieNumber, Address);
        }


        /// <summary>
        /// Calling the Function Searched Trains in the DataBase Layer for searching the trains and return the ArrayList
        /// </summary>
        /// <param name="Starts"></param>
        /// <param name="Ends"></param>
        /// <returns></returns>
        public ArrayList SearchTrains(String Starts, String Ends)
        {
            ArrayList TrainList = new ArrayList();
            TrainList = dAL.SearchTrains(Starts, Ends);
            return TrainList;
        }


        /// <summary>
        /// Calling the Function LogInValid for Checking the Valid user or not and Return the value 1 if present else return 0
        /// </summary>
        /// <param name="EnteredPassword"></param>
        /// <param name="UserName"></param>
        /// <returns></returns>
        public int LogInValidation(String EnteredPassword, String UserName)
        {
            int flag;
            flag = dAL.LogInValidation(EnteredPassword, UserName);
            return flag;
        }

        /// <summary>
        /// Call the function in the DataBaseLogic Layer TicketDetails
        /// </summary>
        /// <param name="FullName"></param>
        /// <param name="Age"></param>
        /// <param name="Gender"></param>
        /// <param name="MobileNo"></param>
        /// <param name="PassengerNo"></param>
        public void TicketDetails(String FullName, String Age, String Gender, String MobileNo, String PassengerNo)
        {
            dAL.TicketDetails(FullName, Age, Gender, MobileNo, PassengerNo);
        }
    }
}
