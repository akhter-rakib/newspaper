package com.news.newspaper.newspaper.controller;

import com.news.newspaper.newspaper.model.Category;
import com.news.newspaper.newspaper.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class CategoryController {
    @Autowired
    private CategoryService categoryService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home() {
        return "createCategory";
    }


    @RequestMapping(value = "/createCategory", method = RequestMethod.POST)
    public String saveCategory(@ModelAttribute(value = "category") Category category) {
        categoryService.saveCategory(category);
        return null;
    }

    @RequestMapping(value = "/getCategoryList", method = RequestMethod.GET)
    public List<Category> getCategory() {
        return categoryService.getCategoryList();
    }

}
