<%@ Page Title="" Language="C#" MasterPageFile="~/Mobile/ProfessorFiles/MobileProfessor.Master" AutoEventWireup="true" CodeBehind="Authentication.aspx.cs" Inherits="Thesis_project_Repository.Mobile.ProfessorFiles.Authentication" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="defaultviews">
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <asp:View ID="View1" runat="server">
                   <%-- <p>Enable Two-Way Authentication?</p>
                    <div class="input-group" style="text-align: center; padding-top: 0.3em;">
                        <asp:RadioButtonList ID="enable" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Text="Yes" Value="Y" />
                            <asp:ListItem Text="No" Value="N" />
                        </asp:RadioButtonList>
                        &nbsp;&nbsp;
                                <asp:RequiredFieldValidator ControlToValidate="enable" ID="RequiredFieldValidator9" runat="server" ErrorMessage="**"></asp:RequiredFieldValidator>
                    </div>--%>
                    <p>Method by which you want to receive the code for Two-way Authentication?</p>
                    <div class="input-group" style="text-align: center; padding-top: 0.3em;">
                        <asp:RadioButtonList ID="method" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Text="Email" Value="E" />
                            <asp:ListItem Text="Mobile" Value="M" />
                        </asp:RadioButtonList>
                        &nbsp;&nbsp;
                                <asp:RequiredFieldValidator ControlToValidate="method" ID="RequiredFieldValidator1" runat="server" ErrorMessage="**"></asp:RequiredFieldValidator>
                    </div>
                    <div class="btn-group" role="group" aria-label="..." style="text-align: center; padding-top: 0.3em;">
                        <asp:Button Text="Enable" class="btn btn-default" ID="submit" runat="server" OnClick="Enable"></asp:Button>
                    </div>
                    <asp:Label ForeColor="Red" ID="enableStatus" runat="server" Text=""></asp:Label>
            
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <p>Disable Two-Way Authentication?</p>

                    <div class="btn-group" role="group" aria-label="..." style="text-align: center; padding-top: 0.3em;">
                        <asp:Button Text="Disable" class="btn btn-default" ID="disable" runat="server" OnClick="Disable"></asp:Button>
                    </div>
                     <asp:Label ForeColor="Red" ID="disableStatus" runat="server" Text=""></asp:Label>
                </asp:View>
            </asp:MultiView>
        </div>

    </div>
</asp:Content>
