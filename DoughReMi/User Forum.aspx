﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User Forum.aspx.cs" Inherits="DoughReMi.UserForum" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Discussion Forum</title>
    <link rel="stylesheet" type="text/css" href="User Profile New.css" />
    <link rel="stylesheet" type="text/css" href="User Forum.css" />
    

    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
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

        <div class="container">
            <h1 class="auto-style1">Discussion Forum</h1>

            <!-- Form for posting new content -->
            <div class="post-form">
                <asp:TextBox ID="txtNewPost" runat="server" CssClass="custom-textbox" TextMode="MultiLine" Rows="3" placeholder="Write your post here..."></asp:TextBox>
                <asp:Button ID="BtnSubmitPost" runat="server" Text="Post" CssClass="btn btn-primary" OnClick="BtnSubmitPost_Click" Width="82px" />
                <br />
                <br />
            </div>

            <!--Repeater for displaying posts -->
            <asp:Repeater ID="RptPosts" runat="server" OnItemDataBound="RptPosts_ItemDataBound">
                <ItemTemplate>
                    <div class="post-box">
                        <div class="post-content">
                            <p><strong>Post:</strong> <%# Eval("PostContent") %></p>
                        </div>
                        <div class="comments">
                            <asp:Repeater ID="rptComments" runat="server">
                                <ItemTemplate>
                                    <div class="comment">
                                        <%# Eval("CommentContent") %>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                            <div class="comment-form">
                                <asp:TextBox ID="txtNewComment" runat="server" CssClass="custom-textbox" TextMode="MultiLine" Rows="2" placeholder="Write your comment here..."></asp:TextBox>
                                <asp:Button ID="BtnSubmitComment" runat="server" Text="Comment" CssClass="btn btn-primary" CommandArgument='<%# Eval("PostID") %>' OnClick="BtnSubmitComment_Click" />
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>

            <div class="form-group text-center">
                <asp:Button ID="btnBack" runat="server" Text="Back to Previous Page" CssClass="btn btn-primary" OnClick="btnBack_Click" />
        </div>
        </div>

    <footer>
        <div class="footer-bottom">
            <p>&copy; 2024 DoughReMi. All rights reserved.</p>
        </div>
    </footer>
        
    </form>
</body>
</html>
