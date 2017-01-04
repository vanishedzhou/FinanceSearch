package com.zzy.service;

import com.zzy.entity.SearchResult;

import java.util.List;

import static org.elasticsearch.index.query.QueryBuilders.*;

/**
 * Created by zhouzhiyong on 2016/12/28.
 */
public interface ElasticSearchService {

    public List<SearchResult> search(String queryString);

    public void tasteIt();
}
