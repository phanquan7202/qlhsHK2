<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Admin_ThongTinGiaoVien.aspx.cs" Inherits="Admin_ThongTinGiaoVien" Title="Administrator - Thông Tin Giáo Viên" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="16pt" 
        ForeColor="#33CC33" Text="Thông Tin Giáo Viên"></asp:Label>
    <br />
    <asp:ToolkitScriptManager ID="ScriptManager1" runat="server"> 
</asp:ToolkitScriptManager>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="magv" 
        ForeColor="#333333" GridLines="None" PageSize="5">
        <RowStyle BackColor="#EFF3FB" />
        <Columns>
            <asp:BoundField DataField="magv" HeaderText="Mã Giáo Viên" ReadOnly="True" 
                SortExpression="magv" />
            <asp:BoundField DataField="tengv" HeaderText="Tên Giáo Viên" 
                SortExpression="tengv" />
            <asp:BoundField DataField="gioitinh" HeaderText="Giới tính" 
                SortExpression="gioitinh" />
            <asp:BoundField DataField="ngaysinh" HeaderText="Ngày sinh" 
                SortExpression="ngaysinh" />
            <asp:BoundField DataField="diachi" HeaderText="Địa chỉ" 
                SortExpression="diachi" />
            <asp:BoundField DataField="quequan" HeaderText="Quê quán" 
                SortExpression="quequan" />
            <asp:BoundField DataField="sdt" HeaderText="Số điện thọai" 
                SortExpression="sdt" />
            <asp:BoundField DataField="capbac" HeaderText="Cấp bậc" 
                SortExpression="capbac" />
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
            <asp:BoundField DataField="ngayvaolam" HeaderText="Ngày vào làm" 
                SortExpression="ngayvaolam" />
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
        DeleteCommand="DELETE FROM [giaovien] WHERE [magv] = @magv" 
        InsertCommand="INSERT INTO [giaovien] ([magv], [tengv], [gioitinh], [ngaysinh], [diachi], [quequan], [sdt], [capbac], [email], [ngayvaolam]) VALUES (@magv, @tengv, @gioitinh, @ngaysinh, @diachi, @quequan, @sdt, @capbac, @email, @ngayvaolam)" 
        SelectCommand="SELECT * FROM [giaovien]" 
        UpdateCommand="UPDATE [giaovien] SET [tengv] = @tengv, [gioitinh] = @gioitinh, [ngaysinh] = @ngaysinh, [diachi] = @diachi, [quequan] = @quequan, [sdt] = @sdt, [capbac] = @capbac, [email] = @email, [ngayvaolam] = @ngayvaolam WHERE [magv] = @magv">
        <DeleteParameters>
            <asp:ControlParameter ControlID="txtmagv" Name="magv" PropertyName="Text" 
                Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:ControlParameter ControlID="txthoten" Name="tengv" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="ddgioitinh" Name="gioitinh" 
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="txtngaysinh" Name="ngaysinh" 
                PropertyName="Text" Type="DateTime" />
            <asp:ControlParameter ControlID="txtdiachi" Name="diachi" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="txtquequan" Name="quequan" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="txtsdt" Name="sdt" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="dbcapbac" Name="capbac" 
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="txtemail" Name="email" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="txtngayvaolam" Name="ngayvaolam" 
                PropertyName="Text" Type="DateTime" />
            <asp:ControlParameter ControlID="txtmagv" Name="magv" PropertyName="Text" 
                Type="String" />
        </UpdateParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="txtmagv" Name="magv" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="txthoten" Name="tengv" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="ddgioitinh" Name="gioitinh" 
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="txtngaysinh" Name="ngaysinh" 
                PropertyName="Text" Type="DateTime" />
            <asp:ControlParameter ControlID="txtdiachi" Name="diachi" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="txtquequan" Name="quequan" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="txtsdt" Name="sdt" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="dbcapbac" Name="capbac" 
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="txtemail" Name="email" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="txtngayvaolam" Name="ngayvaolam" 
                PropertyName="Text" Type="DateTime" />
        </InsertParameters>
    </asp:SqlDataSource>
    <br />
    <br />   
    <table style="width: 100%; text-align: right;" align="center">
        <tr>
            <td style="width: 50%">
                <asp:Label ID="Label2" runat="server" Text="Mã Giáo Viên"></asp:Label>
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
                <asp:Label ID="Label3" runat="server" Text="Họ và tên"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:TextBox ID="txthoten" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txthoten" Display="Dynamic" 
                    ErrorMessage="Không được để trống"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label13" runat="server" Text="Ngày sinh"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:TextBox ID="txtngaysinh" runat="server"></asp:TextBox>
                <asp:CalendarExtender ID="txtngaysinh_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="txtngaysinh">
                </asp:CalendarExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="txtngaysinh" Display="Dynamic" 
                    ErrorMessage="Không được để trống"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Giới Tính"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:DropDownList ID="ddgioitinh" runat="server">
                    <asp:ListItem>Nam</asp:ListItem>
                    <asp:ListItem>Nữ</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Địa Chỉ"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:TextBox ID="txtdiachi" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtdiachi" Display="Dynamic" 
                    ErrorMessage="Không được để trống"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Số Điện Thọai"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:TextBox ID="txtsdt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label9" runat="server" Text="Quê quán"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:TextBox ID="txtquequan" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="txtquequan" Display="Dynamic" 
                    ErrorMessage="Không được để trống"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label10" runat="server" Text="Cấp bậc"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:DropDownList ID="dbcapbac" runat="server">
                    <asp:ListItem>Đại học</asp:ListItem>
                    <asp:ListItem>Cao Đẳng</asp:ListItem>
                    <asp:ListItem>Thạc Sĩ</asp:ListItem>
                    <asp:ListItem>Tiến Sĩ</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label11" runat="server" Text="Email"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="Nhập đúng định dạng Email" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label12" runat="server" Text="Ngày vào làm"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:TextBox ID="txtngayvaolam" runat="server"></asp:TextBox>
                <asp:CalendarExtender ID="txtngayvaolam_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="txtngayvaolam">
                </asp:CalendarExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="txtngayvaolam" Display="Dynamic" 
                    ErrorMessage="Không được để trống"></asp:RequiredFieldValidator>
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

