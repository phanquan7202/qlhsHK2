<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Admin_BangDiem.aspx.cs" Inherits="Admin_BangDiem" Title="Administrator - Bảng Điểm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<p align="center">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="16pt" 
        ForeColor="#33CC33" Text="Bảng Điểm"></asp:Label>
</p>
    <p align="center">
        <asp:Label ID="Label10" runat="server" Text="Chọn Lớp "></asp:Label>
        <asp:DropDownList ID="ddchonlop" runat="server" AutoPostBack="True" 
            onselectedindexchanged="ddchonlop_SelectedIndexChanged">
        </asp:DropDownList>
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
    <br />    
    <br />
    <table style="width: 100%; text-align: right;">
        <tr>
            <td style="width: 50%">
                <asp:Label ID="Label2" runat="server" Text="Tên Sinh Viên"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:DropDownList ID="ddtensv" runat="server" 
                    onselectedindexchanged="ddtensv_SelectedIndexChanged" AutoPostBack="True">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 50%">
                <asp:Label ID="Label3" runat="server" Text="Tên Môn"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:DropDownList ID="ddtenmon" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="ddtenmon_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="ddtenmon" ErrorMessage="Không được để trống"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 50%">
                <asp:Label ID="Label4" runat="server" Text="Điểm HS1"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:TextBox ID="txtdiemhs1" runat="server"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="txtdiemhs1" Display="Dynamic" 
                    ErrorMessage="Điểm từ 0 đến 10" MaximumValue="10" MinimumValue="0" 
                    Type="Integer"></asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtdiemhs1" Display="Dynamic" 
                    ErrorMessage="Không được để trống"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 50%">
                <asp:Label ID="Label5" runat="server" Text="Điểm HS2"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:TextBox ID="txtdiemhs2" runat="server"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator2" runat="server" 
                    ControlToValidate="txtdiemhs2" Display="Dynamic" 
                    ErrorMessage="Điểm từ 0 đến 10" MaximumValue="10" MinimumValue="0" 
                    Type="Integer"></asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtdiemhs2" Display="Dynamic" 
                    ErrorMessage="Không được để trống"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 50%">
                <asp:Label ID="Label6" runat="server" Text="Điểm HS3"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:TextBox ID="txtdiemhs3" runat="server"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator3" runat="server" 
                    ControlToValidate="txtdiemhs3" Display="Dynamic" 
                    ErrorMessage="Điểm từ 0 đến 10" MaximumValue="10" MinimumValue="0" 
                    Type="Integer"></asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtdiemhs3" Display="Dynamic" 
                    ErrorMessage="Không được để trống"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 50%">
                <asp:Label ID="Label7" runat="server" Text="Điểm Trung Bình"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:TextBox ID="txtdiemtb" runat="server" BackColor="White" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 50%">
                <asp:Label ID="Label8" runat="server" Text="Học Kỳ"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:DropDownList ID="ddhocky" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 50%">
                <asp:Label ID="Label9" runat="server" Text="Năm"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:TextBox ID="txtnamhoc" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: center;" colspan="2">
                <asp:Button ID="btnreport" runat="server" onclick="btnreport_Click" 
                    Text="Report" />
            </td>
        </tr>
    </table>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="imgthem" runat="server" ImageUrl="~/icon/Add.png" 
        ToolTip="Thêm mới" onclick="imgthem_Click" />
&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="imgcapnhat" runat="server" ImageUrl="~/icon/Load.png" 
        ToolTip="Cập nhật" onclick="imgcapnhat_Click" />
&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="imgxoa" runat="server" ImageUrl="~/icon/Delete.png" 
        ToolTip="Xóa" onclick="imgxoa_Click" />
</p>
</asp:Content>

