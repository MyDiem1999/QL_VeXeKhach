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

namespace DA_CNN_NHOM_22
{
    public partial class TrangChu : Form
    {
        KetNoi kn = new KetNoi();
        SqlDataAdapter da_LoaiXe;
        SqlDataAdapter da_TuyenXe;

        DataSet ds_QLXK = new DataSet();

        DataColumn[] key = new DataColumn[1];

        public TrangChu()
        {
            InitializeComponent();

            string selLoai = "select * from LoaiXe";
            da_LoaiXe = new SqlDataAdapter(selLoai, kn.conn);
            da_LoaiXe.Fill(ds_QLXK, "LoaiXe");
            key[0] = ds_QLXK.Tables["LoaiXe"].Columns[0];
            ds_QLXK.Tables["LoaiXe"].PrimaryKey = key;

            string selTuyen = "select * from TuyenXe";
            da_TuyenXe = new SqlDataAdapter(selTuyen, kn.conn);
            da_TuyenXe.Fill(ds_QLXK, "TuyenXe");
            key[0] = ds_QLXK.Tables["TuyenXe"].Columns[0];
            ds_QLXK.Tables["TuyenXe"].PrimaryKey = key;
        }

        private void btnDangKy_Click(object sender, EventArgs e)
        {
            DangKy dk = new DangKy();
            dk.Show();
            this.Hide();
        }

        private void btnDangNhap_Click(object sender, EventArgs e)
        {
            DangNhap dn = new DangNhap();
            dn.Show();
            this.Hide();
        }

        private void btnLoaiXe_Click(object sender, EventArgs e)
        {
            dgvQLXK.DataSource = ds_QLXK.Tables["LoaiXe"];

            dgvQLXK.Columns["MaLoaiXe"].AutoSizeMode = DataGridViewAutoSizeColumnMode.DisplayedCells;
            dgvQLXK.Columns["MaLoaiXe"].HeaderText = "Mã loại xe";

            dgvQLXK.Columns["TenLoaiXe"].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            dgvQLXK.Columns["TenLoaiXe"].HeaderText = "Tên loại xe";

            dgvQLXK.AutoSizeRowsMode = DataGridViewAutoSizeRowsMode.AllCells;

            dgvQLXK.Font = new System.Drawing.Font("Times New Roman", 18,
                ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Regular))), System.Drawing.GraphicsUnit.World);

        }

        private void btnTuyenXe_Click(object sender, EventArgs e)
        {
            dgvQLXK.DataSource = ds_QLXK.Tables["TuyenXe"];

            dgvQLXK.Columns["Ma_Tuyen"].AutoSizeMode = DataGridViewAutoSizeColumnMode.DisplayedCells;
            dgvQLXK.Columns["Ma_Tuyen"].HeaderText = "Mã tuyến xe";

            dgvQLXK.Columns["TenTuyen"].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            dgvQLXK.Columns["TenTuyen"].HeaderText = "Tên tuyến xe";

            dgvQLXK.Columns["DiemDi"].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            dgvQLXK.Columns["DiemDi"].HeaderText = "Điểm đi";

            dgvQLXK.Columns["DiemDen"].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            dgvQLXK.Columns["DiemDen"].HeaderText = "Điểm đến";

            dgvQLXK.Columns["BangGiaXe"].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            dgvQLXK.Columns["BangGiaXe"].HeaderText = "Giá xe";

            dgvQLXK.AutoSizeRowsMode = DataGridViewAutoSizeRowsMode.AllCells;

            dgvQLXK.Font = new System.Drawing.Font("Times New Roman", 18,
                ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Regular))), System.Drawing.GraphicsUnit.World);
        }

        private void btnDatVe_Click(object sender, EventArgs e)
        {

        }

        private void TrangChu_Load(object sender, EventArgs e)
        {
            dgvQLXK.ReadOnly = true;
            dgvQLXK.AllowUserToAddRows = false;
            dgvQLXK.RowHeadersVisible = false;

            dgvQLXK.ColumnHeadersDefaultCellStyle.ForeColor = Color.Yellow;
            dgvQLXK.ColumnHeadersDefaultCellStyle.BackColor = Color.Black;
            dgvQLXK.EnableHeadersVisualStyles = false;

        }

    }
}
