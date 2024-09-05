using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data_Base_Access_Layer
{
    internal class TrainRoute
    {
        private String Starts, Ends, TrainNames, TrainNos;


        /// <summary>
        /// Constructor to Take Value from the variable in ArrayList
        /// </summary>
        /// <param name="TrainNames"></param>
        /// <param name="TrainNos"></param>
        /// <param name="Starts"></param>
        /// <param name="Ends"></param>
        public TrainRoute(String TrainNames, String TrainNos, string Starts, string Ends)
        {
            this.Starts = Starts;
            this.Ends = Ends;
            this.TrainNames = TrainNames;
            this.TrainNos = TrainNos;
        }

        //Properties are Created

        /// <summary>
        /// Start Properties
        /// </summary>
        public string Start
        {
            get
            { 
                return this.Starts; 
            }
        }


        /// <summary>
        /// End Properties
        /// </summary>
        public string End
        {
            get
            {
                return this.Ends;
            }
        }


        /// <summary>
        /// TrainName properties
        /// </summary>
        public String TrainName
        {
            get 
            {
                return this.TrainNames;
            }
        }


        /// <summary>
        /// Train No. Properties
        /// </summary>
        public String TrainNo
        {
            get
            {
                return this.TrainNos;
            }
        }
    }
}
