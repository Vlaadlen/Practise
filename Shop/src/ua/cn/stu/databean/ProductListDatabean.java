package ua.cn.stu.databean;

import java.util.List;

import ua.cn.stu.dao.HibernateDAOFactory;
import ua.cn.stu.domain.Product;

public class ProductListDatabean {
	private List<Product> productList;

	public ProductListDatabean() {
		productList = HibernateDAOFactory.getInstance().getProductDAO()
				.getAllProducts();
	}

	public List<Product> getProductList() {
		return productList;
	}

	public void setProductList(List<Product> productList) {
		this.productList = productList;
	}
}
