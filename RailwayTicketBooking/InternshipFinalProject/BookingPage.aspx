<%@ Page Title="" Language="C#" MasterPageFile="~/RailwayTicket.Master" AutoEventWireup="true" CodeBehind="BookingPage.aspx.cs" Inherits="InternshipFinalProject.SearchedTrains" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder6" runat="server">
    <div>
        <h1 class="PageHeading">Enter Details of the Passenger</h1>
        <div id="FormContanier">
            <asp:Panel ID="Panel1" runat="server">
                <asp:Label CssClass="lable" ID="Name" runat="server" Text="Enter Your Full Name:"></asp:Label>
                <asp:TextBox ID="Fullname" runat="server"></asp:TextBox>
                <br />
                <asp:Label CssClass="lable" ID="umar" runat="server" Text="Age:"></asp:Label>
                <asp:TextBox ID="age" runat="server"></asp:TextBox>
                <br />
                <asp:Label CssClass="lable" ID="ling" runat="server" Text="Gender:"></asp:Label>
                <asp:TextBox ID="gender" runat="server"></asp:TextBox>
                <br />
                <asp:Label CssClass="lable" ID="mobile" runat="server" Text="Moblie No.:"></asp:Label>
                <asp:TextBox ID="phoneno" runat="server"></asp:TextBox>
                <br />
                <asp:Label CssClass="lable" ID="passenger" runat="server" Text="Enter No. of Passenger:"></asp:Label>
                <asp:TextBox ID="passengerno" runat="server"></asp:TextBox>
            </asp:Panel>
        </div>
        <div id="SubmitButton">
            <asp:Button ID="Button2" runat="server" Text="Continue" OnClick="Continue" />
            <br />
            <br />
        </div>
        <asp:Label CssClass="lable" ID="Message" runat="server" Text="The Ticket has been booked Succesfully" Visible="False" ForeColor="Red"></asp:Label>
        <br />
        <asp:Panel ID="Panel2" Visible="false" runat="server">
            <a href="Home.aspx" >Click Here to Go To Home Page</a>
        </asp:Panel>
        <br />
        
        <br />
        

    </div>
</asp:Content>
