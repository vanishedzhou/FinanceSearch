package com.zzy.controller;

import com.zzy.entity.SearchResult;
import com.zzy.service.ElasticSearchService;
import org.elasticsearch.search.SearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by zhouzhiyong on 2016/12/29.
 */
@Controller
@RequestMapping(value = "search")
public class SearchController {
    @Autowired
    public ElasticSearchService elasticSearchService;

    @RequestMapping(value = "/main")
    public String showMainSearchPage(Model model) {
        SearchResult searchResult = new SearchResult();
        model.addAttribute("searchResult",searchResult);

        return "SearchMain";
    }

    @RequestMapping(value = "/search")
    public String searchResult(@ModelAttribute SearchResult searchResult, Model model) {
        List<SearchResult> searchResults = elasticSearchService.search(searchResult.getQueryString());
        model.addAttribute("searchResults",searchResults);

        return "SearchResult";
    }
}
