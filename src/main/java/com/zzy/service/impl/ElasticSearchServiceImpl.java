package com.zzy.service.impl;

import com.zzy.service.ElasticSearchService;
import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.client.transport.TransportClient;
import org.elasticsearch.common.transport.InetSocketTransportAddress;
import org.elasticsearch.common.unit.TimeValue;
import org.elasticsearch.index.query.QueryBuilder;
import org.elasticsearch.search.SearchHit;

import static org.elasticsearch.index.query.QueryBuilders.*;

import java.net.InetAddress;
import java.net.UnknownHostException;

/**
 * Created by zhouzhiyong on 2016/12/28.
 */
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
    @Override
    public void tasteIt() {
        QueryBuilder qb = termQuery("title","螺纹钢");
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
        essi.tasteIt();
    }
}
