<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" %>

<script runat="server">

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {

    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Product Table:</p>
<p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="pId" DataSourceID="SqlDataSource2" GridLines="Horizontal">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="pId" HeaderText="pId" ReadOnly="True" SortExpression="pId" />
                <asp:BoundField DataField="Pname" HeaderText="Pname" SortExpression="Pname" />
                <asp:BoundField DataField="Pprice" HeaderText="Pprice" SortExpression="Pprice" />
                <asp:BoundField DataField="Pquantity" HeaderText="Pquantity" SortExpression="Pquantity" />
                <asp:BoundField DataField="Pdescription" HeaderText="Pdescription" SortExpression="Pdescription" />
                <asp:CommandField HeaderText="Edit" ShowEditButton="True" ShowHeader="True" />
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [product] WHERE [pId] = @original_pId AND [Pname] = @original_Pname AND [Pprice] = @original_Pprice AND [Pquantity] = @original_Pquantity AND [Pdescription] = @original_Pdescription" InsertCommand="INSERT INTO [product] ([pId], [Pname], [Pprice], [Pquantity], [Pdescription]) VALUES (@pId, @Pname, @Pprice, @Pquantity, @Pdescription)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [product] ORDER BY [pId]" UpdateCommand="UPDATE [product] SET [Pname] = @Pname, [Pprice] = @Pprice, [Pquantity] = @Pquantity, [Pdescription] = @Pdescription WHERE [pId] = @original_pId AND [Pname] = @original_Pname AND [Pprice] = @original_Pprice AND [Pquantity] = @original_Pquantity AND [Pdescription] = @original_Pdescription">
            <DeleteParameters>
                <asp:Parameter Name="original_pId" Type="Int32" />
                <asp:Parameter Name="original_Pname" Type="String" />
                <asp:Parameter Name="original_Pprice" Type="String" />
                <asp:Parameter Name="original_Pquantity" Type="Int32" />
                <asp:Parameter Name="original_Pdescription" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="pId" Type="Int32" />
                <asp:Parameter Name="Pname" Type="String" />
                <asp:Parameter Name="Pprice" Type="String" />
                <asp:Parameter Name="Pquantity" Type="Int32" />
                <asp:Parameter Name="Pdescription" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Pname" Type="String" />
                <asp:Parameter Name="Pprice" Type="String" />
                <asp:Parameter Name="Pquantity" Type="Int32" />
                <asp:Parameter Name="Pdescription" Type="String" />
                <asp:Parameter Name="original_pId" Type="Int32" />
                <asp:Parameter Name="original_Pname" Type="String" />
                <asp:Parameter Name="original_Pprice" Type="String" />
                <asp:Parameter Name="original_Pquantity" Type="Int32" />
                <asp:Parameter Name="original_Pdescription" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [product] ORDER BY [pId]"></asp:SqlDataSource>
</p>
    </asp:Content>

