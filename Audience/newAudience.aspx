<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="newAudience.aspx.cs" Inherits="YokyoOlympicGames.Audience.newAudience" UnobtrusiveValidationMode="None" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        #audienceLogin {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
        }

            #audienceLogin .input {
                font-size: 20px;
                color: green;
                text-align: center;
                margin-top:2px;
            }

        .btn {
            font-size: 30px;
            text-align: center;
            background: green;
            color: #fff;
            width: 195px;
        }
    </style>
    <title>Welcome to Yokyo Games Registration System</title>
</head>
<body>
    <form id="form1" runat="server">

        <h1 style="text-align: center; font-family: Verdana; color: green;">Welcome to Yokyo Games</h1>
        <hr style="width: 50%" />
        <h2 style="text-align: center; font-family: Verdana; color: green; padding: 20px;">Audience Registration</h2>
        <div id="audienceLogin">
            <table style="font-size: 20px;">
                <tr>
                    <td>Full Name:</td>
                    <td>
                        <asp:TextBox ID="txtAudienceName" runat="server" CssClass="input"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please provide Full Name" ControlToValidate="txtAudienceName"></asp:RequiredFieldValidator>

                    </td>
                       
                </tr>
                <tr>
                    <td>Address:</td>
                    <td>
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="input"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please provide Address" ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
                    </td>
                    <customErrors mode="On"> <error statusCode="404" redirect="error. aspx"/>
                </tr>
                <tr>
                    <td>Contact Number:</td>
                    <td>
                        <asp:TextBox ID="txtContactNumber" runat="server" CssClass="input"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please provide contact number" ControlToValidate="txtContactNumber"></asp:RequiredFieldValidator>
                    </td>
                    
                </tr>
                <tr>
                    <td>Email Address:</td>
                    <td>
                        <asp:TextBox ID="txtEmailAddress" runat="server" CssClass="input"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please provide email address" ControlToValidate="txtEmailAddress"></asp:RequiredFieldValidator>
                    </td>
                    
                </tr>
                <tr>
                    <td>User Name:</td>
                     <td><asp:TextBox ID="txtUserName" runat="server" CssClass="input"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please provide UserName" ControlToValidate="txtUserName"></asp:RequiredFieldValidator>
                     </td>
                    
                </tr>
                <tr>
                    <td>Password:</td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="input" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please provide password" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                        
                    </td>
                    
                </tr>
                <tr>
                    <td>Confirm Password:</td>
                    <td>
                        <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="input" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords do not match" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ForeColor="Red"></asp:CompareValidator>
                    
                         <br />
                    
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please provide password" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                        
                        </td>
                </tr>
                <tr><td colspan="4"><asp:Button ID="btnRegister" Text="Register For Games" runat="server" CssClass="btn" Width="400px" OnClick="btnRegister_Click" />

                    </td></tr>
                
                <tr><td colspan="4"><asp:Label ID="lblMessage" runat="server" Text=""></asp:Label></td></tr>
            </table>
        </div>
    </form>

</body>
</html>
