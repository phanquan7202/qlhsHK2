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

public partial class Thongtingiaovien : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MyDBDataContext db = new MyDBDataContext();
        int username = Convert.ToInt32(Session["idgiaovien"]);
        st_getgiaovieninfoResult giaovien = db.st_getgiaovieninfo(username).FirstOrDefault();
        if (giaovien != null)
        {
            lblmagiaovien.Text = giaovien.magv;
            lblhoten.Text = giaovien.tengv;
            lblgioitinh.Text = giaovien.gioitinh.ToString();
            lbldiachi.Text = giaovien.diachi;
            lblquequan.Text = giaovien.quequan;
            lblsodienthoai.Text = giaovien.sdt;
            lblcapbac.Text = giaovien.capbac;
            lblemail.Text = giaovien.email;
            lblngayvaolam.Text = giaovien.ngaysinh.ToString();
        }
    }
}
