using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Web.Security;
using System.Data.OleDb;

namespace WebApplication1
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ButtonSend_Click(object sender, EventArgs e)
        {
        }

        protected void ValidateUser(object sender, EventArgs e)
        {
            int gameId = 0;

            if (LoginCtrl.Password != "pingpong") {
                LoginCtrl.FailureText = "Неверный пароль";
                return;
            }

            string queryString = "SELECT `id` FROM `data` WHERE `player1`='" + LoginCtrl.UserName + "' OR `player2`='" + LoginCtrl.UserName + "' ";

            string connectionString = @"Provider=Microsoft.ACE.OLEDB.12.0;" +
@"Data Source=C:\Users\ilmir\Source\Repos\pingpong-asp\WebApplication1\WebApplication1\App_Data\db1.mdb;" +
@"User Id=;Password=;";
            OleDbConnection connection = new OleDbConnection(connectionString);

            OleDbCommand command = new OleDbCommand(queryString, connection);
            connection.Open();
            using (OleDbDataReader reader = command.ExecuteReader())
            {
                if (reader.HasRows)
                {
                    reader.Read();
                    gameId = reader.GetInt32(0);
                }
            }
            connection.Close();

            if (gameId == 0)
            {
                LoginCtrl.FailureText = "Пользователь не существует";
            } else
            {
                FormsAuthentication.SetAuthCookie(LoginCtrl.UserName, true);
                Response.Redirect("Table.aspx");
            }
        }
    }
}
