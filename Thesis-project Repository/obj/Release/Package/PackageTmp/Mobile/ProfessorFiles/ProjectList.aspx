<%@ Page Title="" Language="C#" MasterPageFile="~/Mobile/ProfessorFiles/MobileProfessor.Master" AutoEventWireup="true" CodeBehind="ProjectList.aspx.cs" Inherits="Thesis_project_Repository.Mobile.ProfessorFiles.ProjectList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading" style="text-align:center;"><b>Project Approval List</b></div>
         <div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading"><b>List of Preliminary Reports</b></div>
   <asp:Label ID="preliminaryprojectlist" runat="server"></asp:Label></div>

         <div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading"><b>List of Final Project Reports</b></div>       
   <asp:Label ID="finalProjectlist" runat="server"></asp:Label>
              </div>

           <div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading"><b>List of Thesis</b></div>
       <asp:Label ID="thesisproject" runat="server"></asp:Label>
       </div>
         </div>

</asp:Content>
