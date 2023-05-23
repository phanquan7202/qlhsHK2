<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Thongtincanhan.aspx.cs" Inherits="Default2" Title="Sinh Viên - Thông Tin Cá Nhân" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<div align="center">
    <p style="width: 642px; height: 73px">
        &nbsp;<asp:Image ID="Image8" runat="server" Height="63px" 
        ImageUrl="~/icon lon/user.jpg" Width="76px" />
    <asp:Image ID="Image9" runat="server" ImageUrl="~/image/thongtin.png" 
        Width="264px" />
</p>
    
</div>
    <table align="center" 
        style="border-style: none; width: 400px; background-color: #99CCFF; color: #FFFFFF; font-weight: bold;">
        <tr>
            <td style="text-align: right; width: 50%">
                <asp:Label ID="Label1" runat="server" Text="Mã Sinh Viên"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblmasinhvien" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 50%">
                <asp:Label ID="Label2" runat="server" Text="Tên Sinh Viên"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblten" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 50%">
                <asp:Label ID="Label3" runat="server" Text="Giới tính"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblgioitinh" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 50%">
                <asp:Label ID="Label4" runat="server" Text="Lớp"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbllop" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 50%">
                <asp:Label ID="Label5" runat="server" Text="Ngày sinh"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblngaysinh" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 50%">
                <asp:Label ID="Label6" runat="server" Text="Địa chỉ"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbldiachi" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 50%">
                <asp:Label ID="Label7" runat="server" Text="Quê quán"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblquequan" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 50%">
                <asp:Label ID="Label8" runat="server" Text="Số điện thọai"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblsodienthoai" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 50%">
                <asp:Label ID="Label9" runat="server" Text="Bậc học"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblbachoc" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 50%">
                <asp:Label ID="Label10" runat="server" Text="Niên khóa"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblnienkhoa" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Doimatkhau.aspx">Đổi mật khẩu</asp:HyperLink>
    <br />
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/DoimatkhauC2.aspx">Đổi mật khẩu Cấp 2</asp:HyperLink>
    </center>
</asp:Content>

