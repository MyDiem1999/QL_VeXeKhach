using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DA_CNN_NHOM_22
{
    class KetNoi
    {
            SqlConnection _conn;

            public SqlConnection conn
            {
                get { return _conn; }
                set { _conn = value; }
            }

            public KetNoi()
            {
                _conn = new SqlConnection("Data Source=DESKTOP-AVANURH;Initial Catalog=QLXeKhach;User ID=sa;Password=sa2012");
            }

    }
}
