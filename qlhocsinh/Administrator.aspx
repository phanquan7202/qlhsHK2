<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Administrator.aspx.cs" Inherits="Administrator" MasterPageFile="~/MasterPage3.master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="15pt" 
                    ForeColor="Red" Text="Bạn đang đăng nhập bằng quyền Administrator"></asp:Label>
                <br />
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="13pt" 
                    ForeColor="#6699FF" Text="Bạn đăng nhập vào ngày: "></asp:Label>
&nbsp;
                <asp:Label ID="lblngaythang" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="13pt" 
                    ForeColor="#3399FF" Text="Lúc: "></asp:Label>
&nbsp;<asp:Label ID="lblgio" runat="server"></asp:Label>
                <br />
                
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Doimatkhau.aspx">Đổi mật khẩu</asp:HyperLink>
&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/DoimatkhauC2.aspx">Đổi mật khẩu Cấp 2</asp:HyperLink>
&nbsp;
                
            </asp:Content>