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

namespace FROMBAI
{
    public partial class Form1 : Form
    {
        SqlConnection cn = new SqlConnection("Data Source=DESKTOP-CPESJR5;Initial Catalog=QLXeKhach;User ID=sa; Password=sa2012");
       
        DataSet ds = new DataSet();
        SqlDataAdapter da;
        SqlDataAdapter da_ve;
        DataColumn[] key = new DataColumn[1];

        public Form1()
        {
            InitializeComponent();
            string data = "select ChuyenXe.MaChuyenXe,Ve.MaVe,TenKH, TenChuyenXe, DiemDi,DiemDen,NgayDi,NgayDen, BangGiaXe from Ve,ChuyenXe,TuyenXe,KhachHang where Ve.MaKH= KhachHang.MaKH and Ve.MaChuyenXe= ChuyenXe.MaChuyenXe and TuyenXe.Ma_Tuyen=ChuyenXe.Ma_Tuyen";
            da = new SqlDataAdapter(data, cn);
            da.Fill(ds, "data");
            key[0] = ds.Tables["data"].Columns[0];
            ds.Tables["data"].PrimaryKey = key;

            string sel = "select * from Ve";
            da_ve = new SqlDataAdapter(sel, cn);
            da_ve.Fill(ds, "Ve");
            key[0] = ds.Tables["Ve"].Columns[0];
            ds.Tables["Ve"].PrimaryKey = key;

        }

        private void Form1_Load(object sender, EventArgs e)
        {
            
            loadchuyenxe();
            loadxe();
            txt_tenkhachhang.Enabled = false;
            txt_tonggia.Enabled = false;
            txt_slve.Enabled = false;
        }

        public void loaddiemdi(){
          ds = new DataSet();
          string ddiden = "select DiemDen, DiemDi from ChuyenXe,TuyenXe where TuyenXe.Ma_Tuyen = ChuyenXe.Ma_Tuyen and MaChuyenXe = '"+cbo_tuyenxe.SelectedValue.ToString()+"'";
            da = new SqlDataAdapter(ddiden, cn);
            da.Fill(ds, "dsdiden");
            cbo_noidi.DataSource = ds.Tables["dsdiden"];
            cbo_noidi.DisplayMember = "DiemDi";
            cbo_noidi.ValueMember = "DiemDi";
            cbo_noiden.DataSource = ds.Tables["dsdiden"];
            cbo_noiden.DisplayMember = "DiemDen";
            cbo_noiden.ValueMember = "DiemDen";
        }

        public void loadtien()
        {
            ds = new DataSet();
            string dgia = "select BangGiaXe from TuyenXe,ChuyenXe Where TuyenXe.Ma_Tuyen=ChuyenXe.Ma_Tuyen and MaChuyenXe = '" +cbo_tuyenxe.SelectedValue.ToString()+ "'  ";
            da = new SqlDataAdapter(dgia, cn);
            da.Fill(ds,"dsgia");
            txt_tonggia.DataBindings.Clear();
            txt_tonggia.DataBindings.Add("Text",ds.Tables["dsgia"],"BangGiaXe");

           

           
        }

        public void loadxe()
        {
            ds = new DataSet();
            string tx = "select MaXe,TenXe from Xe  ";
            da = new SqlDataAdapter(tx, cn);
            da.Fill(ds, "dsxe");
            cbo_xe.DataSource = ds.Tables["dsxe"];
            cbo_xe.DisplayMember = "TenXe";
            cbo_xe.ValueMember = "MaXe";
        }

        public void loadge()
        {
            ds = new DataSet();
            string tx1 = "select SoGhe from Xe where MaXe ='"+cbo_xe.SelectedValue.ToString()+"'";
            da = new SqlDataAdapter(tx1, cn);
            da.Fill(ds, "ds");
            txt_soghe.DataBindings.Clear();
            txt_soghe.DataBindings.Add("Text", ds.Tables["ds"], "SoGhe");
        }

        public void loadchuyenxe()
        {
            ds = new DataSet();
            string tx = "select MaChuyenXe, TenChuyenXe from ChuyenXe  ";
            da = new SqlDataAdapter(tx, cn);
            da.Fill(ds, "dstuyenxe");
            cbo_tuyenxe.DataSource = ds.Tables["dstuyenxe"];
            cbo_tuyenxe.DisplayMember = "TenChuyenXe";
            cbo_tuyenxe.ValueMember = "MaChuyenXe";
        }

        public void loaddata() 
        { 
            data_chinh.DataSource = ds.Tables["data"];

        }

        private void cbo_tuyenxe_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataSet ds_cx = new DataSet();
            string data = "select ChuyenXe.MaChuyenXe,Ve.MaVe,TenChuyenXe, DiemDi,DiemDen,NgayDi,NgayDen, BangGiaXe from Ve,ChuyenXe,TuyenXe where Ve.MaChuyenXe= ChuyenXe.MaChuyenXe and TuyenXe.Ma_Tuyen=ChuyenXe.Ma_Tuyen and ChuyenXe.MaChuyenXe ='" + cbo_tuyenxe.SelectedValue.ToString() + "' and NgayDen='" + time_den.Text + "' and NgayDi='" + time_di.Text + "'";
            SqlDataAdapter da_cx = new SqlDataAdapter(data, cn);
            da_cx.Fill(ds_cx, "data1");
            data_chinh.DataSource = ds_cx.Tables["data1"];
            loaddiemdi();
            loadtien();
        }

        private void cbo_xe_SelectedIndexChanged(object sender, EventArgs e)
        {
            loadge();
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            txt_slve.Enabled = true;
        }

        private void btnDat_Click(object sender, EventArgs e)
        {
            cbo_tuyenxe.Focus();
            txt_slve.Enabled = true;
        }

        private void data_chinh_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int numrow;
            numrow = e.RowIndex;
            cbo_tuyenxe.SelectedValue = data_chinh.Rows[numrow].Cells[0].Value.ToString();
            cbo_noidi.SelectedValue = data_chinh.Rows[numrow].Cells[3].Value.ToString();
            cbo_noiden.SelectedValue = data_chinh.Rows[numrow].Cells[4].Value.ToString();
            time_di.Text = data_chinh.Rows[numrow].Cells[5].Value.ToString();
            time_den.Text=data_chinh.Rows[numrow].Cells[6].Value.ToString();
            txt_tonggia.Text = data_chinh.Rows[numrow].Cells[7].Value.ToString();
        }
        
    }
}
