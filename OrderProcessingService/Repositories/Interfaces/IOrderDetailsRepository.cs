using OrderProcessingService.Models;

namespace OrderProcessingService.Repositories.Interfaces;

public interface IOrderDetailsRepository{

    Task<List<OrderDetails>> GetAllOrderDetails();

    Task<OrderDetails> GetOrderDetail(int id);
    
    Task<bool> Insert(OrderDetails orderDetail);

    Task<bool> Update(OrderDetails orderDetail);

    Task<bool> Delete(int id);

    Task<List<OrderHistory>> GetDetails(int orderId);

    
    
}