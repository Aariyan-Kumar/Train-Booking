using System;
using System.Collections;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BussinesLogicLayer;

namespace InternshipFinalProject
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        /// <summary>
        /// Call the Function in the Bussiness Logic Layer to searched the Trains in the given route on Clicking the searched button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void SearchTrain(object sender, EventArgs e)
        {
            String Starts, Ends;
            Starts = From.Text.ToString();
            Ends = To.Text.ToString();
            BLL bll = new BLL();
            ArrayList  TrainList = bll.SearchTrains(Starts, Ends);
            GridViewTrains.DataSource = TrainList;
            GridViewTrains.DataBind();
            GridViewTrains.Font.Size = FontUnit.Large;
            From.Text = "";
            To.Text = "";

        }
    }
}