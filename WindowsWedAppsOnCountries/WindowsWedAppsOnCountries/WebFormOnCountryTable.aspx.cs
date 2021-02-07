using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Configuration;
using System.Web.UI.WebControls;

namespace WindowsWedAppsOnCountries
{
    public partial class WebFormOnCountryTable : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings[1].ToString());
                conn.Open();
                SqlCommand cmd = new SqlCommand("select * from Country", conn);
                SqlDataReader dr = cmd.ExecuteReader();
                DropDownList1.DataSource = dr;
                DropDownList1.DataTextField = "County";
                DropDownList1.DataValueField = "CountryId";
                DropDownList1.DataBind();
                conn.Close();

            }

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings[1].ToString());
            conn.Open();

            SqlCommand cmd = new SqlCommand("select State,StateId from StateTable where CountryId='" + DropDownList1.SelectedValue + "'", conn);

            SqlDataReader dr = cmd.ExecuteReader();
            DropDownList2.DataSource = dr;
            DropDownList2.DataTextField = "State";
            DropDownList2.DataValueField = "StateId";
            DropDownList2.DataBind();
            conn.Close();
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings[1].ToString());
            conn.Open();

            SqlCommand cmd = new SqlCommand("select * from CityTable where StateId='" + DropDownList2.SelectedValue + "'", conn);

            SqlDataReader dr = cmd.ExecuteReader();
            DropDownList3.DataSource = dr;
            DropDownList3.DataTextField = "City";
            DropDownList3.DataValueField = "CityId";
            DropDownList3.DataBind();
            conn.Close();

        }
    }
}