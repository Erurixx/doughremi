﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin Quiz Edit.aspx.cs" Inherits="WAPP_Assignment.Assignment.AdminQuizEdit" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit Quiz</title>
    <link rel="stylesheet" type="text/css" href="Admin Quiz Edit.css" />
    <style type="text/css">
        .auto-style1 {
            width: 865px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="form-container">
        <div>
            <h1>Edit Quiz</h1>
            <table class="show">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label21" runat="server" Text="Title : "></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:Label ID="title" runat="server"></asp:Label>
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Difficulty : "></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:DropDownList ID="difficulty" runat="server" AutoPostBack="True" CssClass="form-control" Width="115px">
                            <asp:ListItem>Easy</asp:ListItem>
                            <asp:ListItem>Medium</asp:ListItem>
                            <asp:ListItem>Hard</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="Question 1 : "></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="question1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvQuestion1" runat="server" ControlToValidate="question1" ErrorMessage="Question 1 is required" ForeColor="Red" ValidationGroup="UpdateGroup"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="Choices for Question 1 : "></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:Label ID="Label6" runat="server" Text="A : "></asp:Label>
                        &nbsp
                        <asp:TextBox ID="choiceAq1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvChoiceAq1" runat="server" ControlToValidate="choiceAq1" ErrorMessage="Choice A for Question 1 is required" ForeColor="Red" ValidationGroup="UpdateGroup"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <asp:Label ID="Label7" runat="server" Text="B : "></asp:Label>
                        &nbsp;
                        <asp:TextBox ID="choiceBq1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvChoiceBq1" runat="server" ControlToValidate="choiceBq1" ErrorMessage="Choice B for Question 1 is required" ForeColor="Red" ValidationGroup="UpdateGroup"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <asp:Label ID="Label8" runat="server" Text="C : "></asp:Label>
                        &nbsp;
                        <asp:TextBox ID="choiceCq1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvChoiceCq1" runat="server" ControlToValidate="choiceCq1" ErrorMessage="Choice C for Question 1 is required" ForeColor="Red" ValidationGroup="UpdateGroup"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <asp:Label ID="Label9" runat="server" Text="D : "></asp:Label>
                        &nbsp;
                        <asp:TextBox ID="choiceDq1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvChoiceDq1" runat="server" ControlToValidate="choiceDq1" ErrorMessage="Choice D for Question 1 is required" ForeColor="Red" ValidationGroup="UpdateGroup"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Text="Answer for Question 1: "></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:DropDownList ID="ansQ1" runat="server" AutoPostBack="True" CssClass="form-control" Width="115px">
                            <asp:ListItem>A</asp:ListItem>
                            <asp:ListItem>B</asp:ListItem>
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>D</asp:ListItem>
                        </asp:DropDownList>
                        <br/>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label5" runat="server" Text="Question 2 : "></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="question2" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvQuestion2" runat="server" ControlToValidate="question2" ErrorMessage="Question 2 is required" ForeColor="Red" ValidationGroup="UpdateGroup"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label10" runat="server" Text="Choices for Question 2 : "></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:Label ID="Label22" runat="server" Text="A : "></asp:Label>
                        &nbsp;
                        <asp:TextBox ID="choiceAq2" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvChoiceAq2" runat="server" ControlToValidate="choiceAq2" ErrorMessage="Choice A for Question 2 is required" ForeColor="Red" ValidationGroup="UpdateGroup"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <asp:Label ID="Label23" runat="server" Text="B : "></asp:Label>
                        &nbsp;
                        <asp:TextBox ID="choiceBq2" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvChoiceBq2" runat="server" ControlToValidate="choiceBq2" ErrorMessage="Choice B for Question 2 is required" ForeColor="Red" ValidationGroup="UpdateGroup"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <asp:Label ID="Label24" runat="server" Text="C : "></asp:Label>
                        &nbsp;
                        <asp:TextBox ID="choiceCq2" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvChoiceCq2" runat="server" ControlToValidate="choiceCq2" ErrorMessage="Choice C for Question 2 is required" ForeColor="Red" ValidationGroup="UpdateGroup"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <asp:Label ID="Label25" runat="server" Text="D : "></asp:Label>
                        &nbsp;
                        <asp:TextBox ID="choiceDq2" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvChoiceDq2" runat="server" ControlToValidate="choiceDq2" ErrorMessage="Choice D for Question 2 is required" ForeColor="Red" ValidationGroup="UpdateGroup"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label11" runat="server" Text="Answer for Question 2: "></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:DropDownList ID="ansQ2" runat="server" AutoPostBack="True" CssClass="form-control" Width="115px">
                            <asp:ListItem>A</asp:ListItem>
                            <asp:ListItem>B</asp:ListItem>
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>D</asp:ListItem>
                        </asp:DropDownList>
                        <br/>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label12" runat="server" Text="Question 3 : "></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="question3" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvQuestion3" runat="server" ControlToValidate="question3" ErrorMessage="Question 3 is required" ForeColor="Red" ValidationGroup="UpdateGroup"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label13" runat="server" Text="Choices for Question 3 : "></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:Label ID="Label26" runat="server" Text="A : "></asp:Label>
                        &nbsp;
                        <asp:TextBox ID="choiceAq3" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvChoiceAq3" runat="server" ControlToValidate="choiceAq3" ErrorMessage="Choice A for Question 3 is required" ForeColor="Red" ValidationGroup="UpdateGroup"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <asp:Label ID="Label27" runat="server" Text="B : "></asp:Label>
                        &nbsp;
                        <asp:TextBox ID="choiceBq3" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvChoiceBq3" runat="server" ControlToValidate="choiceBq3" ErrorMessage="Choice B for Question 3 is required" ForeColor="Red" ValidationGroup="UpdateGroup"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <asp:Label ID="Label28" runat="server" Text="C : "></asp:Label>
                        &nbsp;
                        <asp:TextBox ID="choiceCq3" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvChoiceCq3" runat="server" ControlToValidate="choiceCq3" ErrorMessage="Choice C for Question 3 is required" ForeColor="Red" ValidationGroup="UpdateGroup"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <asp:Label ID="Label29" runat="server" Text="D : "></asp:Label>
                        &nbsp;
                        <asp:TextBox ID="choiceDq3" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvChoiceDq3" runat="server" ControlToValidate="choiceDq3" ErrorMessage="Choice D for Question 3 is required" ForeColor="Red" ValidationGroup="UpdateGroup"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label14" runat="server" Text="Answer for Question 3: "></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:DropDownList ID="ansQ3" runat="server" AutoPostBack="True" CssClass="form-control" Width="115px">
                            <asp:ListItem>A</asp:ListItem>
                            <asp:ListItem>B</asp:ListItem>
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>D</asp:ListItem>
                        </asp:DropDownList>
                        <br/>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label15" runat="server" Text="Question 4 : "></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="question4" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvQuestion4" runat="server" ControlToValidate="question4" ErrorMessage="Question 4 is required" ForeColor="Red" ValidationGroup="UpdateGroup"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label16" runat="server" Text="Choices for Question 4 : "></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:Label ID="Label30" runat="server" Text="A : "></asp:Label>
                        &nbsp;
                        <asp:TextBox ID="choiceAq4" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvChoiceAq4" runat="server" ControlToValidate="choiceAq4" ErrorMessage="Choice A for Question 4 is required" ForeColor="Red" ValidationGroup="UpdateGroup"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <asp:Label ID="Label31" runat="server" Text="B : "></asp:Label>
                        &nbsp;
                        <asp:TextBox ID="choiceBq4" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvChoiceBq4" runat="server" ControlToValidate="choiceBq4" ErrorMessage="Choice B for Question 4 is required" ForeColor="Red" ValidationGroup="UpdateGroup"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <asp:Label ID="Label32" runat="server" Text="C : "></asp:Label>
                        &nbsp;
                        <asp:TextBox ID="choiceCq4" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvChoiceCq4" runat="server" ControlToValidate="choiceCq4" ErrorMessage="Choice C for Question 4 is required" ForeColor="Red" ValidationGroup="UpdateGroup"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <asp:Label ID="Label33" runat="server" Text="D : "></asp:Label>
                        &nbsp;
                        <asp:TextBox ID="choiceDq4" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvChoiceDq4" runat="server" ControlToValidate="choiceDq4" ErrorMessage="Choice D for Question 4 is required" ForeColor="Red" ValidationGroup="UpdateGroup"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label17" runat="server" Text="Answer for Question 4: "></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:DropDownList ID="ansQ4" runat="server" AutoPostBack="True" CssClass="form-control" Width="115px">
                            <asp:ListItem>A</asp:ListItem>
                            <asp:ListItem>B</asp:ListItem>
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>D</asp:ListItem>
                        </asp:DropDownList>
                        <br/>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label18" runat="server" Text="Question 5 : "></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="question5" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvQuestion5" runat="server" ControlToValidate="question5" ErrorMessage="Question 5 is required" ForeColor="Red" ValidationGroup="UpdateGroup"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label19" runat="server" Text="Choices for Question 5 : "></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:Label ID="Label34" runat="server" Text="A : "></asp:Label>
                        &nbsp;
                        <asp:TextBox ID="choiceAq5" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvChoiceAq5" runat="server" ControlToValidate="choiceAq5" ErrorMessage="Choice A for Question 5 is required" ForeColor="Red" ValidationGroup="UpdateGroup"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <asp:Label ID="Label35" runat="server" Text="B : "></asp:Label>
                        &nbsp;
                        <asp:TextBox ID="choiceBq5" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvChoiceBq5" runat="server" ControlToValidate="choiceBq5" ErrorMessage="Choice B for Question 5 is required" ForeColor="Red" ValidationGroup="UpdateGroup"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <asp:Label ID="Label36" runat="server" Text="C : "></asp:Label>
                        &nbsp;
                        <asp:TextBox ID="choiceCq5" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvChoiceCq5" runat="server" ControlToValidate="choiceCq5" ErrorMessage="Choice C for Question 5 is required" ForeColor="Red" ValidationGroup="UpdateGroup"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <asp:Label ID="Label37" runat="server" Text="D : "></asp:Label>
                        &nbsp;
                        <asp:TextBox ID="choiceDq5" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvChoiceDq5" runat="server" ControlToValidate="choiceDq5" ErrorMessage="Choice D for Question 5 is required" ForeColor="Red" ValidationGroup="UpdateGroup"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label20" runat="server" Text="Answer for Question 5: "></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:DropDownList ID="ansQ5" runat="server" AutoPostBack="True" CssClass="form-control" Width="115px">
                            <asp:ListItem>A</asp:ListItem>
                            <asp:ListItem>B</asp:ListItem>
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>D</asp:ListItem>
                        </asp:DropDownList>
                        <br/>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Cancel" runat="server" Text="Cancel" OnClick="Cancel_Click" />
                    </td>
                    <td class="auto-style1">
                        <asp:Button ID="Update" runat="server" Text="Update" OnClick="Update_Click" ValidationGroup="UpdateGroup" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
