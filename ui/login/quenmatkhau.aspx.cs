using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace main.ui.login
{
    public partial class quenmatkhau : System.Web.UI.Page
    {
        public static string strCon = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;

        public static SqlConnection connectDatabase()
        {
            SqlConnection myCnn = new SqlConnection(strCon);
            myCnn.Open();
            return myCnn;
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private void changePass()
        {
            string tai_khoan = txtEmail1.Text;
            string mat_khau = txtPass1.Text;
            string mat_khau1 = txtPass2.Text;
            string sdt = txtsdt.Text;
            if (mat_khau == mat_khau1)
            {
                SqlConnection myCnn = connectDatabase();
                SqlCommand cmd = new SqlCommand("update_user", myCnn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@username", tai_khoan);
                cmd.Parameters.AddWithValue("@password", mat_khau);
                cmd.Parameters.AddWithValue("@sdt", sdt);
                int ire = cmd.ExecuteNonQuery();
                if (ire > 0)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Đổi mật khẩu thành công')", true);
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Bạn đã nhập sai thông tin, vui lòng kiểm tra lại!')", true);
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Mật khẩu không trùng nhau, vui lòng nhập lại')", true);
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            changePass();
        }
    }
}