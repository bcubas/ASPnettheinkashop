<%@ Page Title="The Balloons Festiva- Ballons" Language="VB" MasterPageFile="~/balloonmainMasterPage2.master" AutoEventWireup="false" CodeFile="Balloons.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>
        Balloons</h1>
<p>
        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
    Area to complete balloon database functions</p>
    <p>
        Display Balloons in a gridview&nbsp; from the Balloons Table</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="Balloon_Id" DataSourceID="SqlDataSource1" GridLines="None" Width="1146px">
            <Columns>
                <asp:BoundField DataField="Balloon_Id" HeaderText="Balloon_Id" InsertVisible="False" ReadOnly="True" SortExpression="Balloon_Id" />
                <asp:BoundField DataField="Balloon_Name" HeaderText="Balloon_Name" SortExpression="Balloon_Name" />
                <asp:BoundField DataField="Balloon_Description" HeaderText="Balloon_Description" SortExpression="Balloon_Description" />
                <asp:BoundField DataField="Balloon_Image" HeaderText="Balloon_Image" SortExpression="Balloon_Image" />
                <asp:BoundField DataField="Ballon_Pilot" HeaderText="Ballon_Pilot" SortExpression="Ballon_Pilot" />
                <asp:BoundField DataField="Homeplace" HeaderText="Homeplace" SortExpression="Homeplace" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Balloons] ORDER BY [Homeplace]"></asp:SqlDataSource>
    </p>
    <p>
        Display Balloons table Data in a formview or detail view</p>
    <p>
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource2" GridLines="Both" Width="570px">
            <EditItemTemplate>
                Balloon_Name:
                <asp:TextBox ID="Balloon_NameTextBox" runat="server" Text='<%# Bind("Balloon_Name") %>' />
                <br />
                Balloon_Description:
                <asp:TextBox ID="Balloon_DescriptionTextBox" runat="server" Text='<%# Bind("Balloon_Description") %>' />
                <br />
                Ballon_Pilot:
                <asp:TextBox ID="Ballon_PilotTextBox" runat="server" Text='<%# Bind("Ballon_Pilot") %>' />
                <br />
                Homeplace:
                <asp:TextBox ID="HomeplaceTextBox" runat="server" Text='<%# Bind("Homeplace") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <InsertItemTemplate>
                Balloon_Name:
                <asp:TextBox ID="Balloon_NameTextBox" runat="server" Text='<%# Bind("Balloon_Name") %>' />
                <br />
                Balloon_Description:
                <asp:TextBox ID="Balloon_DescriptionTextBox" runat="server" Text='<%# Bind("Balloon_Description") %>' />
                <br />
                Ballon_Pilot:
                <asp:TextBox ID="Ballon_PilotTextBox" runat="server" Text='<%# Bind("Ballon_Pilot") %>' />
                <br />
                Homeplace:
                <asp:TextBox ID="HomeplaceTextBox" runat="server" Text='<%# Bind("Homeplace") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Balloon_Name:
                <asp:Label ID="Balloon_NameLabel" runat="server" Text='<%# Bind("Balloon_Name") %>' />
                <br />
                Balloon_Description:
                <asp:Label ID="Balloon_DescriptionLabel" runat="server" Text='<%# Bind("Balloon_Description") %>' />
                <br />
                Ballon_Pilot:
                <asp:Label ID="Ballon_PilotLabel" runat="server" Text='<%# Bind("Ballon_Pilot") %>' />
                <br />
                Homeplace:
                <asp:Label ID="HomeplaceLabel" runat="server" Text='<%# Bind("Homeplace") %>' />
                <br />
            </ItemTemplate>
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Balloon_Name], [Balloon_Description], [Ballon_Pilot], [Homeplace] FROM [Balloons] ORDER BY [Balloon_Name]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="Balloon_Id" DataSourceID="SqlDataSource3" Height="50px" Width="641px">
            <Fields>
                <asp:BoundField DataField="Balloon_Id" HeaderText="Balloon_Id" InsertVisible="False" ReadOnly="True" SortExpression="Balloon_Id" />
                <asp:BoundField DataField="Balloon_Name" HeaderText="Balloon_Name" SortExpression="Balloon_Name" />
                <asp:BoundField DataField="Balloon_Description" HeaderText="Balloon_Description" SortExpression="Balloon_Description" />
                <asp:BoundField DataField="Balloon_Image" HeaderText="Balloon_Image" SortExpression="Balloon_Image" />
                <asp:BoundField DataField="Ballon_Pilot" HeaderText="Ballon_Pilot" SortExpression="Ballon_Pilot" />
                <asp:BoundField DataField="Homeplace" HeaderText="Homeplace" SortExpression="Homeplace" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Balloons] WHERE [Balloon_Id] = @Balloon_Id" InsertCommand="INSERT INTO [Balloons] ([Balloon_Name], [Balloon_Description], [Balloon_Image], [Ballon_Pilot], [Homeplace]) VALUES (@Balloon_Name, @Balloon_Description, @Balloon_Image, @Ballon_Pilot, @Homeplace)" SelectCommand="SELECT * FROM [Balloons]" UpdateCommand="UPDATE [Balloons] SET [Balloon_Name] = @Balloon_Name, [Balloon_Description] = @Balloon_Description, [Balloon_Image] = @Balloon_Image, [Ballon_Pilot] = @Ballon_Pilot, [Homeplace] = @Homeplace WHERE [Balloon_Id] = @Balloon_Id">
            <DeleteParameters>
                <asp:Parameter Name="Balloon_Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Balloon_Name" Type="String" />
                <asp:Parameter Name="Balloon_Description" Type="String" />
                <asp:Parameter Name="Balloon_Image" Type="String" />
                <asp:Parameter Name="Ballon_Pilot" Type="Int32" />
                <asp:Parameter Name="Homeplace" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Balloon_Name" Type="String" />
                <asp:Parameter Name="Balloon_Description" Type="String" />
                <asp:Parameter Name="Balloon_Image" Type="String" />
                <asp:Parameter Name="Ballon_Pilot" Type="Int32" />
                <asp:Parameter Name="Homeplace" Type="String" />
                <asp:Parameter Name="Balloon_Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

