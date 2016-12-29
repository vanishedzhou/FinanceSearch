package com.zzy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by zhouzhiyong on 2016/12/29.
 */
@Controller
@RequestMapping(value = "search")
public class SearchController {
    @RequestMapping(value = "/main")
    public String showMainSearchPage() {

        return "SearchMain";
    }
}
