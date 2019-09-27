package cn.T4.domain;

import java.io.Serializable;

public class Resources implements Serializable {
    private Integer id;
    private String key;
    private String val;
    private Integer sortsum;
    private Integer status;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public String getVal() {
        return val;
    }

    public void setVal(String val) {
        this.val = val;
    }

    public Integer getSortsum() {
        return sortsum;
    }

    public void setSortsum(Integer sortsum) {
        this.sortsum = sortsum;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Resources{" +
                "id=" + id +
                ", key='" + key + '\'' +
                ", val='" + val + '\'' +
                ", sortsum=" + sortsum +
                ", status=" + status +
                '}';
    }
}
