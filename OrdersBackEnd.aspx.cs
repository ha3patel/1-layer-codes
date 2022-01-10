using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace SingleLayerFrontEnd
{
    public partial class OrdersBackEnd : System.Web.UI.Page
    {
        private string _connectionString = ConfigurationManager.ConnectionStrings["conInventory"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                BindGridView();
            }
        }

        protected void txtInsert_Click(object sender, EventArgs e)
        {
            int orderNo = Convert.ToInt32(txtOrderNo.Text);            

            float purchAmt = float.Parse(txtPurchaseAmt.Text);

            DateTime orderDate = Convert.ToDateTime(txtOrderDate.Text);

            int customerId = Convert.ToInt32(txtCustomerId.Text);

            int salesmanId = Convert.ToInt32(txtSalesmanId.Text);

            


            string query = $"INSERT INTO ORDERS (order_no, purch_amt, ord_date, customer_id, salesman_id) values({orderNo},{purchAmt},'{orderDate}',{customerId},{salesmanId});";



            SqlConnection connection = new SqlConnection(_connectionString);

            try
            {

                connection.Open();
                //SqlCommand cmd = new SqlCommand("spInsertOrderDetails", connection);
                //cmd.CommandType = System.Data.CommandType.StoredProcedure;
                //cmd.Parameters.AddWithValue("@order_no", orderNo);
                //cmd.Parameters.AddWithValue("@purch_amt", purchAmt);
                //cmd.Parameters.AddWithValue("@ord_date", OrderDate);
                //cmd.Parameters.AddWithValue("@customer_id", salesmanId);
                //cmd.Parameters.AddWithValue("@salesman_id", customerId);


                SqlCommand cmd = new SqlCommand(query, connection);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);

                DataTable DT = new DataTable();
                adapter.Fill(DT);
                BindGridView();

                txtOrderNo.Text = "";
                txtPurchaseAmt.Text = "";
                txtOrderDate.Text = "";
                txtSalesmanId.Text = "";
                txtCustomerId.Text = "";




                txtOrderNo.Focus();


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

        protected void txtUpdate_Click(object sender, EventArgs e)
        {
            int orderNo = Convert.ToInt32(txtOrderNo.Text);

            float purchAmt = float.Parse(txtPurchaseAmt.Text);

            DateTime orderDate = Convert.ToDateTime((txtOrderDate.Text));

            

            int customerId = Convert.ToInt32(txtCustomerId.Text);

            int salesmanId = Convert.ToInt32(txtSalesmanId.Text);

            SqlConnection connection = new SqlConnection(_connectionString);

            try
            {

                connection.Open();
                SqlCommand cmd = new SqlCommand("spUpdateOrderDetails", connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@order_no", orderNo);
                cmd.Parameters.AddWithValue("@purch_amt", purchAmt);
                cmd.Parameters.AddWithValue("@ord_date", orderDate);
                cmd.Parameters.AddWithValue("@customer_id", customerId);
                cmd.Parameters.AddWithValue("@salesman_id", salesmanId);

                //cmd.ExecuteNonQuery();

                
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);

                DataTable DT = new DataTable();
                adapter.Fill(DT);
                BindGridView();


                txtOrderNo.Text = "";
                txtPurchaseAmt.Text = "";
                txtOrderDate.Text = "";
                txtSalesmanId.Text = "";
                txtCustomerId.Text = "";

                txtOrderNo.Focus();


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

        protected void txtSelect_Click(object sender, EventArgs e)
        {
            int orderNo = Convert.ToInt32(txtOrderNo.Text);

            string query = $"SELECT * FROM ORDERS WHERE order_no = '{orderNo}' ";



            SqlConnection connection = new SqlConnection(_connectionString);

            try
            {

                connection.Open();
                


                SqlCommand cmd = new SqlCommand(query, connection);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);

                SqlDataReader reader = cmd.ExecuteReader();

                GVSelect.DataSource = reader;

                GVSelect.DataBind();



                //txtOrderNo.Focus();


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
                string query = "select * from Orders";
                SqlCommand cmd = new SqlCommand(query, connection);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(DT);

                if (DT.Rows.Count > 0)
                {
                    GVOrders.DataSource = DT;
                    GVOrders.DataBind();
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