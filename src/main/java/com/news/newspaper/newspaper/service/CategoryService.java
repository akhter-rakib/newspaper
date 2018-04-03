package com.news.newspaper.newspaper.service;

import com.news.newspaper.newspaper.model.Category;
import com.news.newspaper.newspaper.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryService {
    @Autowired
    private CategoryRepository categoryRepository;

    public void saveCategory(Category category) {
        categoryRepository.save(category);
    }

    public List<Category> getCategoryList() {
        return categoryRepository.findAll();
    }
}
