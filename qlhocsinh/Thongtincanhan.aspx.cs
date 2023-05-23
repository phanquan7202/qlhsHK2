using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MyDBDataContext db = new MyDBDataContext();
        int username = Convert.ToInt32(Session["idsinhvien"]);
        st_getsinhvieninfoResult sinhvien = db.st_getsinhvieninfo(username).FirstOrDefault();
        if (sinhvien != null)
        {
            lblmasinhvien.Text = sinhvien.masv;
            lblten.Text = sinhvien.hoten;
            lblgioitinh.Text = sinhvien.gioitinh.ToString();
            lbllop.Text = sinhvien.malop;
            lblngaysinh.Text = sinhvien.ngaysinh.ToString();
            lbldiachi.Text = sinhvien.diachi;
            lblquequan.Text = sinhvien.quequan;
            lblsodienthoai.Text = sinhvien.sdt;
            lblbachoc.Text = sinhvien.bachoc;
            lblnienkhoa.Text = sinhvien.nienkhoa;
        }
    }
}
