package com.news.newspaper.newspaper.controller;

import com.news.newspaper.newspaper.model.News;
import com.news.newspaper.newspaper.service.CategoryService;
import com.news.newspaper.newspaper.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class NewsController {
    @Autowired
    private NewsService newsService;
    @Autowired
    private CategoryService categoryService;

    @RequestMapping(value = "/createNews", method = RequestMethod.GET)
    public String createNews(Model m) {
        m.addAttribute("categoryList", categoryService.getCategoryList());
        return "createNews";
    }

    @RequestMapping(value = "/saveNews", method = RequestMethod.POST)
    public String saveNews(@ModelAttribute(value = "news") News news) {
        System.out.println(news.getCategory().getName());
        System.out.println(news.getTitle());
        newsService.saveNews(news);
        return null;
    }

    public List<News> getNewsList() {
        return newsService.getNewsList();
    }


}
