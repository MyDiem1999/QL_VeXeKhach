using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace DA_CNN_NHOM_22
{
    public partial class DangNhap : Form
    {
        KetNoi k = new KetNoi();

        public DangNhap()
        {
            InitializeComponent();
        }

        private void btnDangNhap_Click(object sender, EventArgs e)
        {
            try
            {
                k.conn.Open();
                string taikhoan = txtTaiKhoan.Text;
                string matkhau = txtMatKhau.Text;

                string sel = "select * from KhachHang where Email = N'" + taikhoan + "' and MatKhau = '" + matkhau + "'";
                SqlCommand cmd = new SqlCommand(sel, k.conn);
                SqlDataReader dta = cmd.ExecuteReader();

                if (dta.Read() == true)
                {
                    MessageBox.Show("Đăng nhập thành công!", "Thông báo đăng nhập!", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    //DatVe dv = new DatVe();
                    //dv.Show();
                    //this.Hide();
                }
                else
                {
                    MessageBox.Show("Sai password hoặc username", "Thông báo đăng nhập!", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
            catch
            {
                MessageBox.Show("Lỗi kết nối!");
            }
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            TrangChu tc = new TrangChu();
            tc.Show();
            this.Hide();
        }
    }
}
