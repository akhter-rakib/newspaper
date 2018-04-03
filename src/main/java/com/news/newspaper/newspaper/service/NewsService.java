package com.news.newspaper.newspaper.service;

import com.news.newspaper.newspaper.model.News;
import com.news.newspaper.newspaper.repository.NewsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NewsService {
    @Autowired
    private NewsRepository newsRepository;

    public void saveNews(News news) {
        newsRepository.save(news);
    }

    public List<News> getNewsList() {
        return newsRepository.findAll();
    }
}
