package com.zzy.service.impl;

import com.zzy.entity.SearchResult;
import com.zzy.service.ElasticSearchService;
import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.client.transport.TransportClient;
import org.elasticsearch.common.text.Text;
import org.elasticsearch.common.transport.InetSocketTransportAddress;
import org.elasticsearch.common.unit.TimeValue;
import org.elasticsearch.index.query.MatchQueryBuilder;
import org.elasticsearch.index.query.QueryBuilder;
import org.elasticsearch.index.query.QueryBuilders;
import org.elasticsearch.search.SearchHit;
import org.elasticsearch.search.highlight.HighlightField;
import org.springframework.stereotype.Service;

import static org.elasticsearch.index.query.QueryBuilders.*;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by zhouzhiyong on 2016/12/28.
 */
@Service
public class ElasticSearchServiceImpl implements ElasticSearchService{
    public static TransportClient client = null;
    static {
        try {
            client = TransportClient.builder().build()
                    .addTransportAddress(new InetSocketTransportAddress(InetAddress.getByName("114.215.125.13"), 9300));
        } catch (UnknownHostException e) {
        } catch (Exception e) {
        }
    }

    public void highlightQuery(String field, String query, String... indices){
        SearchResponse searchResponse = client.prepareSearch(indices)
                .addHighlightedField(field)
                .setQuery(QueryBuilders.disMaxQuery().add(QueryBuilders.matchQuery(field,query)))
                .setHighlighterPreTags("<mark>")
                .setHighlighterPostTags("</mark>")
                .execute().actionGet();

        for(SearchHit hit : searchResponse.getHits().getHits()) {
            HighlightField highlightField = hit.getHighlightFields().get(field);
            for(Text t : highlightField.fragments()) {
                System.out.println(t.string());
            }
        }

    }

    public void tasteIt2() {
        SearchResponse searchResponse = client.prepareSearch("news")
                .addFields("title", "_source", "content")
                .setSize(100)
                .execute().actionGet();

        for(SearchHit hit : searchResponse.getHits().getHits()) {
            System.out.println(hit.getId());
            System.out.println(hit.getType());
            System.out.println(hit.getFields().get("title").getValue());
            System.out.println(hit.getSource().get("title"));
            System.out.println();
        }
    }

    public void tasteIt1() {
        SearchResponse searchResponse = client.prepareSearch("news")
                .setTypes("hexunFutures")
                .setQuery(QueryBuilders.disMaxQuery().add(QueryBuilders.matchQuery("title","聚酯")))
                .setSize(100).execute().actionGet();

        System.out.println(searchResponse.getHits().getTotalHits());
        for(SearchHit hit : searchResponse.getHits().getHits()) {
            System.out.println(hit.getId());
            System.out.println(hit.getSource().get("title"));
            System.out.println(hit.getScore());
            System.out.println();
        }
    }


    @Override
    public List<SearchResult> search(String queryString) {
        String indicesNews = "news";
        String indicesDisclosure = "disclosure";
        String field = "title";
        List<SearchResult> searchResults = new ArrayList<>();
        SearchResponse searchResponse = client.prepareSearch(indicesNews,indicesDisclosure)
                .addHighlightedField(field)
                .setQuery(QueryBuilders.disMaxQuery().add(QueryBuilders.matchQuery(field,queryString)))
                .setHighlighterPreTags("<mark>")
                .setHighlighterPostTags("</mark>")
                .setSize(50)
                .execute().actionGet();

        for(SearchHit hit : searchResponse.getHits().getHits()) {
            HighlightField highlightedField = hit.getHighlightFields().get(field);
            String strHighlightedField = highlightedField.getFragments()[0].string();
//            System.out.println(highlightedField.getFragments()[0].string());

            SearchResult searchResult = new SearchResult();
            searchResult.setScore(hit.getScore());
            searchResult.setId(hit.getId());
            searchResult.setTitle(hit.getSource().get("title").toString());
            searchResult.setTitle(strHighlightedField);
            String content = hit.getSource().get("content").toString();
            content = content.length()>100 ? content.substring(0,100) : content;
            searchResult.setAbstractContent(content);
            searchResult.setDate(hit.getSource().get("date").toString());
            searchResult.setUrl(hit.getSource().get("url").toString());
            searchResult.setAssortment(hit.getIndex());

            searchResults.add(searchResult);
        }

        return searchResults;
    }

    @Override
    public void tasteIt() {
        QueryBuilder qb = termQuery("title","150");
        SearchResponse scrollResp = client.prepareSearch("news")
                .setScroll(new TimeValue(60000))
                .setQuery(qb)
                .setSize(100).execute().actionGet();

        while(true) {
            for(SearchHit hit : scrollResp.getHits().getHits()) {
                System.out.println(hit.getFields());
                System.out.println(hit.getSource());
            }

            scrollResp = client.prepareSearchScroll(scrollResp.getScrollId()).setScroll(new TimeValue(60000)).execute().actionGet();
            if(scrollResp.getHits().getHits().length == 0) {
                break;
            }
        }
    }

    public static void main(String[] args) {
        ElasticSearchServiceImpl essi = new ElasticSearchServiceImpl();
//        essi.tasteIt1();

        String field = "title";
        String query = "聚酯";
        String index = "news";
        essi.highlightQuery(field,query,index);
    }
}
