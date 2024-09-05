<%@ Page Title="" Language="C#" MasterPageFile="~/RailwayTicket.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="InternshipFinalProject.LogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div>
        <h1 class="PageHeading">Log In</h1>
        <div id="FormContanier">
            <formview>
            <asp:Label CssClass="lable" ID="Label1" runat="server" Text="User Name:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox CssClass="textbox" ID="Username" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Username" ErrorMessage="User Name is not Entered" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label CssClass="lable" ID="Label2" runat="server" Text="Password:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox CssClass="textbox" ID="Passwords" TextMode="Password" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Passwords" ErrorMessage="Password is Not Entered" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="InvalidCredentials" runat="server" Visible="false" Text="InvalidCredentials" ForeColor="Red"></asp:Label>
            <br />
            <br />
            <div id="SubmitButton">
                <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click" />
            </div>
        </formview>
        </div>
        <div>
            <asp:LinkButton ID="LinkButton1" CssClass="link" runat="server" href="SignUp.aspx">Don't have Account: SignUp Here</asp:LinkButton>
        </div>
    </div>
</asp:Content>
