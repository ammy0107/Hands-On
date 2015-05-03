<%@ Page Title="" Language="C#" MasterPageFile="~/Mobile/ProfessorFiles/MobileProfessor.Master" AutoEventWireup="true" CodeBehind="ProfessorHome .cs" Inherits="Thesis_project_Repository.Mobile.ProfessorFiles.ProfessorHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <ul class="nav nav-pills nav-stacked">
			  <li ><a href="ProfessorHome "><span class="glyphicon glyphicon-home"></span>&nbsp;Home</a></li>
                        <li ><a href="UpdateProfessorProfile "><span class="glyphicon glyphicon-pencil"></span>&nbsp;Update Profile</a></li>
                        <li><a href="SearchProjects "><span class="glyphicon glyphicon-search"></span>&nbsp;Search Projects</a></li>
                         <li><a href="ProjectList "><span class="glyphicon glyphicon-th-list"></span>&nbsp;Project Lists</a></li>
                         <li><a href="DeleteAccount "><span class="glyphicon glyphicon-trash"></span>&nbsp;Delete Profile</a></li>
                   <li> <a href="../Logout "><span class="glyphicon glyphicon-off"></span>&nbsp;Log Out</a>	</li>
    </ul>
</asp:Content>
