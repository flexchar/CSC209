<%@ Page Title="Profile" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="D2.Profile" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MasterPage" runat="server">
    <h2><%: Title %></h2>
    <p>To prevent quiz abuse, it is required by law to get to know your client.</p>
    <p>Please answer couple questions so we can meet you better.</p>

    <asp:ValidationSummary ID="validation" runat="server" ForeColor="OrangeRed" HeaderText="There are couple issues w/you" />

    <p>Your fall far</p>
    <asp:DropDownList ID="food" runat="server" CausesValidation="True" ValidateRequestMode="Enabled">
        <asp:ListItem Selected="True" Value="None">--Choose One--</asp:ListItem>
        <asp:ListItem>Dumplings</asp:ListItem>
        <asp:ListItem>Burger</asp:ListItem>
        <asp:ListItem>Lentils</asp:ListItem>
        <asp:ListItem>Buckwheat</asp:ListItem>
        <asp:ListItem>Pizza</asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="Please pick one" ControlToValidate="food" ErrorMessage="You don't fall for any food" InitialValue="None" ForeColor="OrangeRed"></asp:RequiredFieldValidator>

    <br />

    <p>You eat N times per day</p>
    <asp:TextBox ID="meals" runat="server" TextMode="Number"></asp:TextBox>
    <br />
    <asp:RangeValidator ID="RangeValidator1" runat="server" Text="Please eat between 2-4 times a day" ControlToValidate="meals" ForeColor="OrangeRed" MaximumValue="4" MinimumValue="2" ErrorMessage="You don't eat correctly"></asp:RangeValidator>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Text="Please enter number" ControlToValidate="meals" ErrorMessage="You don't eat" ForeColor="OrangeRed"></asp:RequiredFieldValidator>

    <br />

    <p>You are person that's best at</p>
    <asp:RadioButtonList ID="person_type" runat="server" CausesValidation="True">
        <asp:ListItem>Morning</asp:ListItem>
        <asp:ListItem>Afternoon</asp:ListItem>
        <asp:ListItem>Evening</asp:ListItem>
    </asp:RadioButtonList>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Text="Please choose one here" ControlToValidate="person_type"></asp:RequiredFieldValidator>

    <br />

    <p>Your favorite months are</p>
    <asp:CheckBoxList ID="months" runat="server" CausesValidation="True">
        <asp:ListItem>June</asp:ListItem>
        <asp:ListItem>July</asp:ListItem>
        <asp:ListItem>August</asp:ListItem>
    </asp:CheckBoxList>

    <br />
    <br />

    <p>You wish to start holidays</p>
    <asp:Calendar ID="holiday" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" required="required" NextPrevFormat="FullMonth" Width="350px" FirstDayOfWeek="Sunday">
        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
        <TodayDayStyle BackColor="#CCCCCC" />
    </asp:Calendar>

    <br />
    <br />

    <p>Your top secret string</p>
    <asp:TextBox ID="secret1" runat="server" TextMode="Password"></asp:TextBox>
    <br />
    <asp:TextBox ID="secret2" runat="server" TextMode="Password"></asp:TextBox>
    <br />
    <asp:CompareValidator ID="CompareValidator1" runat="server" Text="Your secret should match" ControlToCompare="secret1" ControlToValidate="secret2" ForeColor="OrangeRed" ErrorMessage="Your top secret does not match"></asp:CompareValidator>
    <br />
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Your secret too safe" ControlToValidate="secret1" ForeColor="OrangeRed" ValidationExpression="^[a-z0-9]+$">Please only use numbers, regular letters</asp:RegularExpressionValidator>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Text="Please type secret" ControlToValidate="secret1" ErrorMessage="You don't have a secret word" ForeColor="OrangeRed"></asp:RequiredFieldValidator>

    <br />
    <br />

    <asp:Button ID="send" runat="server" Text="Send" OnClick="analyse_subject" />

    <br />
    <br />

    <asp:Label ID="response" runat="server" Text="The reality is..."></asp:Label>

</asp:Content>
