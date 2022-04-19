package com.codingdojo.products.Services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.products.Models.Category;
import com.codingdojo.products.Models.Product;
import com.codingdojo.products.Repositories.ProductRepository;

@Service
public class ProductService {
	
	@Autowired
	private ProductRepository productRepository;
	
	// Find All product 
	public List<Product> findAllProduct() {
		return productRepository.findAll();
	}
	
	// Find product linked category
	public List<Product> findLinkedProduct(Category category) {
		return productRepository.findAllByCategories(category);
	}
	
	// Find product not linked category
	public List<Product> findNotLinkedProduct(Category category) {
		return productRepository.findByCategoriesNotContains(category);
	}
	
	// Find product by Id
	public Product findById(Long id) {
		Optional<Product> optionalProduct = productRepository.findById(id);
		
		if (optionalProduct.isPresent()) {
			return optionalProduct.get();
		} else {
			return null;
		}
	}
	
	// Create a new product
	public Product addProduct(Product addProduct) {
		return productRepository.save(addProduct);
	}
}
