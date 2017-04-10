package com.github.tinyking.jcs.model;

import javax.persistence.*;

public class Dict {
    /**
     * 主键
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    /**
     * 分类
     */
    private String category;

    /**
     * 字典码
     */
    private String code;

    private String value;

    private String label;

    private String remark;

    private Integer sort;

    private Byte yn;

    /**
     * 获取主键
     *
     * @return id - 主键
     */
    public Long getId() {
        return id;
    }

    /**
     * 设置主键
     *
     * @param id 主键
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * 获取分类
     *
     * @return category - 分类
     */
    public String getCategory() {
        return category;
    }

    /**
     * 设置分类
     *
     * @param category 分类
     */
    public void setCategory(String category) {
        this.category = category;
    }

    /**
     * 获取字典码
     *
     * @return code - 字典码
     */
    public String getCode() {
        return code;
    }

    /**
     * 设置字典码
     *
     * @param code 字典码
     */
    public void setCode(String code) {
        this.code = code;
    }

    /**
     * @return value
     */
    public String getValue() {
        return value;
    }

    /**
     * @param value
     */
    public void setValue(String value) {
        this.value = value;
    }

    /**
     * @return label
     */
    public String getLabel() {
        return label;
    }

    /**
     * @param label
     */
    public void setLabel(String label) {
        this.label = label;
    }

    /**
     * @return remark
     */
    public String getRemark() {
        return remark;
    }

    /**
     * @param remark
     */
    public void setRemark(String remark) {
        this.remark = remark;
    }

    /**
     * @return sort
     */
    public Integer getSort() {
        return sort;
    }

    /**
     * @param sort
     */
    public void setSort(Integer sort) {
        this.sort = sort;
    }

    /**
     * @return yn
     */
    public Byte getYn() {
        return yn;
    }

    /**
     * @param yn
     */
    public void setYn(Byte yn) {
        this.yn = yn;
    }
}