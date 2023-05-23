<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Admin_ThongTinSinhVien.aspx.cs" Inherits="Admin_ThongTinSinhVien" Title="Administrator - Thông Tin Sinh Viên" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="16pt" 
        ForeColor="#33CC33" Text="Thông Tin Sinh Viên"></asp:Label>
    <br />
    <asp:ToolkitScriptManager ID="ScriptManager1" runat="server"> 
</asp:ToolkitScriptManager>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="masv" 
        ForeColor="#333333" GridLines="None" PageSize="8">
        <RowStyle BackColor="#EFF3FB" />
        <Columns>
            <asp:BoundField DataField="masv" HeaderText="Mã Sinh Viên" ReadOnly="True" 
                SortExpression="masv" />
            <asp:BoundField DataField="hoten" HeaderText="Họ và Tên" 
                SortExpression="hoten" />
            <asp:BoundField DataField="gioitinh" HeaderText="Giới Tính" 
                SortExpression="gioitinh" />
            <asp:BoundField DataField="ngaysinh" HeaderText="Ngày Sinh" 
                SortExpression="ngaysinh" />
            <asp:BoundField DataField="malop" HeaderText="Mã Lớp" SortExpression="malop" />
            <asp:BoundField DataField="diachi" HeaderText="Địa Chỉ" 
                SortExpression="diachi" />
            <asp:BoundField DataField="quequan" HeaderText="Quê Quán" 
                SortExpression="quequan" />
            <asp:BoundField DataField="sdt" HeaderText="Số Điện Thọai" 
                SortExpression="sdt" />
            <asp:BoundField DataField="bachoc" HeaderText="Bậc Học" 
                SortExpression="bachoc" />
            <asp:BoundField DataField="nienkhoa" HeaderText="Niên Khóa" 
                SortExpression="nienkhoa" />
        </Columns>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#2461BF" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [sinhvien] WHERE [masv] = @masv" 
        InsertCommand="INSERT INTO [sinhvien] ([masv], [hoten], [gioitinh], [ngaysinh], [malop], [diachi], [quequan], [sdt], [bachoc], [nienkhoa]) VALUES (@masv, @hoten, @gioitinh, @ngaysinh, @malop, @diachi, @quequan, @sdt, @bachoc, @nienkhoa)" 
        SelectCommand="SELECT * FROM [sinhvien]" 
        UpdateCommand="UPDATE [sinhvien] SET [id] = @id, [hoten] = @hoten, [gioitinh] = @gioitinh, [ngaysinh] = @ngaysinh, [malop] = @malop, [diachi] = @diachi, [quequan] = @quequan, [sdt] = @sdt, [bachoc] = @bachoc, [nienkhoa] = @nienkhoa WHERE [masv] = @masv">
        <DeleteParameters>
            <asp:Parameter Name="masv" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="id" Type="Int32" />
            <asp:Parameter Name="hoten" Type="String" />
            <asp:Parameter Name="gioitinh" Type="String" />
            <asp:Parameter Name="ngaysinh" Type="DateTime" />
            <asp:Parameter Name="malop" Type="String" />
            <asp:Parameter Name="diachi" Type="String" />
            <asp:Parameter Name="quequan" Type="String" />
            <asp:Parameter Name="sdt" Type="String" />
            <asp:Parameter Name="bachoc" Type="String" />
            <asp:Parameter Name="nienkhoa" Type="String" />
            <asp:Parameter Name="masv" Type="String" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="masv" Type="String" />
            <asp:Parameter Name="hoten" Type="String" />
            <asp:Parameter Name="gioitinh" Type="String" />
            <asp:Parameter Name="ngaysinh" Type="DateTime" />
            <asp:Parameter Name="malop" Type="String" />
            <asp:Parameter Name="diachi" Type="String" />
            <asp:Parameter Name="quequan" Type="String" />
            <asp:Parameter Name="sdt" Type="String" />
            <asp:Parameter Name="bachoc" Type="String" />
            <asp:Parameter Name="nienkhoa" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    <br />    
    <br />
    <table style="width: 100%; text-align: right;">
        <tr>
            <td style="width: 50%">
                <asp:Label ID="Label2" runat="server" Text="Mã SV"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:TextBox ID="txtmasv" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtmasv" Display="Dynamic" 
                    ErrorMessage="Không được để trống"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 50%">
                <asp:Label ID="Label3" runat="server" Text="Tên SV"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:TextBox ID="txtensv" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtensv" Display="Dynamic" 
                    ErrorMessage="Không được để trống"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 50%">
                <asp:Label ID="Label4" runat="server" Text="Ngày Sinh"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:TextBox ID="txtngaysinh" runat="server"></asp:TextBox>
                <asp:CalendarExtender ID="txtngaysinh_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="txtngaysinh">
                </asp:CalendarExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtngaysinh" Display="Dynamic" 
                    ErrorMessage="Không được để trống"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 50%">
                <asp:Label ID="Label5" runat="server" Text="Giới Tính"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:DropDownList ID="ddgioitinh" runat="server">
                    <asp:ListItem>Nam</asp:ListItem>
                    <asp:ListItem>Nữ</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 50%">
                <asp:Label ID="Label6" runat="server" Text="Quê Quán"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:TextBox ID="txtquequan" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtquequan" Display="Dynamic" 
                    ErrorMessage="Không được để trống"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 50%">
                <asp:Label ID="Label7" runat="server" Text="Lớp"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:DropDownList ID="ddlop" runat="server">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="ddlop" Display="Dynamic" 
                    ErrorMessage="Không được để trống"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 50%">
                <asp:Label ID="Label8" runat="server" Text="Địa chỉ"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:TextBox ID="txtdiachi" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtdiachi" Display="Dynamic" 
                    ErrorMessage="Không được để trống"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 50%">
                <asp:Label ID="Label9" runat="server" Text="Số Điện Thọai"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:TextBox ID="txtsodienthoai" runat="server"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator2" runat="server" 
                    ControlToValidate="txtsodienthoai" Display="Dynamic" 
                    ErrorMessage="Nhập đúng định dạng số" Type="Double"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 50%">
                <asp:Label ID="Label10" runat="server" Text="Bậc học"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:DropDownList ID="dbbachoc" runat="server">
                    <asp:ListItem>Trung Cấp</asp:ListItem>
                    <asp:ListItem>Cao Đẳng</asp:ListItem>
                    <asp:ListItem>Đại Học</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 50%">
                <asp:Label ID="Label11" runat="server" Text="Niên Khóa"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:TextBox ID="txtnienkhoa" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtnienkhoa" Display="Dynamic" 
                    ErrorMessage="Không được để trống"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator3" runat="server" 
                    ControlToValidate="txtnienkhoa" Display="Dynamic" 
                    ErrorMessage="Nhập đúng định dạng số" Type="Double"></asp:RangeValidator>
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
    
    <asp:ImageButton ID="imgthem" runat="server" ImageUrl="~/icon/Add.png" 
        ToolTip="Thêm mới" onclick="imgthem_Click" />
&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="imgcapnhat" runat="server" ImageUrl="~/icon/Load.png" 
        ToolTip="Cập nhật" onclick="imgcapnhat_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="imgxoa" runat="server" ImageUrl="~/icon/Delete.png" 
        ToolTip="Xóa" onclick="imgxoa_Click" />

</asp:Content>

