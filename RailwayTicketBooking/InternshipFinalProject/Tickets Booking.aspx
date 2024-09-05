<%@ Page Title="" Language="C#" MasterPageFile="~/RailwayTicket.Master" AutoEventWireup="true" CodeBehind="Tickets Booking.aspx.cs" Inherits="InternshipFinalProject.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
    <div >
        <h1 class="PageHeading">Tickets Booking</h1>
        <div>
            <formview id="FormContanier">
                <div>
                    <asp:TextBox CssClass="textbox" ID="From" runat="server" Placeholder="From" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox CssClass="textbox" ID="To" runat="server" Placeholder="To" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Genral</asp:ListItem>
                        <asp:ListItem>Tatkal</asp:ListItem>
                        <asp:ListItem>Ladies</asp:ListItem>
                        <asp:ListItem>Premium Tatkal</asp:ListItem>
                        <asp:ListItem>Sr.Citizen</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>Chair</asp:ListItem>
                        <asp:ListItem>Sleeper</asp:ListItem>
                        <asp:ListItem>Tier 2 AC</asp:ListItem>
                        <asp:ListItem>Tier 3 AC</asp:ListItem>
                        <asp:ListItem>Premium</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    <div id="SubmitButton">
                        <asp:LinkButton ID="LinkButton1" Style="font-size: 25px; text-align: center; border-radius: 2px;" runat="server" OnClick="SearchTrain" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" ForeColor="Black" Height="30px" Width="130px">Search</asp:LinkButton>
                    </div>
                </div>
            </formview>
        </div>
    </div>
    <div id="Grid">
        <asp:GridView ID="GridViewTrains" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="Operation">
                    <ItemTemplate>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="BookTickets" runat="server" href="BookingPage.aspx" ForeColor="Blue">BookTickets</asp:LinkButton>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    </div>
</asp:Content>
