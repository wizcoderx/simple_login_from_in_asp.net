<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication2.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        data list below<br />
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                USERNAME:
                <asp:Label ID="USERNAMELabel" runat="server" Text='<%# Eval("USERNAME") %>' />
                <br />
                PASSWORD:
                <asp:Label ID="PASSWORDLabel" runat="server" Text='<%# Eval("PASSWORD") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:web_applicationConnectionString %>" SelectCommand="SELECT * FROM [NEW_USER]"></asp:SqlDataSource>
        <br />
        Details view below<br />
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
        </asp:DetailsView>
        <br />
        form view is below
        <br />
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                USERNAME:
                <asp:TextBox ID="USERNAMETextBox" runat="server" Text='<%# Bind("USERNAME") %>' />
                <br />
                PASSWORD:
                <asp:TextBox ID="PASSWORDTextBox" runat="server" Text='<%# Bind("PASSWORD") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                USERNAME:
                <asp:TextBox ID="USERNAMETextBox" runat="server" Text='<%# Bind("USERNAME") %>' />
                <br />
                PASSWORD:
                <asp:TextBox ID="PASSWORDTextBox" runat="server" Text='<%# Bind("PASSWORD") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                USERNAME:
                <asp:Label ID="USERNAMELabel" runat="server" Text='<%# Bind("USERNAME") %>' />
                <br />
                PASSWORD:
                <asp:Label ID="PASSWORDLabel" runat="server" Text='<%# Bind("PASSWORD") %>' />
                <br />

            </ItemTemplate>
        </asp:FormView>
        <br />
        <br />
        grid view is below<br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="USERNAME" HeaderText="USERNAME" SortExpression="USERNAME" />
                <asp:BoundField DataField="PASSWORD" HeaderText="PASSWORD" SortExpression="PASSWORD" />
            </Columns>
        </asp:GridView>
        <br />
        list-view is below<br />
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="USERNAMELabel" runat="server" Text='<%# Eval("USERNAME") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PASSWORDLabel" runat="server" Text='<%# Eval("PASSWORD") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:TextBox ID="USERNAMETextBox" runat="server" Text='<%# Bind("USERNAME") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="PASSWORDTextBox" runat="server" Text='<%# Bind("PASSWORD") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>
                        <asp:TextBox ID="USERNAMETextBox" runat="server" Text='<%# Bind("USERNAME") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="PASSWORDTextBox" runat="server" Text='<%# Bind("PASSWORD") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="USERNAMELabel" runat="server" Text='<%# Eval("USERNAME") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PASSWORDLabel" runat="server" Text='<%# Eval("PASSWORD") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                <tr runat="server" style="">
                                    <th runat="server">USERNAME</th>
                                    <th runat="server">PASSWORD</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style=""></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="USERNAMELabel" runat="server" Text='<%# Eval("USERNAME") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PASSWORDLabel" runat="server" Text='<%# Eval("PASSWORD") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
    </form>
</body>
</html>
