using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
namespace YokyoOlympicGames.DataAccessLayer
{
    public class ConnectionClass
    {
        public static String connectionString
        {
            get { return System.Configuration.ConfigurationManager.ConnectionStrings["dbConnection"].ConnectionString; }
        }
    }
}