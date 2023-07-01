/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author kiemq
 */
public class Comment {
    private int id;
    private int userId;
    private String comment;
    private User user;
    private String time;
    private int newId;
    private News news;
    
    public Comment() {
    }

    public Comment(int id, int userId, String comment, User user, String time, int newId, News news) {
        this.id = id;
        this.userId = userId;
        this.comment = comment;
        this.user = user;
        this.time = time;
        this.newId = newId;
        this.news = news;
    }

    public Comment(int userId, String comment, String time, int newId) {
        this.userId = userId;
        this.comment = comment;
        this.time = time;
        this.newId = newId;
    }
    
    public int getNewId() {
        return newId;
    }

    public void setNewId(int newId) {
        this.newId = newId;
    }

    public News getNews() {
        return news;
    }

    public void setNews(News news) {
        this.news = news;
    }

    public Comment(int userId, String comment, User user, String time) {
        this.userId = userId;
        this.comment = comment;
        this.user = user;
        this.time = time;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

   
    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
