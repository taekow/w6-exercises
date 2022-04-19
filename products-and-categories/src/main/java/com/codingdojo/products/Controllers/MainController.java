package com.codingdojo.products.Controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.codingdojo.products.Models.Category;
import com.codingdojo.products.Models.Product;
import com.codingdojo.products.Services.CategoryService;
import com.codingdojo.products.Services.ProductService;

@Controller
public class MainController {
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private ProductService productService;
	
	//******* Home page get route *******//
	@GetMapping("/")
	public String homePage(
			Model productModel,
			Model categoryModel) {
		
		productModel.addAttribute("products", productService.findAllProduct());
		categoryModel.addAttribute("categories", categoryService.findAllCategory());
		
		return "index.jsp";
	}
	
	//******* New Product get route *******//
	@GetMapping("/products/new")
	public String newProduct(@ModelAttribute("newProduct") Product newProduct) {
		return "new-product.jsp";
	}
	
	@PostMapping("/products/create")
	public String createProduct(@Valid
			@ModelAttribute("newProduct") Product newProduct,
			BindingResult result) {
		if(result.hasErrors()) {
			return "new-product.jsp";
		}
		
		productService.addProduct(newProduct);
		
		return "redirect:/";
	}
	
	//******* Product get route *******//
	@GetMapping("/products/{id}")
	public String showProduct(
			@PathVariable("id") Long id,
			Model productModel) {
		
		Product product = productService.findById(id);
		productModel.addAttribute("product", product);
		productModel.addAttribute("linkedCategories", categoryService.findLinkedCategory(product));
		productModel.addAttribute("notLinkedCategory", categoryService.findNotLinkedCategory(product));
		
		return "product-detail.jsp";
	}
	
	//******* New Category get route *******//
	@GetMapping("/categories/new")
	public String newCategory(@ModelAttribute("newCategory") Product newCategory) {
		return "new-category.jsp";
	}
	
	@PostMapping("/categories/create")
	public String createCategory(@Valid
			@ModelAttribute("newCategory") Category newCategory,
			BindingResult result) {
		if(result.hasErrors()) {
			return "new-category.jsp";
		}
		
		categoryService.addCategory(newCategory);
		
		return "redirect:/";
	}
	
	//******* Category get route *******//
	@GetMapping("/categories/{id}")
	public String showCategory(
			@PathVariable("id") Long id,
			Model categoryModel) {
		Category category = categoryService.findById(id);
		categoryModel.addAttribute("linkedCategory", productService.findLinkedProduct(category));
		categoryModel.addAttribute("notLinkedCategory", productService.findNotLinkedProduct(category));
		
		return "category-detail.jsp";
	}

}
