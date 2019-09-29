package cn.T4.domain;

import java.io.Serializable;

public class Permission implements Serializable {
    private Integer id;
    private String permission;
    private String description;
    private Integer status;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPermission() {
        return permission;
    }

    public void setPermission(String permission) {
        this.permission = permission;
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
                ", Permission='" + permission + '\'' +
                ", description='" + description + '\'' +
                ", status=" + status +
                '}';
    }
}
