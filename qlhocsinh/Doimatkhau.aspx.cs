using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Doimatkhau : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(Convert.ToString(Session["idlogin"])))
            Response.Redirect("dangnhap.aspx");
        MyDBDataContext db = new MyDBDataContext();
        int username = Convert.ToInt32(Session["idlogin"]);
        st_getaccountinfoResult user = db.st_getaccountinfo(username).FirstOrDefault();
        if (user != null)
            txtusername.Text = user.matv;   
    }
    protected void btndoimatkhau_Click(object sender, EventArgs e)
    {
        if(txtpassmoi.Text.Trim()!=txtnhaplaipassmoi.Text.Trim())
        {
            Response.Write("<script>alert('Xác nhận mật khẩu nhập lại không đúng');</script>");
            return;
        }
        else
        {
            MyDBDataContext db = new MyDBDataContext();
            int username = Convert.ToInt32(Session["idlogin"]);
            int kq = db.st_changepasswordc1(txtusername.Text.Trim(), txtpasscu.Text.Trim(), txtpassmoi.Text.Trim());
            if (kq == -1)
            {
                Response.Write("<script>alert('Mật khẩu cũ không đúng');</script>");
                return;
            }
            else if (kq == 0)
            {
                Response.Write("<script>alert('Phát sinh lỗi không thể đổi mật khẩu');</script>");
                return;
            }
            else
            {
                Response.Write("<script>alert('Đổi mật khẩu thành công');</script>");
                return;
            }
        }
    }
}
