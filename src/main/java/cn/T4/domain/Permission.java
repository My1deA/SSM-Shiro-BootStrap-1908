package cn.T4.domain;

import java.io.Serializable;

public class Permission implements Serializable {
    private Integer id;
    private String p_name;
    private String description;
    private Integer status;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getP_name() {
        return p_name;
    }

    public void setP_name(String p_name) {
        this.p_name = p_name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Permission{" +
                "id=" + id +
                ", Permission='" + p_name + '\'' +
                ", description='" + description + '\'' +
                ", status=" + status +
                '}';
    }
}
