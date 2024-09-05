<%@ Page Title="" Language="C#" MasterPageFile="~/RailwayTicket.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="InternshipFinalProject.SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
        <h1 class="PageHeading">Sign Up</h1>
        <div id="FormContanier">
            <from>
                <asp:Label CssClass="lable" ID="Label1" runat="server" Text="First Name:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox CssClass="textbox" ID="Firstname" required="" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                <br />
                <br />
                <asp:Label CssClass="lable" ID="Label2" runat="server" Text="Last Name:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox CssClass="textbox" ID="Lastname" required="" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                <br />
                <br />
                <asp:Label CssClass="lable" ID="Label3" runat="server" Text="User Name:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox CssClass="textbox" ID="Username" required="" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                <br />
                <br />
                <asp:Label CssClass="lable" ID="Label4" runat="server" Text="Password:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox CssClass="textbox" ID="password" required="" TextMode="Password" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                <br />
                <br />
                <asp:Label CssClass="lable" ID="Label5" runat="server" Text="Conifrm Password:"></asp:Label>
                &nbsp;&nbsp;
                <asp:TextBox CssClass="textbox" ID="confirmpassword" required="" TextMode="Password" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <asp:CompareValidator style="font-size:18px" ID="CompareValidator1" runat="server" ErrorMessage="Password and Confirm Password Not Matched" ControlToCompare="confirmpassword" ControlToValidate="password" ForeColor="Red">*Password and Confirm Password Not Matched</asp:CompareValidator>
                <br />
                <asp:Label CssClass="lable" ID="Label6" runat="server" Text="Phone No.:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox CssClass="textbox" ID="phonenumber" required="" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                <br />
                <br />
                <asp:Label CssClass="lable" ID="Label7" runat="server" Text="Address:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox CssClass="textbox" ID="address" required="" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                <br />
                <br />
                <div id="SubmitButton">
                    <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click" />
                </div>
            </from>
        </div>
        <div>
            <a href="LogIn.aspx" style="color: white; font-size: 2rem; text-align: center;">
                <asp:Label ID="Label8" runat="server" Visible="true" Text="CLICK HERE TO GO TO LOG IN"></asp:Label>
            </a>
        </div>
    </div>
</asp:Content>
