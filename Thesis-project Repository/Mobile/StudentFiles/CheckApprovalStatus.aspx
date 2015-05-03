<%@ Page Title="" Language="C#" MasterPageFile="~/Mobile/StudentFiles/MobileStudent.Master" AutoEventWireup="true" CodeBehind="CheckApprovalStatus.aspx.cs" Inherits="Thesis_project_Repository.Mobile.StudentFiles.CheckApprovalStatus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading">Check Approval Status</div>
         <div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading">Preliminary report</div>
    <asp:Label ID="preliminary" runat="server" Text=""></asp:Label></div>

         <div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading">Final report</div>
         <asp:Label ID="final" runat="server" Text=""></asp:Label>
       </div>
         </div>

         <div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading">Thesis</div>       
    <asp:Label ID="thesis" runat="server" Text=""></asp:Label>
              </div>

           
</asp:Content>
