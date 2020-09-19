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
    public partial class DangKy : Form
    {
        KetNoi kn = new KetNoi();
        DataSet ds_qlXK = new DataSet();
        SqlDataAdapter da_Loai;
        SqlDataAdapter da_KH;

        public DangKy()
        {
            InitializeComponent();
            string sel = "select * from KhachHang";
            da_KH = new SqlDataAdapter(sel, kn.conn);
            da_KH.Fill(ds_qlXK, "KH");
        }

        void Load_ComboboxLoaiKH()
        {
            
            string sel = "select * from LoaiKH";
            da_Loai = new SqlDataAdapter(sel, kn.conn);
            da_Loai.Fill(ds_qlXK, "LoaiKH");
            cboLoaiKH.DataSource = ds_qlXK.Tables["LoaiKH"];
            cboLoaiKH.DisplayMember = "TenLoai";
            cboLoaiKH.ValueMember = "MaLoai";
        }
        private void DangKy_Load(object sender, EventArgs e)
        {
            rdbNam.Checked = true;
            Load_ComboboxLoaiKH();
        }

        private void btnDangKy_Click(object sender, EventArgs e)
        {
                DataRow row = ds_qlXK.Tables["KH"].NewRow();
                row["TenKH"] = txtTenKH.Text;
                row["NgaySinh"] = dtpNS.Text;

                if (rdbNam.Checked == true)
                {
                    row["GioiTinh"] = rdbNam.Text;
                }
                else
                {
                    row["GioiTinh"] = rdbNu.Text;
                }

                row["DiaChi"] = txtDiaChi.Text;
                row["CMND"] = txtCMND.Text;
                row["SDT"] = txtSDT.Text;
                row["Email"] = txtEmail.Text;
                row["MatKhau"] = txtMK.Text;
                row["MaLoai"] = cboLoaiKH.SelectedValue;

                ds_qlXK.Tables["KH"].Rows.Add(row);
                SqlCommandBuilder cb = new SqlCommandBuilder(da_KH);
                da_KH.Update(ds_qlXK,"KH");
                MessageBox.Show("Đăng ký thành công! Bạn có muốn đăng nhập?");
                DangNhap dn = new DangNhap();
                dn.Show();
                this.Hide();
        }

        private void txtREMK_TextChanged(object sender, EventArgs e)
        {
            if (txtREMK.Text != string.Empty && txtREMK.TextLength == txtMK.TextLength)
            {
                if (txtREMK.Text != txtMK.Text)
                {
                    MessageBox.Show("Mật khẩu sai");
                }
            }
            if (txtREMK.TextLength > txtMK.TextLength)
                 MessageBox.Show("Dài quá sai rồi nè");
            if (txtMK.TextLength > txtREMK.TextLength)
                errorProvider1.SetError(txtREMK, "chưa đủ độ dài");
            else errorProvider1.SetError(txtREMK, "");
        }

        private void DangKy_FormClosing(object sender, FormClosingEventArgs e)
        {
            DialogResult rs;
            rs = MessageBox.Show("Bạn muốn thoát?", "Thông báo!", MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button1);
            if (rs == DialogResult.Yes)
            {
                TrangChu tc = new TrangChu();
                tc.Show();
                this.Hide();
            }
        }

       
    }
}
