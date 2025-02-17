﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin Menu Recipe.aspx.cs" Inherits="DoughReMi.Admin_Menu_Recipe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Menu Recipe Form</title>
    <link rel="stylesheet" type="text/css" href="Admin Ingredient.css" />
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1 class="auto-style1">
                <asp:Button ID="back" runat="server" CssClass="back-btn" OnClick="Back_Click" Text="Back" />
            </h1>
            <h1>Menu Recipe Form</h1>
            <table class="form-table">
                <tr>
                    <td class="label-column" style="text-align: center; width: 25%;">
                        <asp:Label ID="Label4" runat="server" Text="Name"></asp:Label>
                    </td>
                    <td class="control-column">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="label-column" style="text-align: center; width: 25%;">
                        <asp:Label ID="Label5" runat="server" Text="Description"></asp:Label>
                    </td>
                    <td class="control-column">
                        <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Rows="4" Columns="30"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="label-column" style="text-align: center; width: 25%;">
                        <asp:Label ID="Label6" runat="server" Text="Image"></asp:Label>
                    </td>
                    <td class="control-column">
                        <asp:FileUpload ID="FileUpload2" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="label-column" style="text-align: center; width: 25%;">
                        <asp:Label ID="Label7" runat="server" Text="Video"></asp:Label>
                    </td>
                    <td class="control-column">
                        <asp:FileUpload ID="FileUpload3" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="save-button">
                        <asp:Button ID="Button1" runat="server" OnClick="Save_Click" Text="Save" CssClass="btn-save" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="errMsg" runat="server" CssClass="error-message" Visible="False" ForeColor="Red"></asp:Label>
                        <asp:Label ID="successMsg" runat="server" CssClass="success-message" Visible="False" ForeColor="Green"></asp:Label>
                    </td>
                </tr>
            </table>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="grid-view"
                OnPageIndexChanging="GridView1_PageIndexChanging"
                OnRowCancelingEdit="GridView1_RowCancelingEdit"
                OnRowEditing="GridView1_RowEditing"
                OnRowUpdating="GridView1_RowUpdating"
                OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:TemplateField HeaderText="ID" Visible="False">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Label ID="Label1Edit" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("MRname") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("MRname") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Description">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("MRdescription") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("MRdescription") %>' TextMode="MultiLine" Rows="5" Columns="30"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("MRimage") %>' Height="100px" Width="100px" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Video">
                        <ItemTemplate>
                            <video width="320" height="240" controls>
                                <source src='<%# Eval("MRvideourl") %>' type="video/mp4">
                                Your browser does not support the video tag.
                            </video>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:FileUpload ID="FileUpload4" runat="server" />
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Operation">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Update">Update</asp:LinkButton>
                            &nbsp;
                            <asp:LinkButton ID="LinkButton4" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                            &nbsp;&nbsp;
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Delete" OnClientClick="return confirm('Are you sure you want to delete this ingredient?');">Delete</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
