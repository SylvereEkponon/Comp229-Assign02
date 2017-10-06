<%@ Page Title="ThankYou" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ThankYou.aspx.cs" Inherits="Comp229_Assign02.ThankYou" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <p>
        Thank You <%=Session["FName"] %> <%=Session["LName"] %> for taking your time to complete this survey
    </p>
        </div>
</asp:Content>
