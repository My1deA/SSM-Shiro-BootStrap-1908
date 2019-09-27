package cn.T4.domain;

import java.io.Serializable;

public class Role implements Serializable {

    private Integer id;
    private String r_name;
    private String remark;
    private Integer status;
    private Integer parentid;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getR_name() {
        return r_name;
    }

    public void setR_name(String r_name) {
        this.r_name = r_name;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getParentid() {
        return parentid;
    }

    public void setParentid(Integer parentid) {
        this.parentid = parentid;
    }

    @Override
    public String toString() {
        return "Role{" +
                "id=" + id +
                ", r_name='" + r_name + '\'' +
                ", remark='" + remark + '\'' +
                ", status='" + status + '\'' +
                ", parentid=" + parentid +
                '}';
    }
}
