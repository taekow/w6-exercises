package com.codingdojo.products.Services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.products.Models.Category;
import com.codingdojo.products.Models.Product;
import com.codingdojo.products.Repositories.CategoryRepository;

@Service
public class CategoryService {
	
	@Autowired
	private CategoryRepository categoryRepository;
	
	// Find All product 
	public List<Category> findAllCategory() {
		return categoryRepository.findAll();
	}
	
	// Find category linked product
	public List<Category> findLinkedCategory(Product product) {
		return categoryRepository.findAllByProducts(product);
	}
	
	// Find category not linked product
	public List<Category> findNotLinkedCategory(Product product) {
		return categoryRepository.findByProductsNotContains(product);
	}
	
	// Find product by Id
	public Category findById(Long id) {
		Optional<Category> optionalCateogry = categoryRepository.findById(id);
		
		if (optionalCateogry.isPresent()) {
			return optionalCateogry.get();
		} else {
			return null;
		}
	}
	
	// Create a new product
	public Category addCategory(Category addCategory) {
		return categoryRepository.save(addCategory);
	}
}
