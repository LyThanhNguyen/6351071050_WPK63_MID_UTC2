<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucCategory.ascx.cs" Inherits="de1.UserControl.ucCategory" %>
<asp:ListView ID="ListView1" runat="server" DataSourceID="EntityDataSource1" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
    <AlternatingItemTemplate>
        <td runat="server" style="">Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />
            ImageFilePath:
            <asp:Label ID="ImageFilePathLabel" runat="server" Text='<%# Eval("ImageFilePath") %>' />
            <br />
            Description:
            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
            <br />
            Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
            <br />
            CatID:
            <asp:Label ID="CatIDLabel" runat="server" Text='<%# Eval("CatID") %>' />
            <br />
        </td>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <td runat="server" style="">Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            ImageFilePath:
            <asp:TextBox ID="ImageFilePathTextBox" runat="server" Text='<%# Bind("ImageFilePath") %>' />
            <br />
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
            <br />
            Price:
            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
            <br />
            CatID:
            <asp:TextBox ID="CatIDTextBox" runat="server" Text='<%# Bind("CatID") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
        </td>
    </EditItemTemplate>
    <EmptyDataTemplate>
        <table style="">
            <tr>
                <td>No data was returned.</td>
            </tr>
        </table>
    </EmptyDataTemplate>
    <InsertItemTemplate>
        <td runat="server" style="">Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            ImageFilePath:
            <asp:TextBox ID="ImageFilePathTextBox" runat="server" Text='<%# Bind("ImageFilePath") %>' />
            <br />
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
            <br />
            Price:
            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
            <br />
            CatID:
            <asp:TextBox ID="CatIDTextBox" runat="server" Text='<%# Bind("CatID") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
        </td>
    </InsertItemTemplate>
    <ItemTemplate>
        <td runat="server" style="">Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />
            ImageFilePath:
            <asp:Label ID="ImageFilePathLabel" runat="server" Text='<%# Eval("ImageFilePath") %>' />
            <br />
            Description:
            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
            <br />
            Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
            <br />
            CatID:
            <asp:Label ID="CatIDLabel" runat="server" Text='<%# Eval("CatID") %>' />
            <br />
        </td>
    </ItemTemplate>
    <LayoutTemplate>
        <table runat="server" border="0" style="">
            <tr id="itemPlaceholderContainer" runat="server">
                <td id="itemPlaceholder" runat="server"></td>
            </tr>
        </table>
        <div style="">
        </div>
    </LayoutTemplate>
    <SelectedItemTemplate>
        <td runat="server" style="">
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />
            <asp:Label ID="ImageFilePathLabel" runat="server" Text='<%# Eval("ImageFilePath") %>' />
            <br />
            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
            <br />
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
            <br />
            <asp:Label ID="CatIDLabel" runat="server" Text='<%# Eval("CatID") %>' />
            <br />
        </td>
    </SelectedItemTemplate>
</asp:ListView>
<asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=QLDoUong" DefaultContainerName="QLDoUong" EnableFlattening="False" EntitySetName="Beverages" OnSelecting="EntityDataSource1_Selecting" Select="it.[Name], it.[ImageFilePath], it.[Description], it.[Price], it.[CatID]">
</asp:EntityDataSource>

