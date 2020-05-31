package cn.cuit.gyl.domain.privilege;

import cn.cuit.gyl.domain.database.UserInfo;

import java.util.List;

public class Role {

    private String id;
    private String roleName; //权限名字
    private String desc; //权限的描述

    //多表
    private List<UserInfo> users; //用户
    private List<Permission> permissions; //权限

    @Override
    public String toString() {
        return "Role{" +
                "id='" + id + '\'' +
                ", roleName='" + roleName + '\'' +
                ", desc='" + desc + '\'' +
                ", users=" + users +
                ", permissions=" + permissions +
                '}';
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public List<UserInfo> getUsers() {
        return users;
    }

    public void setUsers(List<UserInfo> users) {
        this.users = users;
    }

    public List<Permission> getPermissions() {
        return permissions;
    }

    public void setPermissions(List<Permission> permissions) {
        this.permissions = permissions;
    }
}
