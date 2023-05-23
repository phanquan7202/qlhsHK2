<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Admin_PhanCongGiaoVien.aspx.cs" Inherits="Admin_PhanCongGiaoVien" Title="Administrator - Phân Công Giáo Viên" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="16pt" 
        ForeColor="#33CC33" Text="Phân Công Giáo Viên"></asp:Label>
    <br />
    <br />    
    <br />
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
        GridLines="None">
        <RowStyle BackColor="#EFF3FB" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#2461BF" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    <table style="width: 100%; text-align: right;">
        <tr>
            <td style="width: 50%">
                <asp:Label ID="Label2" runat="server" Text="Mã Môn"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:TextBox ID="txtmamon" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtmamon" Display="Dynamic" 
                    ErrorMessage="Không được để trống"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Mã Giáo Viên"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:TextBox ID="txtmagv" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtmagv" Display="Dynamic" 
                    ErrorMessage="Không được để trống"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Lớp"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:DropDownList ID="ddchonlop" runat="server">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="ddchonlop" Display="Dynamic" 
                    ErrorMessage="Không được để trống"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Học Kỳ"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:DropDownList ID="dbhocky" runat="server">
                    <asp:ListItem>I</asp:ListItem>
                    <asp:ListItem>II</asp:ListItem>
                    <asp:ListItem>III</asp:ListItem>
                    <asp:ListItem>IV</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Năm học"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:TextBox ID="txtnamhoc" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="btnreport" runat="server" onclick="btnreport_Click" 
                    Text="Report" />
            </td>
        </tr>
    </table>
    <br />
    <asp:ImageButton ID="imgthem" runat="server" ImageUrl="~/icon/Add.png" 
        ToolTip="Thêm mới" onclick="imgthem_Click" />
&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="imgcapnhat" runat="server" ImageUrl="~/icon/Load.png" 
        ToolTip="Cập nhật" onclick="imgcapnhat_Click" />
&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="imgxoa" runat="server" ImageUrl="~/icon/Delete.png" 
        ToolTip="Xóa" onclick="imgxoa_Click" />
</asp:Content>

