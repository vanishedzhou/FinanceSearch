package com.zzy.entity;

import java.util.Date;

public class Contract {
    private Integer id;

    private Date updatedAt;

    private Integer updatedBy;

    private String content;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Date updatedAt) {
        this.updatedAt = updatedAt;
    }

    public Integer getUpdatedBy() {
        return updatedBy;
    }

    public void setUpdatedBy(Integer updatedBy) {
        this.updatedBy = updatedBy;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }
    
    @Override
    public String toString() {
    	return "contract - id:" + id + " content:" + content + " updatedAt:" + updatedAt + " updatedBy" + updatedBy;
    }
}