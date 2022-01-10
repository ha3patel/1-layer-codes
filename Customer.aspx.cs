using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace SingleLayerFrontEnd
{
    public partial class Customer : System.Web.UI.Page
    {
        private string _connectionString = ConfigurationManager.ConnectionStrings["ConInventory"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                BindGridView();
            }
        }

        protected void txtEnterCustomer_Click(object sender, EventArgs e)
        {
            
            int customerId = Convert.ToInt32(txtCustomerId.Text);
            string customerName = txtCustName.Text;
            string city = txtCity.Text;
            int grade = Convert.ToInt32(txtGrade.Text);
            int salesmanId = Convert.ToInt32(txtSalesmanID.Text);

            string insertCustomer = $"Insert into Customer(customer_id,cust_name, city, grade, salesman_id) VALUES({customerId}, '{customerName}' , '{city}' ,{grade},{salesmanId})";

            SqlConnection connection = new SqlConnection(_connectionString);
            try
            {
                
                
                connection.Open();
                SqlCommand cmd = new SqlCommand(insertCustomer, connection);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);

                DataTable DT = new DataTable();
                adapter.Fill(DT);
                BindGridView();

                
                txtCustomerId.Text = "";
                txtCustName.Text = "";
                txtCity.Text = "";
                txtGrade.Text = "";
                txtSalesmanID.Text = "";
                txtCustomerId.Focus();
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
                string query = "Select * from Customer";
                SqlCommand cmd = new SqlCommand(query, connection);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(DT);

                if (DT.Rows.Count > 0)
                {
                    GVCustomer.DataSource = DT;
                    GVCustomer.DataBind();
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