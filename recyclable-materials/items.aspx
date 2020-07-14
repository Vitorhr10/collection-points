<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="items.aspx.cs" Inherits="recyclable_materials.items" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center">
            Cadastro dos items<br/>
            <br />
            <a href="items.aspx">Items de coleta</a><br />
            <br />
            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="item_id" DataSourceID="conexao" DefaultMode="Insert" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="item_id" HeaderText="item_id" InsertVisible="False" ReadOnly="True" SortExpression="item_id" />
                    <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                    <asp:ButtonField ButtonType="Button" CommandName="Insert" Text="Inserir" />
                </Fields>
            </asp:DetailsView>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="item_id" DataSourceID="conexao">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="item_id" HeaderText="item_id" InsertVisible="False" ReadOnly="True" SortExpression="item_id" />
                    <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="conexao" runat="server" ConnectionString="<%$ ConnectionStrings:Points %>" DeleteCommand="DELETE FROM [items] WHERE [item_id] = @item_id" InsertCommand="INSERT INTO [items] ([title]) VALUES (@title)" SelectCommand="SELECT * FROM [items]" UpdateCommand="UPDATE [items] SET [title] = @title WHERE [item_id] = @item_id">
                <DeleteParameters>
                    <asp:Parameter Name="item_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="title" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="title" Type="String" />
                    <asp:Parameter Name="item_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
            <div style="text-align: right";><a href="default.aspx">Voltar</a></div>
        </div>
    </form>
</body>
</html>
