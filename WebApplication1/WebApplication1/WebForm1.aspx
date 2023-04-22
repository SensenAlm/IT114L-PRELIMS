<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> ASP WebForm</title>
    <link rel="stylesheet" href="aspCSS.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class ="flex-container">
            <div>
                <asp:Button ID="SubmitButton" runat="server" Text="Submit" onclick="SubmitBtn"/>
                <asp:Button ID="EditButton" runat="server" Text="Edit" onclick="EditBtn"/>
                <asp:Button ID="SaveButton" runat="server" Text="Save" onclick="SaveBtn"/>
                <br />
                <br />
                <asp:Label runat="server" Text="Full Name"> </asp:Label>
                <asp:TextBox ID="FullName" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label runat="server" Text="Address"> </asp:Label>
                <asp:TextBox ID="Address" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label runat="server" Text="Phone Number"> </asp:Label>
                <asp:TextBox ID="PhoneNumber" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label runat="server" Text="Driver's License"> </asp:Label>
                <asp:DropDownList ID="License" runat="server">
                    <asp:ListItem> A </asp:ListItem>
                    <asp:ListItem> B </asp:ListItem>
                    <asp:ListItem> C </asp:ListItem>
                    <asp:ListItem> D </asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <asp:Label runat="server" Text="Job Type"> </asp:Label>
                <asp:DropDownList ID="JobType" runat="server">
                    <asp:ListItem> Driver </asp:ListItem>
                    <asp:ListItem> Helpful </asp:ListItem>
                </asp:DropDownList>
                
            </div>
            <div>
                <table id="resultsTable">
                    <tr>
                        <th>Name</th>
                        <th>Address</th>
                        <th>Phone Number</th>
                        <th>Driver's License Type</th>
                        <th>Job Type</th>
                    </tr>
                    <tr id="row1">
                        <td id="name_row1"> <asp:TextBox ID="TextBox1" runat="server" Enabled="false" ></asp:TextBox> </td>
                        <td id="address_row1"> <asp:TextBox ID="TextBox2" runat="server" Enabled="false"> </asp:TextBox> </td>
                        <td id="phoneno_row1"> <asp:TextBox ID="TextBox3" runat="server" Enabled="false"> </asp:TextBox> </td>
                        <td id="license_row1"> <asp:TextBox ID="TextBox4" runat="server" Enabled="false"> </asp:TextBox> </td>
                        <td id="jobtype_row1"> <asp:TextBox ID="TextBox5" runat="server" Enabled="false"> </asp:TextBox> </td>
                    </tr>
                </table>
            </div>
        </div>

    </form>
</body>
</html>
