<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Survey.aspx.cs" Inherits="Comp229_Assign02.Survey" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <p>
            When you are finished visiting Dell's support site, please take a minute to answer this quick survey.
            Your feedback is critical to helping us improve how we can better meet your needs.
        </p>
        <div class="form-group">
            <label>What are your reasons for visiting the Dell support website today?</label>
            <asp:DropDownList ID="ddlQuestion1" runat="server">
                <asp:ListItem Text="Please choose one" Value="" />
                <asp:ListItem Text="Solve a technical problem" Value="one" />
                <asp:ListItem Text="Obtain order status" Value="two" />
                <asp:ListItem Text="Obtain system information" Value="three" />
                <asp:ListItem Text="Considering purchasing a Dell product" Value="four" />
            </asp:DropDownList>
            <asp:RequiredFieldValidator runat="server" ID="rfvQuestion1" ControlToValidate="ddlQuestion1" ErrorMessage="Please select one"></asp:RequiredFieldValidator>
        </div>

        <div class="form-group">
            <label>If the Dell support website had not been available, would you have called Dell?</label>
            <asp:RadioButtonList runat="server" ID="Question2">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator runat="server" ID="rfvQuestion2" ControlToValidate="Question2" 
                ErrorMessage="required"></asp:RequiredFieldValidator>
        </div>

        <div class="form-group">
            <label>How often do you visit the Dell support website?</label>
            <asp:RadioButtonList runat="server" ID="Question3">
                <asp:ListItem>Daily</asp:ListItem>
                <asp:ListItem>Weekly</asp:ListItem>
                <asp:ListItem>Monthly</asp:ListItem>
                <asp:ListItem>A few times a year</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator runat="server" ID="rfvQuestion3" ControlToValidate="Question3" ErrorMessage="required"></asp:RequiredFieldValidator>
        </div>

        <div class="form-group">
            <fieldset>
                <legend>Personal Information</legend>
                <div class="form-group">
                    <label>First Name</label>
                    <asp:TextBox TextMode="SingleLine" ID="FirstNameTxt" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="rfvFirstName" ControlToValidate="FirstNameTxt" ErrorMessage="First Name is required" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label>Last Name</label>
                    <asp:TextBox TextMode="SingleLine" ID="LastNameTxt" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="rfvLastNameTxt" ControlToValidate="LastNameTxt" ErrorMessage="Last Name is required" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label>Email</label>
                    <asp:TextBox TextMode="Email" ID="Emailtxt" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator runat="server" ID="revEmail" ControlToValidate="Emailtxt" ValidationExpression="^\S+@\S+\.\S+$" ErrorMessage="You must enter a valid email address!" Display="Dynamic"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator runat="server" ID="rfvEmail" ControlToValidate="Emailtxt" ErrorMessage="An email address is required"></asp:RequiredFieldValidator>
                </div>
            </fieldset>
        </div>
        <asp:Button runat="server" type="submit" ID="btnSubmit" Text="Submit" CssClass="btn btn-default" OnClick="btnSubmit_Click"></asp:Button>
    </div>
</asp:Content>
