package com.codingdojo.products.Repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.products.Models.Category;
import com.codingdojo.products.Models.Product;

@Repository
public interface ProductRepository extends CrudRepository<Product, Long>{
	
	List<Product> findAll();
	
	Product findByIdIs(Long id);
	
	List<Product> findAllByCategories(Category Category);
	
	List<Product> findByCategoriesNotContains(Category Category);
}
