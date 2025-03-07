﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity;
using System.Data.SqlClient;

namespace OnlineDietitian.AdminPage
{
    public partial class EditDiet : System.Web.UI.Page
    {

        protected Entity.DietE currentDiet;
        protected bool newEntity;
        protected void Page_Load(object sender, EventArgs e)
        {
            // Get "id" from URL
            string id = Page.RouteData.Values["id"] as string;
            if (id != null)
            {
                newEntity = false;
                if (id == "new")
                {
                    currentDiet = new DietE();
                    newEntity = true;
                }
                else
                {
                    currentDiet = BusinessLayers.Business.getDietByID(id);
                    if (currentDiet != null)
                    {
                        if (!Page.IsPostBack)
                        {
                            contentBox.Text = currentDiet.DietContent;
                            dietrequestidBox.Text = currentDiet.DietRequestID.ToString();
                            useridBox.Text = currentDiet.UserID.ToString();
                            dietitianidBox.Text = currentDiet.DietitianID.ToString();
                        }
                    }
                    else
                    {
                        error.Text = "Diet not in the database";
                        error.Visible = true;
                    }
                }

            }
            else
            {
                Response.Redirect("~/AdminPage/Default.aspx");
            }

        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            if (currentDiet != null)
            {
                currentDiet.DietContent = contentBox.Text;
                currentDiet.DietRequestID = Convert.ToInt32(dietrequestidBox.Text);
                currentDiet.UserID = Convert.ToInt32(useridBox.Text);
                currentDiet.DietitianID = Convert.ToInt32(dietitianidBox.Text);


                try
                {
                    if (newEntity)
                    {
                        int id=BusinessLayers.Business.insertDiet(currentDiet);
                        BusinessLayers.Logging.logInsert("Diet", (Session["user"] as Entity.UserE).UserID.ToString(), id.ToString());
                    }
                    else
                    {
                        BusinessLayers.Business.updateDiet(currentDiet);
                        BusinessLayers.Logging.logUpdate("Diet", (Session["user"] as Entity.UserE).UserID.ToString(), currentDiet.DietID.ToString());

                    }
                }
                catch (SqlException ex)
                {
                    error.Text = ex.Message;
                    error.Visible = true;
                }
            }
        }
    }

}
