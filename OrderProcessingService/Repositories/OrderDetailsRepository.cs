using OrderProcessingService.Models;
using MySql.Data.MySqlClient;
using OrderProcessingService.Repositories.Interfaces;

namespace OrderProcessingService.Repositories;

public class OrderDetailsRepository : IOrderDetailsRepository
{
    private readonly IConfiguration _configuration;
    private readonly string _conString;

    public OrderDetailsRepository(IConfiguration configuration)
    {

        _configuration = configuration;
        _conString = this._configuration.GetConnectionString("DefaultConnection");
    }

    public List<OrderDetails> OrderDetails()
    {
        List<OrderDetails> orderDetails = new List<OrderDetails>();
        MySqlConnection con = new MySqlConnection();
        con.ConnectionString = _conString;
        try
        {
            string query = "SELECT * FROM order_details";
            con.Open();
            MySqlCommand command = new MySqlCommand(query, con);
            MySqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                int id = int.Parse(reader["order_details_id"].ToString());
                int orderId = int.Parse(reader["order_id"].ToString());
                int productId = int.Parse(reader["product_id"].ToString());
                int quantity = int.Parse(reader["quantity"].ToString());
                double discount = double.Parse(reader["discount"].ToString());

                OrderDetails orderDetail = new OrderDetails()
                {
                    OrderDetailsId = id,
                    OrderId = orderId,
                    ProductId = productId,
                    Quantity = quantity,
                    Discount = discount
                };
                orderDetails.Add(orderDetail);
            }
            reader.Close();
        }
        catch (Exception e)
        {
            throw e;
        }
        finally
        {
            con.Close();
        }
        return orderDetails;
    }

    public OrderDetails OrderDetail(int id)
    {
        OrderDetails orderDetail = new OrderDetails();
        MySqlConnection con = new MySqlConnection();
        con.ConnectionString = _conString;
        try
        {
            string query = "SELECT * FROM order_details where order_details_id=@orderDetailsId";
            con.Open();
            MySqlCommand command = new MySqlCommand(query, con);
            command.Parameters.AddWithValue("@orderDetailsId",id);
            MySqlDataReader reader = command.ExecuteReader();
            if (reader.Read())
            {
                //int id = Int32.Parse(reader["orderdetails_id"].ToString());
                int orderId = Int32.Parse(reader["order_id"].ToString());
                int productId = Int32.Parse(reader["product_id"].ToString());
                int quantity = Int32.Parse(reader["quantity"].ToString());
                double discount = double.Parse(reader["discount"].ToString());

                orderDetail = new OrderDetails()
                {
                    OrderDetailsId = id,
                    OrderId = orderId,
                    ProductId = productId,
                    Quantity = quantity,
                    Discount = discount
                };
            }
        }
        catch (Exception e)
        {
            throw e;
        }
        finally
        {
            con.Close();
        }
        return orderDetail;
    }
    public bool Insert(OrderDetails orderDetail)
    {
        bool status = false;
        MySqlConnection con = new MySqlConnection();
        con.ConnectionString = _conString;
        try
        {
            string query = "INSERT INTO order_details(order_id,product_id,quantity,discount)VALUES(@orderId,@productId,@quantity,@discount)";
            con.Open();
            MySqlCommand command = new MySqlCommand(query, con);
            command.Parameters.AddWithValue("@orderId",orderDetail.OrderId);
            command.Parameters.AddWithValue("@productId",orderDetail.ProductId);
            command.Parameters.AddWithValue("@quantity",orderDetail.Quantity);
            command.Parameters.AddWithValue("@discount",orderDetail.Discount);
            int rowsAffected =command.ExecuteNonQuery();
            if(rowsAffected > 0){
            status = true;
            }
        }
        catch (Exception e)
        {
            throw e;
        }
        finally
        {
            con.Close();
        }
        return status;
    }

    public bool Update(OrderDetails orderDetail)
    {
        bool status = false;
        MySqlConnection con = new MySqlConnection();
        con.ConnectionString = _conString;
        try
        {
            string query = "Update order_details set order_id=@orderId, product_id=@productId,quantity=@quantity, discount=@discount Where order_details_id =@orderDetailsId";
            con.Open();
            MySqlCommand command = new MySqlCommand(query, con);
            command.Parameters.AddWithValue("@orderDetailsId",orderDetail.OrderDetailsId);
            command.Parameters.AddWithValue("@orderId",orderDetail.OrderId);
            command.Parameters.AddWithValue("@productId",orderDetail.ProductId);
            command.Parameters.AddWithValue("@quantity",orderDetail.Quantity);
            command.Parameters.AddWithValue("@discount",orderDetail.Discount);
            int rowsAffected =command.ExecuteNonQuery();
            if(rowsAffected > 0){
               status = true;
            }
        }
        catch (Exception e)
        {
            throw e;
        }
        finally
        {
            con.Close();
        }
        return status;
    }
    public bool Delete(int id)
    {
        bool status = false;
        MySqlConnection con = new MySqlConnection();
        con.ConnectionString = _conString;
        try
        {
            string query = "DELETE FROM order_Details where order_Details_id =@orderDetailsId";
            con.Open();
            MySqlCommand command = new MySqlCommand(query, con);
            command.Parameters.AddWithValue("@orderDetailsId",id);
            int rowsAffected =command.ExecuteNonQuery();
            if(rowsAffected > 0){
                status = true;
            }
        }
        catch (Exception e)
        {
            throw e;
        }
        finally
        {
            con.Close();
        }
        return status;
    }

}