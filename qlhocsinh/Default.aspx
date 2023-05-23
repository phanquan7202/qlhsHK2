<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<script type="text/javascript" src="script/dropdown.js"></script>
<script language="javascript" type="text/javascript" src="script/MenuScript.js"></script>
<link rel="Stylesheet" type="text/css" href="script/StyleSheet.css" />
 <script type="text/javascript">
     var bg_submenu = "#cccccc"; // màu nền của submenu
     var bg_hv_submenu = "#999999"; // màu nền của submenu khi rê chuột
    function otab(){
    document.write('<table border="0" bordercolor="#999" style="background-color: #FFF" cellspacing="0" cellpadding="0">');
    }
    function submn(submn_link,submn_text){
    document.write('<tr><td onmouseover="this.style.background=\''+bg_hv_submenu+'\'" onmouseout="this.style.background=\''+bg_submenu+'\'" class="nav23sub" onclick="window.location.href=\''+submn_link+'\'">'+submn_text+'</td></tr>');
    }
    function ctab(){document.write('<\/table>');}
    function otab(child_id){document.write('<table id="' + child_id +'" border="0" bordercolor="#999" style="background-color: #FFF" cellspacing="0" cellpadding="0">');
    }
 </script>


 <script src="script/jquery-1.4.2.min.js" type="text/javascript"></script>
  <style type="text/css">
.neoslideshow {position:relative; width:100%; height:300px;}
.neoslideshow img {position:absolute;left:0; top:0;}
      .style1
      {
          width: 100%;
      }
      .style2
      {
          height: 60px;
      }
      </style>
  <script >
   $(function() {
        $('.neoslideshow img:gt(0)').hide();
        setInterval(function(){
           $('.neoslideshow :first-child').fadeOut()
              .next('img').fadeIn()
              .end().appendTo('.neoslideshow');},
          4000);
     })
  </script>  
  



    <title>Untitled Page</title>
</head>
<body>

    <form id="form1" runat="server">

    <table align="center" 
        style="width:1200px; margin-top: -10px; margin-bottom: -10px;">
        <tr>
            <td colspan="3">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/anh/banner_tiengviet.jpg" 
                    Width="100%" />
            </td>
        </tr>
        <tr>
            <td colspan="3" align="center" valign="top">
            <div class="nav23">
            
            <table height="100%" width="90%">
            <tr valign="top">
            <td>
             
             <a id="idmenu1" href="#" >Giới Thiệu</a>
             <a id="idmenu2" href="#">Phòng Chức Năng</a>
             <a id="idmenu3" href="#">Khoa-Bộ Môn</a>
             <a id="idmenu4" href="#">Nghiên Cứu Khoa Học</a>
             <a id="idmenu5" href="#">Đảm Bảo Chất Lượng</a>
             <a id="idmenu6" href="#">Hợp Tác Quốc Tế</a>
             <a id="idmenu7" href="Dangnhap.aspx">Đăng Nhập</a>
            
             </td>
             <td valign="top">
                 <asp:TextBox ID="TextBox1" runat="server" Height="15px" Width="130px"></asp:TextBox>
             </td>
             <td valign="top">
             
                 <asp:ImageButton ID="ImageButton1" runat="server" Height="20px" 
                     ImageUrl="~/anh/Search.png" Width="25px" />
             
             </td>
             </tr>
             </table>
              </div>
             
 <script type="text/javascript">
 otab("idmenu1_child");
 submn('link_submenu1.1','Lịch Sử Nhà Trường');
 submn('link_submenu1.2', 'Ban Giám Hiệu');
 submn('link_submenu1.3', 'Sứ Mạng-Tầm Nhìn-Giá Trị');
 ctab();
 at_attach("idmenu1", "idmenu1_child", "hover", "y", "pointer");

 otab("idmenu2_child");
 submn('link_submenu2.1', 'Phòng Tổ Chức Nhân Sự');
 submn('link_submenu2.1', 'Phòng Hành Chính Tổng Hợp');
 submn('link_submenu2.1', 'Phòng Quản Lý Đào Tạo');
 submn('link_submenu2.1', 'Phòng Công Tác Chính Trị HS-SV');
 submn('link_submenu2.1', 'Phòng Tài Chính - Kế Toán');
 submn('link_submenu2.1', 'Phòng Khảo Thí - Kiểm Tra Chất Lượng GD');
 submn('link_submenu2.1', 'Phòng Thanh Tra Giáo Dục');
 submn('link_submenu2.1', 'Phòng Kế Hoạch vật Tư');
 submn('link_submenu2.1', 'Phòng Khoa Học Công Nghệ');
 ctab();
 at_attach("idmenu2", "idmenu2_child", "hover", "y", "pointer");

 otab("idmenu3_child");
 submn('link_submenu3.1', 'Công Nghệ Thông Tin');
 submn('link_submenu3.1', 'Quản Trị Kinh Doanh');
 submn('link_submenu3.1', 'Tài Chính Kế Toán');
 submn('link_submenu3.1', 'Cơ Khí');
 submn('link_submenu3.1', 'Điện - Điện Tử');
 submn('link_submenu3.1', 'Ngoại Ngữ');
 submn('link_submenu3.1', 'Khoa Học Cơ Bản');
 submn('link_submenu3.1', 'Tiếng Hàn');
 ctab();
 at_attach("idmenu3", "idmenu3_child", "hover", "y", "pointer");

 otab("idmenu4_child");
 submn('link_submenu4.1','Giới Thiệu');
 submn('link_submenu4.2','Quy Chế NCKH');
 submn('link_submenu4.3','Đề Tài NCKH');
 submn('link_submenu4.4','Bài Báo Khoa Học');
 submn('link_submenu4.5','Tài Liệu Biểu Mẫu');
 ctab();
 at_attach("idmenu4", "idmenu4_child", "hover", "y", "pointer");

 otab("idmenu5_child");
 submn('link_submenu5.1','Chuẩn Đầu Ra Cao Đẳng');
 submn('link_submenu5.2', 'Chuẩn Đầu Ra Trung Cấp');
 submn('link_submenu5.2', 'Ngành Đào Tạo');
 ctab();
 at_attach("idmenu5", "idmenu5_child", "hover", "y", "pointer");

 otab("idmenu6_child");
 submn('link_submenu6.1', 'Thông Tin Hợp Tác');
 submn('link_submenu6.1', 'Hình Ảnh Hợp Tác');
 submn('link_submenu6.1', 'Thông Tin Du Học');
 ctab();
 at_attach("idmenu6", "idmenu6_child", "hover", "y", "pointer");

 otab("idmenu7_child");
 ctab();
 at_attach("idmenu7", "idmenu7_child", "hover", "y", "pointer");
 </script>
             
            
            </td>
        </tr>
        <tr>
            <td width="22%" align="left" style="padding: 10px" valign="top">
                <table align="center" 
                    style="background-color: #2BA2F0; color: #FFFFFF; border-radius:5px; -moz-border-radius:5px;" 
                    class="style1">
                    <tr>
                        <td align="center" colspan="2" style="padding: 7px">
                        <div style="padding: 5px; margin: -2px; color:#2BA2F0; font-weight: bold; background-color: #FFFFFF;
                                     border-radius:5px; -moz-border-radius:5px;">
                            Tiện Ích
                        </div>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/anh/Email.png" 
                                Width="27px" />
                        </td>
                        <td width="80%" style="font-weight: bold">
                            <a href="#">Hộp Thư GV-CBCC</a></td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <hr style="background-color: #0066FF;" />
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/anh/Info.png" 
                                Width="30px" />
                        </td>
                        <td style="font-weight: bold">
                            <a href="#">Thông <span lang="en-us">T</span>in Nội Bộ</a></td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <hr style="background-color: #0066FF;" />
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/anh/Email.png" 
                                Width="30px" />
                        </td>
                        <td style="font-weight: bold">
                            <a href="#">Hộp Thư Sinh Viên</a></td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <hr style="background-color: #0066FF;" />
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Image ID="Image5" runat="server" Height="30px" 
                                ImageUrl="~/anh/Bar Chart.png" Width="30px" />
                        </td>
                        <td style="font-weight: bold">
                            <a href="#">Lịch Công Tác</a></td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <hr style="background-color: #0066FF;" />
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Image ID="Image6" runat="server" Height="30px" 
                                ImageUrl="~/anh/Picture.png" Width="30px" />
                        </td>
                        <td style="font-weight: bold">
                             <a href="#">Hình Ảnh Hoạt Động</a></td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <hr style="background-color: #0066FF;" />
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Image ID="Image7" runat="server" Height="30px" 
                                ImageUrl="~/anh/Loading.png" Width="30px" />
                        </td>
                        <td style="font-weight: bold">
                           <a href="#">Sơ Đồ Phòng Học</a></td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2" valign="top">
                            <hr style="background-color: #0066FF;"  />
                        </td>
                    </tr>
                </table>
                <p>
                    <asp:Image ID="Image16" runat="server" ImageUrl="~/anh/qc1.jpg" Width="100%" /><br />
                    <asp:Image ID="Image17" runat="server" ImageUrl="~/anh/qc2.jpg" Width="100%" /><br />
                    <asp:Image ID="Image18" runat="server" ImageUrl="~/anh/qc3.png" Width="100%" /><br />
                    <asp:Image ID="Image19" runat="server" ImageUrl="~/anh/qc4.jpg" Width="100%" />
                </p>
            </td>
            <td width="55%" style="padding: 10px 2px 10px 2px;" valign="top">
            
            <div class="neoslideshow" style="border-style: double; border-color: #333333;">
    <img src="slideshow/GetPhotoImage.jpg" width="100%" height="300" />
    <img src="slideshow/GetPhotoImage1.jpg" width="100%" height="300" />
    <img src="slideshow/GetPhotoImage2.jpg" width="100%" height="300" />
    <img src="slideshow/GetPhotoImage3.jpg" width="100%" height="300" />
    <img src="slideshow/GetPhotoImage4.jpg" width="100%" height="300" />
    <img src="slideshow/GetPhotoImage5.jpg" width="100%" height="300" />
    <img src="slideshow/GetPhotoImage6.jpg" width="100%" height="300" />
            </div>
            <p></p>
                    <table style="width:100%;">
                        <tr>
                            <td>
                                <table width=70%  
                                    style="padding: 0px; background-color: #2BA2F0; color: #FFFFFF; font-weight: bold; font-size: 16px; border-radius:5px; -moz-border-radius:5px; margin-bottom: -5px;">
                                    <tr>
                                        <td align="right" width="15%">
                                            <asp:Image ID="Image13" runat="server" Height="35px" 
                                                ImageUrl="~/anh/Modify.png" Width="40px" />
                                        </td>
                                        <td>
                                            <span lang="en-us">&nbsp; </span>
                                            <asp:Label ID="Label1" runat="server" Text="Tin Tức - Hoạt Động"></asp:Label>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style="border-style: outset; border-color: #999999">
                                <table style="width:100%;">
                                    <tr>
                                        <td colspan="2">
                                            <span lang="en-us" style="color: #2BA2F0; font-weight: bold; font-size: 18px;">
                                             <a href="#">Hội Thảo Thống Nhất Chương Trình Đào Tạo Ngành Quản Lý Siêu Thị Và Ngành Quản Lý 
                                            Kho</a></span></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <span lang="en-us">&nbsp;</span><i>[Đăng ngày : 22/05/2012]</i></td>
                                    </tr>
                                    <tr>
                                        <td align="center" width="25%">
                                            <asp:Image ID="Image14" runat="server" Height="120px" ImageUrl="~/anh/1.jpg" 
                                                Width="130px" />
                                        </td>
                                        <td>
                                            <p>
                                                Sáng ngày 21/05 tại Hội trường B trường Cao đẳng Công nghệ Thủ Đức (TDC) diễn ra 
                                                Hội thảo&nbsp;thống nhất chương trình đào tạo ngành Quản lý siêu thị và ngành Quản lý 
                                                kho.</p>
                                            Tham dự buổi hội thảo có Ông Hoàng Ngọc Vinh - Vụ trưởng Vụ Giáo dục chuyên 
                                            nghiệp; đại diện Tổ chức APEFE; đại diện các trường tham gia dự án: trường Cao 
                                            đẳng Công nghệ Thủ Đức, Cao đẳng Bách Khoa Đà Nẵng, Cao đẳng Hải Dương, Trung 
                                            cấp Đông Dương.</td>
                                    </tr>
                                    <tr>
                                        <td align="right" width="25%" colspan="2">
                                            <asp:HyperLink ID="HyperLink1" runat="server" Font-Italic="True" 
                                                ForeColor="#BB7100">Xem Tiếp</asp:HyperLink>
                                            <span lang="en-us">&nbsp;&nbsp;&nbsp; </span>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        </table>
                        <p>
                            <asp:Image ID="Image15" runat="server" ImageUrl="~/anh/TS.png" Width="100%" />
                </p>
            
            </td>
            <td width="23%" style="padding: 10px 0px 10px 10px" valign="top">
                <table style="border: medium groove #999999; width:100%; font-size: 14px; border-radius:7px; -moz-border-radius:7px; color: #333333;">
                    <tr>
                        <td align="center" colspan="2" 
                            style="padding: 4px; font-size: 18px; font-weight: bold; background-color: #2BA2F0; color: #FFFFFF; border-radius:5px; -moz-border-radius:5px;">
                            Thông Báo</td>
                    </tr>
                    <tr>
                        <td align="center" width="20%">
                            <asp:Image ID="Image8" runat="server" Height="30px" ImageUrl="~/anh/Next.png" 
                                Width="30px" />
                        </td>
                        <td style="padding: 5px 0px 5px 0px">
                             <a href="#">Kết Quả Công Nhận Xét Tốt Nghiệp Khóa 2012</a></td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Image ID="Image9" runat="server" Height="30px" ImageUrl="~/anh/Next.png" 
                                Width="30px" />
                        </td>
                        <td style="padding: 5px 0px 5px 0px">
                             <a href="#">Thu Học Phí Học Kì II Năm Học 2011-2012</a></td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Image ID="Image10" runat="server" Height="30px" ImageUrl="~/anh/Next.png" 
                                Width="30px" />
                        </td>
                        <td style="padding: 5px 0px 5px 0px">
                             <a href="#">Tổ Chức Thi Cấp Chứng Chỉ Hướng Dẫn Du Lịch</a></td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Image ID="Image11" runat="server" Height="30px" ImageUrl="~/anh/Next.png" 
                                Width="30px" />
                        </td>
                        <td style="padding: 5px 0px 5px 0px">
                            <span lang="en-us"> <a href="#">Hướng Dẫn Tra Cứu Thông Tin Trên WebSite Của Trường</a></span></td>
                    </tr>
                </table>
                
                <br />
                
                <table style="border: medium groove #999999; width:100%; font-size: 14px; border-radius:7px; -moz-border-radius:7px; color: #333333;">
                    <tr>
                        <td align="center" colspan="2" 
                            style="padding: 4px; font-size: 18px; font-weight: bold; background-color: #2BA2F0; color: #FFFFFF; border-radius:5px; -moz-border-radius:5px;">
                            <span lang="en-us">Tuyển Dụng</span></td>
                    </tr>
                    <tr>
                        <td align="center" width="20%">
                            <asp:Image ID="Image12" runat="server" Height="30px" ImageUrl="~/anh/Profile.png" 
                                Width="30px" />
                        </td>
                        <td style="padding: 5px 0px 5px 0px">
                            <span lang="en-us"> <a href="#">THÔNG BÀO TUYỂN DỤNG</a></span></td>
                    </tr>
                    <tr>
                        <td align="center" class="style2">
                            <asp:Image ID="Image20" runat="server" Height="30px" ImageUrl="~/anh/Profile.png" 
                                Width="30px" />
                        </td>
                        <td style="padding: 5px 0px 5px 0px" class="style2">
                             <a href="#">NGHỊ 
                            ĐỊNH 116 VỀ TUYỂN DỤNG, SỬ DỤNG VÀ QUẢN LÝ CBCC</a></td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Image ID="Image21" runat="server" Height="30px" ImageUrl="~/anh/Profile.png" 
                                Width="30px" />
                        </td>
                        <td style="padding: 5px 0px 5px 0px">
                             <a href="#">QUI TRÌNH TUYỂN DỤNG GV BIÊN CHẾ <a href="#"> (Dự thảo<span lang="en-us">)</span></td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Image ID="Image22" runat="server" Height="30px" ImageUrl="~/anh/Profile.png" 
                                Width="30px" />
                        </td>
                        <td style="padding: 5px 0px 5px 0px">
                            <a href="#">QUI 
                            TRÌNH TUYỂN DỤNG GV, NV HỢP ĐỒNG</a></td>
                    </tr>
                </table>
                <p>
                    <asp:Image ID="Image23" runat="server" ImageUrl="~/anh/qc5.jpg" Width="100%" /><br />
                    <asp:Image ID="Image24" runat="server" ImageUrl="~/anh/qc6.jpg" Width="100%" /><br />
                    <asp:Image ID="Image25" runat="server" ImageUrl="~/anh/qc7.jpg" Width="100%" />
                </p>
            </td>
        </tr>
        <tr>
            <td colspan="3" 
                style="padding: 20px; background-color: #2BA2F0; color: #FFFFFF;border-radius:7px; -moz-border-radius:7px;">
                <span>TRƯỜNG CAO ĐẲNG CÔNG NGHỆ THỦ ĐỨC<br />
                </span>Địa chỉ : 53 Võ Văn Ngân - Phường Linh Chiểu - Quận Thủ Đức - TP.HCM<br />
                Điện thoại : 08.38966825 -&nbsp;08.38970023 - 08.38972339, Fax : 08.38962474
                <br />
                Website: http://www.tdc.edu.vn &nbsp;- Email: tdc@mail.tdc.edu.vn</td>
        </tr>
    </table>

    </form>

</body>
</html>
