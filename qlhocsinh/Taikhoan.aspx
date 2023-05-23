<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Taikhoan.aspx.cs" Inherits="Taikhoan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<p>
    
    <asp:GridView ID="GridView1" runat="server" 
        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="matv" 
        ForeColor="#333333" GridLines="None" PageSize="5">
        <RowStyle BackColor="#EFF3FB" />
        <Columns>
            <asp:BoundField DataField="matv" HeaderText="Username" ReadOnly="True" 
                SortExpression="matv" />
            <asp:BoundField DataField="password1" HeaderText="Password1" 
                SortExpression="password1" />
            <asp:BoundField DataField="password2" HeaderText="Password2" 
                SortExpression="password2" />
            <asp:BoundField DataField="nhom" HeaderText="Nhóm" SortExpression="nhom" />
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
        DeleteCommand="DELETE FROM [taikhoan] WHERE [matv] = @matv" 
        InsertCommand="INSERT INTO [taikhoan] ([matv], [password1], [password2], [nhom]) VALUES (@matv, @password1, @password2, @nhom)" 
        SelectCommand="SELECT * FROM [taikhoan]" 
        UpdateCommand="UPDATE [taikhoan] SET [password1] = @password1, [password2] = @password2, [nhom] = @nhom WHERE [matv] = @matv">
        <DeleteParameters>
            <asp:ControlParameter ControlID="txtmathanhvien" Name="matv" 
                PropertyName="Text" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:ControlParameter ControlID="txtpassc1" Name="password1" 
                PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtpassc2" Name="password2" 
                PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="ddlnhom" Name="nhom" 
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="txtmathanhvien" Name="matv" 
                PropertyName="Text" Type="String" />
        </UpdateParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="txtmathanhvien" Name="matv" 
                PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtpassc1" Name="password1" 
                PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtpassc2" Name="password2" 
                PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="ddlnhom" Name="nhom" 
                PropertyName="SelectedValue" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    <br />
    
    <br />
    <table style="width: 100%">
        <tr>
            <td style="text-align: right; width: 50%;">
                <asp:Label ID="Label1" runat="server" Text="Mã thành viên"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:TextBox ID="txtmathanhvien" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtmathanhvien" Display="Dynamic" 
                    ErrorMessage="Không được để trống"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 50%;">
                <asp:Label ID="Label2" runat="server" Text="Passwordc1"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:TextBox ID="txtpassc1" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtpassc1" Display="Dynamic" 
                    ErrorMessage="Không được để trống"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 50%;">
                <asp:Label ID="Label3" runat="server" Text="Passwordc2"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:TextBox ID="txtpassc2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 50%;">
                <asp:Label ID="Label4" runat="server" Text="Nhóm"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:DropDownList ID="ddlnhom" runat="server">
                    <asp:ListItem>Quản trị</asp:ListItem>
                    <asp:ListItem>Sinh Viên</asp:ListItem>
                    <asp:ListItem>Giáo Viên</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="text-align: center; " colspan="2">
                <asp:Button ID="btnreport" runat="server" onclick="btnreport_Click" 
                    Text="Report" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
    
    <asp:ImageButton ID="imgthem" runat="server" ImageUrl="~/icon/Add.png" 
        ToolTip="Thêm mới" onclick="imgthem_Click" />
&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="imgcapnhat" runat="server" ImageUrl="~/icon/Load.png" 
        ToolTip="Cập nhật" onclick="imgcapnhat_Click" />
&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="imgxoa" runat="server" ImageUrl="~/icon/Delete.png" 
        ToolTip="Xóa" onclick="imgxoa_Click" />

            </td>
        </tr>
    </table>
    
</p>
</asp:Content>

