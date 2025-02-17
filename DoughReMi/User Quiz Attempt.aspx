﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User Quiz Attempt.aspx.cs" Inherits="DoughReMi.UserQuizAttempt" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Quiz Attempt</title>
    <link rel="stylesheet" type="text/css" href="User Quiz Attempt.css" />
    <!-- Title & Logo Font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" />
    <!-- Body Font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap" />
    <script src="https://kit.fontawesome.com/014d9f8d85.js" crossorigin="anonymous"></script>
    <script src="User Quiz Attempt.js"></script>
</head>
<body>
    <form id="form1" runat="server">

        <nav id="desktop-nav">
            <div class="logo">
                <a href="Main Page After Logged In.aspx">DoughReMi</a>
            </div>
            <ul class="topnav">
                <li><a href="MenuRecipe Dashboard.aspx">Menu & Recipes</a></li>
                <li><a href="User Quiz Dashboard.aspx">Quiz & Assessments</a></li>
                <li><a href="User Ingredient.aspx">Ingredients</a></li>
                <li><a href="User Forum.aspx">Forums</a></li>
                <li><a href="User Bookmark.aspx">Bookmark</a></li>
                <li><a href="Terms and Condition.aspx">Terms and Condition</a></li>
            </ul>

            <div class="profile">
                <asp:ImageButton ID="ProfilePicture" runat="server" CssClass="profile-picture" ImageUrl="/assets/default-avatar.jpg" OnClick="ProfilePicture_Click" Height="43px" Width="43px" />
                <asp:Label ID="usernamelbl" runat="server" CssClass="username"></asp:Label>
                <div id="profile-dropdown" class="dropdown-content">
                    <a href="User Profile.aspx">Manage Profile</a>
                    <a href="Change Password.aspx">Change Password</a>
                </div>
            </div>
        </nav>

        <div class="page-title">
            <h2>Attempt Quiz: <asp:Label ID="lblQuizTitle" runat="server" /></h2>
        </div>

        <br />

        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Username : "></asp:Label>
                    <asp:Label ID="username" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Score : "></asp:Label>
                    <asp:Label ID="score" runat="server">0</asp:Label>
                </td>
            </tr>
        </table>

        <div class="form-container">
            <br />
            <asp:Repeater ID="rptQuestions" runat="server" OnItemDataBound="rptQuestions_ItemDataBound" OnItemCommand="rptQuestions_ItemCommand">
                <ItemTemplate>
                    <div class="question">
                        <asp:Label ID="lblQuestion" runat="server" Text='<%# Eval("QuestionText") %>' />
                        <asp:RadioButtonList ID="rblChoices" runat="server" CssClass="rblChoices">
                            <asp:ListItem Text="Choice A" Value="A" CssClass="list-item" />
                            <asp:ListItem Text="Choice B" Value="B" CssClass="list-item" />
                            <asp:ListItem Text="Choice C" Value="C" CssClass="list-item" />
                            <asp:ListItem Text="Choice D" Value="D" CssClass="list-item" />
                        </asp:RadioButtonList>
                    </div>
                </ItemTemplate>
            </asp:Repeater>

            <br />
            <table class="auto-style2">
                <tr>
                    <td>
                        <asp:Button ID="Back" runat="server" Text="Back to Previous Page" OnClick="Back_Click" CssClass="btn" />
                    </td>
                    <td>
                        <div class="button-container">
                            <asp:Button ID="FinishAttempt" runat="server" Text="Finish Attempt" OnClick="FinishAttempt_Click" CssClass="btn" />
                        </div>
                    </td>
                </tr>
            </table>

        </div>

        <footer>
            <div class="footer-bottom">
                <p>&copy; 2024 DoughReMi. All rights reserved.</p>
            </div>
        </footer>

    </form>
</body>
</html>
