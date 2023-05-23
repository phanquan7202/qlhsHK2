<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Thongtingiaovien.aspx.cs" Inherits="Thongtingiaovien" Title="Thông Tin Giáo Viên" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <asp:Image ID="Image8" runat="server" Height="63px" 
        ImageUrl="~/icon lon/user.jpg" Width="76px" />
    <asp:Image ID="Image9" runat="server" ImageUrl="~/image/Title_ThongTinGiaoVien.JPG" 
        Width="264px" />
        <br />
        <table 
            
    
    
            style="margin: 0px auto 0px auto; background-color: #99CCFF; color: #FFFFFF; font-weight: bold; ">
            <tr>
                <td style="width: 50%">
                    <asp:Label ID="Label1" runat="server" Text="Mã Giáo Viên"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblmagiaovien" runat="server" ForeColor="White"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 50%">
                    <asp:Label ID="Label2" runat="server" Text="Họ và tên"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblhoten" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 50%">
                    <asp:Label ID="Label3" runat="server" Text="Giới tính"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblgioitinh" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 50%">
                    <asp:Label ID="Label4" runat="server" Text="Địa chỉ"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lbldiachi" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 50%">
                    <asp:Label ID="Label5" runat="server" Text="Quê quán"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblquequan" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 50%">
                    <asp:Label ID="Label6" runat="server" Text="Số điện thọai"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblsodienthoai" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 50%">
                    <asp:Label ID="Label7" runat="server" Text="Cấp bậc"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblcapbac" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 50%">
                    <asp:Label ID="Label8" runat="server" Text="Email"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblemail" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 50%">
                    <asp:Label ID="Label9" runat="server" Text="Ngày vào làm"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblngayvaolam" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Doimatkhau.aspx">Đổi mật khẩu</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/DoimatkhauC2.aspx">Đổi mật khẩu cấp 2</asp:HyperLink>
        <br />
</asp:Content>

