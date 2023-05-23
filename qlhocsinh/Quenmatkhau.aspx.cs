using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Quenmatkhau : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btndoimatkhau_Click(object sender, EventArgs e)
    {
        if (txtpassmoi.Text.Trim() != txtnhaplaipassmoi.Text.Trim())
        {
            Response.Write("<script>alert('Xác nhận mật khẩu nhập lại không đúng');</script>");
            return;
        }
        else
        {
            MyDBDataContext db = new MyDBDataContext();
            int username = Convert.ToInt32(Session["idlogin"]);
            int kq = db.st_forgotpassword(txtusername.Text.Trim(), txtpassc2.Text.Trim(), txtpassmoi.Text.Trim());
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
