using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Student_Management
{
    class Database
    {
        // Connection String thiết lập các thông số để kết nối.
        public static string cnStr = @"Data Source=.\SQLEXPRESS;Initial Catalog=StudentManagement;Integrated Security=True";

        // Tạo kết nối
        public static SqlConnection cn = new SqlConnection(cnStr);

        #region Load Datatable
        static public DataTable LoadCSDL(string sql)
        {
            if (cn.State == ConnectionState.Closed)
            {
                cn.Open();
            }
            DataTable dt = new DataTable();
            SqlCommand cm = new SqlCommand(sql, cn);
            SqlDataAdapter da = new SqlDataAdapter(cm);
            da.Fill(dt);
            return dt;
        }
        #endregion

        #region Edit
        //insert, update, delete
        static public int Change(string sql)
        {
            cn = new SqlConnection(cnStr);
            if (cn.State == ConnectionState.Closed)
            {
                cn.Open();
            }
            SqlCommand cm = new SqlCommand(sql, cn);
            int kq = cm.ExecuteNonQuery();
            cn.Close();
            return kq;
        }

        //Thao tác nhiều truy vấn
        static public int Change(string []sql)
        {
            int kq = 0;
            cn = new SqlConnection(cnStr);
            if (cn.State == ConnectionState.Closed)
            {
                cn.Open();
            }
            foreach(string s in sql)
            {
                SqlCommand cm = new SqlCommand(s, cn);
                kq += cm.ExecuteNonQuery();
            }
            
            cn.Close();
            return kq;
        }

        //-------------------------------------------------
        #endregion

        #region Reader
        public static SqlDataReader ReadCSDL(string sql)
        {
            if (cn.State == System.Data.ConnectionState.Closed)
            {
                cn.Open();
            }
            SqlCommand cmd = new SqlCommand(sql, cn);
            return cmd.ExecuteReader();
        }
        #endregion
    }
}
