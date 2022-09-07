package com.xmd.web.entity;
/**
 * 商品分类信息实体
 *
 */

public class GoodsType {
    private int id;

    private String typename;

    public int getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTypename() {
        return typename;
    }

    public void setTypename(String typename) {
        this.typename = typename == null ? null : typename.trim();
    }
}