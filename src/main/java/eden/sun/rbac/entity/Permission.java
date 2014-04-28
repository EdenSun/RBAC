package eden.sun.rbac.entity;

import java.util.Date;

public class Permission {
    private Integer id;

    private String pname;

    private Integer pmenuId;

    private String pstring;

    private Integer isDelete;

    private Date updateTime;

    private Date createTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname == null ? null : pname.trim();
    }

    public Integer getPmenuId() {
        return pmenuId;
    }

    public void setPmenuId(Integer pmenuId) {
        this.pmenuId = pmenuId;
    }

    public String getPstring() {
        return pstring;
    }

    public void setPstring(String pstring) {
        this.pstring = pstring == null ? null : pstring.trim();
    }

    public Integer getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(Integer isDelete) {
        this.isDelete = isDelete;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}