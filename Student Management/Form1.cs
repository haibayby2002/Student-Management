using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Student_Management
{
    public partial class frmMain : Form
    {
        public frmMain()
        {
            InitializeComponent();
        }

        private void frmMain_Load(object sender, EventArgs e)
        {
            cmbKhoi.SelectedIndex = 0;
        }

        #region Lọc học sinh
        private void cmbKhoi_SelectedValueChanged(object sender, EventArgs e)
        {
            SqlDataReader r;
            if (cmbKhoi.Text == "Tất cả")
            {
                r = Database.ReadCSDL("exec LoadTatCaLop");
            }
            else
            {
                r = Database.ReadCSDL("exec LoadLopTheoKhoi " + cmbKhoi.Text);
            }

            cmbLop.Items.Clear();
            cmbLop.Items.Add("Tất cả");

            while (r.Read())
            {
                cmbLop.Items.Add(r["MaLop"].ToString());
            }

            r.Close();

            cmbLop.SelectedIndex = 0;   //Chọn tất cả
        }

        private void cmbLop_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cmbLop.Text == "Tất cả")
            {
                if(cmbKhoi.Text == "Tất cả")
                {
                    dgvHocSinh.DataSource = Database.LoadCSDL(@"select MaHocSinh, TenHocSinh, MaLop from HocSinh");
                }
                else
                {
                    dgvHocSinh.DataSource = Database.LoadCSDL(@"exec LoadHocSinhTheoKhoi " + cmbKhoi.Text);
                }
            }
            else
            {
                dgvHocSinh.DataSource = Database.LoadCSDL(@"exec LoadHocSinhTheoLop '" + cmbLop.Text + "'");
            }
        }

        #endregion

        //Exit thì tắt kết nối
        private void frmMain_FormClosed(object sender, FormClosedEventArgs e)
        {
            if (Database.cn.State == ConnectionState.Open)
            {
                Database.cn.Close();
            }
        }

    }
}
