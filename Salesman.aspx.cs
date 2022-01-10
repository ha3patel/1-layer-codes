using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace SingleLayerFrontEnd
{
    public partial class Salesman : System.Web.UI.Page
    {
        private string _connectionString = ConfigurationManager.ConnectionStrings["conInventory"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                BindGridView();
            }

        }

        protected void txtEnterSalesman_Click(object sender, EventArgs e)
        {
            int salesmanId = Convert.ToInt32(txtSalesmanId.Text);
            string name = txtName.Text;
            string city = txtCity.Text;
            float commission = float.Parse(txtCommission.Text);


            string query = $"Insert into Salesman (Salesman_id, name, city, commission) values({salesmanId},'{name}','{city}',{commission});";

            
            
            SqlConnection connection = new SqlConnection(_connectionString);

            try
            {

                connection.Open();
                SqlCommand cmd = new SqlCommand(query, connection);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                
                DataTable DT = new DataTable();
                adapter.Fill(DT);
                BindGridView();

                txtSalesmanId.Text = "";
                txtName.Text = "";
                txtCity.Text = "";
                txtCommission.Text = "";
                txtSalesmanId.Focus();


            }

            catch (SqlException ex)
            {
                string msg = "error";
                msg += ex.Message;
                throw new Exception(msg);
            }
            finally
            {
                connection.Close();
                connection.Dispose();

            }

           

        }

        private void BindGridView()
        {
            DataTable DT = new DataTable();
            
            SqlConnection connection = new SqlConnection(_connectionString);
            try
            {

                connection.Open();
                string query = "select * from Salesman";
                SqlCommand cmd = new SqlCommand(query, connection);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(DT);

                if (DT.Rows.Count > 0)
                {
                    GVSalesman.DataSource = DT;
                    GVSalesman.DataBind();
                }

            }

            catch (SqlException ex)
            {
                string msg = "error";
                msg += ex.Message;
                throw new Exception(msg);
            }
            finally
            {
                connection.Close();
                connection.Dispose();

            }



        }
    }
}