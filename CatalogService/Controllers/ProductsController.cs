using CatalogService.Models;
using Microsoft.AspNetCore.Mvc;
using CatalogService.Service.Interfaces;


namespace CatalogService.Controllers;

[ApiController]
[Route("api/[controller]")]
public class ProductController : ControllerBase
{
    private readonly IProductService _service;

    public ProductController(IProductService service)
    {
        _service = service;
    }

     [HttpGet]
    public async Task<List<Product>> GetAllProducts()
    {
        List<Product> products = await _service.GetAllProducts();
        return products;
    }

    [HttpGet]
    public async Task<Product> GetProduct(int id)
    {
        Product product = await _service.GetProduct(id);
        return product;
    }

    [HttpPost]
    public async Task<bool> Insert([FromBody] Product product)
    {
        bool result = await _service.Insert(product);
        return result;
    }
    
    [HttpPut]
    public async Task<bool> Update(int id, [FromBody] Product product)
    {
        Product oldProduct = await _service.GetProduct(id);
        if(oldProduct.Id==0){
            return false;
        }
        product.Id = id;
        bool result = await _service.Update(product);
        return result;
    }

    [HttpDelete]
    public async Task<bool> DeleteProduct(int id)
    {
        bool result = await _service.DeleteProduct(id);
        return result;
    }


    // [HttpGet]
    // [Route("/category/{categoryName}")]
    // public async Task<List<Products>> GetProductsDetails(string categoryName)
    // {
    //     List<Products> products = await _service.GetProductsDetails(categoryName);
    //     return products;
    // }
}    