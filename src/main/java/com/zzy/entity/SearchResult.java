package com.zzy.entity;

/**
 * Created by zhouzhiyong on 2017/1/4.
 */
public class SearchResult {
    private String queryString;

    private double score;
    private String id;
    private String url;
    private String title;
    private String abstractContent;
    private String date;
    private String infoSource;

    private String assortment;

    public String getAssortment() {
        return assortment;
    }

    public void setAssortment(String assortment) {
        this.assortment = assortment;
    }

    public double getScore() {
        return score;
    }

    public void setScore(double score) {
        this.score = score;
    }

    public String getQueryString() {
        return queryString;
    }

    public void setQueryString(String queryString) {
        this.queryString = queryString;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAbstractContent() {
        return abstractContent;
    }

    public void setAbstractContent(String abstractContent) {
        this.abstractContent = abstractContent;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getInfoSource() {
        return infoSource;
    }

    public void setInfoSource(String infoSource) {
        this.infoSource = infoSource;
    }
}
