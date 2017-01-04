﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineDietitian
{
    public partial class DietitianPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            dietitianRepeater.DataSource = BusinessLayers.Business.getDietitians();
            dietitianRepeater.DataBind();

        }
    }
}