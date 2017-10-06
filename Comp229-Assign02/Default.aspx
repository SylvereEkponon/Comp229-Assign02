<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Comp229_Assign02.Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="jumbotron">
            <%--<img src="Assets/humbotronImage.jpg" />--%>
            <img src="Assets/dellxp13.jpg" width="800"/>
            <hr class="my-4">
            <p>
                When you are finished visiting Dell's support site, please take a minute to answer this quick survey.
            Your feedback is critical to helping us improve how we can better meet your needs.
            </p>
            <p class="lead">
                <a class="btn btn-primary btn-lg" href="Survey.aspx" role="button">Take Survey</a>
            </p>
        </div>
    </div>
</asp:Content>
