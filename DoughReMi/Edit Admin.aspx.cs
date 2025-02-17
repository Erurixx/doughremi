﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DoughReMi
{
    public partial class Edit_Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadAdminProfile();
            }

        }

        private void LoadAdminProfile()
        {
            string adminId = Request.QueryString["adminId"];
            string query = "SELECT fname, lname, email, userName, gender, imageURL FROM Register WHERE Id = @adminId";

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegisterConnectionString"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@adminId", adminId);
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.Read())
                    {
                        txtFirstName.Text = reader["fname"].ToString();
                        txtLastName.Text = reader["lname"].ToString();
                        txtEmail.Text = reader["email"].ToString();
                        txtUsername.Text = reader["userName"].ToString();
                        txtgender.SelectedValue = reader["gender"].ToString();
                        imgProfilePic.ImageUrl = string.IsNullOrEmpty(reader["imageURL"].ToString()) ? "~/assets/default-avatar.jpg" : reader["imageURL"].ToString();
                    }
                    reader.Close();
                }
            }
        }


        protected void btnUpdateProfile_Click(object sender, EventArgs e)
        {

            // Get values from the form
            string firstName = txtFirstName.Text.Trim();
            string lastName = txtLastName.Text.Trim();
            string email = txtEmail.Text.Trim();
            
            
            string gender = txtgender.SelectedValue;

            // Validate inputs
            if (string.IsNullOrEmpty(firstName) || string.IsNullOrEmpty(lastName) || string.IsNullOrEmpty(email) ||  string.IsNullOrEmpty(gender))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Please fill in all fields.');", true);
                return;
            }

            // Validate email domain
            string[] emailParts = email.Split('@');
            if (emailParts.Length != 2 || emailParts[1] != "admin.com")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Email must be in the format username@admin.com.');", true);
                return;
            }
            try
            {
                string adminId = Request.QueryString["adminId"];
                string imageUrl = null;

                if (fuProfilePic.HasFile)
                {

                    string filename = Path.GetFileName(fuProfilePic.FileName);
                    string extension = Path.GetExtension(filename).ToLower();
                    if (extension != ".jpg" && extension != ".jpeg" && extension != ".png")
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Only JPG, JPEG, and PNG files are allowed.');", true);
                        return; // Exit the method if the file is not in the allowed format
                    }
                   
                    string folderPath = Server.MapPath("/UploadedImages/");
                    if (!Directory.Exists(folderPath))
                    {
                        Directory.CreateDirectory(folderPath);
                    }
                    string filePath = Path.Combine(folderPath, filename);
                    fuProfilePic.SaveAs(filePath);
                    imageUrl = "/UploadedImages/" + filename;
                }

                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegisterConnectionString"].ConnectionString))
                {
                    string query = "UPDATE Register SET fname = @fname, lname = @lname, email = @email, gender = @gender, imageURL = @imageURL WHERE Id = @adminId";
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@fname", txtFirstName.Text.Trim());
                        cmd.Parameters.AddWithValue("@lname", txtLastName.Text.Trim());
                        cmd.Parameters.AddWithValue("@email", txtEmail.Text.Trim());
                        cmd.Parameters.AddWithValue("@gender", txtgender.SelectedValue);
                        cmd.Parameters.AddWithValue("@imageURL", imageUrl ?? imgProfilePic.ImageUrl);
                        cmd.Parameters.AddWithValue("@adminId", adminId);
                        con.Open();
                        cmd.ExecuteNonQuery();
                    }
                }

                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Profile updated successfully!'); window.location ='Manage Admin.aspx';", true);
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", $"alert('An error occurred: {ex.Message}');", true);
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Manage Admin.aspx");
        }
    }
}