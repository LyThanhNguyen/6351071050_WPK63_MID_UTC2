<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Default.ascx.cs" Inherits="de1.UserControl.WebUserControl1" %>
<asp:DataList ID="DataList1" runat="server" DataSourceID="EntityDataSource1">
    <ItemTemplate>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "/Category1.aspx?CatID="+Eval("CatName") %>' Text='<%# Eval("CatName") %>'></asp:HyperLink>
<br />
    </ItemTemplate>
</asp:DataList>
<asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=QLDoUong" DefaultContainerName="QLDoUong" EnableFlattening="False" EntitySetName="Categories" Select="it.[CatName]">
</asp:EntityDataSource>



