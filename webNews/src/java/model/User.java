/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author kiemq
 */
public class User {
    private int id;
    private String username;
    private String password;
    private String fullname;
    private int roles;

    public User(int id, String username, String password, String fullname, int roles) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.fullname = fullname;
        this.roles = roles;
    }

    public User() {
    }

    public User(String username, String password, String fullname, int roles) {
        this.username = username;
        this.password = password;
        this.fullname = fullname;
        this.roles = roles;
    }

    public User(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public int getRoles() {
        return roles;
    }

    public void setRoles(int roles) {
        this.roles = roles;
    }  
    
}
