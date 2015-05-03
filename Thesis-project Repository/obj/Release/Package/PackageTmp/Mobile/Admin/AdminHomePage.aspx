<%@ Page Title="" Language="C#" MasterPageFile="~/Mobile/Admin/MobileAdmin.Master" AutoEventWireup="true" CodeBehind="AdminHomePage.aspx.cs" Inherits="Thesis_project_Repository.Mobile.Admin.AdminHomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminMaster" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <ul class="nav nav-pills nav-stacked">
			 <li><a href="AdminHomePage.aspx"><span class="glyphicon glyphicon-home"></span>&nbsp;Home</a></li>
                        <li><a href="AdminUserApproval.aspx"><span class="glyphicon glyphicon-thumbs-up"></span>&nbsp;Approve User</a></li>
                        <li><a href="AdminDashBoard.aspx"><span class="glyphicon glyphicon-hdd"></span>&nbsp;Dashboard</a></li>
                        <li><a href="SearchProject.aspx"><span class="glyphicon glyphicon-search"></span>&nbsp;Search Projects</a></li>
	<li> <a href="../Logout.aspx"><span class="glyphicon glyphicon-off"></span>&nbsp;Log Out</a>	</li>
    </ul>
</asp:Content>
