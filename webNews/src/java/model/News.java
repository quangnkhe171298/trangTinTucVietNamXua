/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author kiemq
 */
public class News {
    private int id;
    private String title;
    private String description;
    private String image;
    private int authorId;
    private String timePost;
    private String shortDes;
    private int categoryId;
    private Category category;
    private User user;

    public News() {
    }

    public News(String title, String description, String image, String shortDes, int categoryId) {
        this.title = title;
        this.description = description;
        this.image = image;
        this.shortDes = shortDes;
        this.categoryId = categoryId;
    }

    public News(int id, String title, String description, String image, String shortDes, int categoryId) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.image = image;
        this.shortDes = shortDes;
        this.categoryId = categoryId;
    }

    public News(int id, String title, String description, String image, int authorId, String timePost, String shortDes, int categoryId, User user) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.image = image;
        this.authorId = authorId;
        this.timePost = timePost;
        this.shortDes = shortDes;
        this.categoryId = categoryId;
        this.user = user;
    }

    public News(String title, String description, String image, int authorId, String timePost, String shortDes, int categoryId) {
        this.title = title;
        this.description = description;
        this.image = image;
        this.authorId = authorId;
        this.timePost = timePost;
        this.shortDes = shortDes;
        this.categoryId = categoryId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getAuthorId() {
        return authorId;
    }

    public void setAuthorId(int authorId) {
        this.authorId = authorId;
    }

    public String getTimePost() {
        return timePost;
    }

    public void setTimePost(String timePost) {
        this.timePost = timePost;
    }

    public String getShortDes() {
        return shortDes;
    }

    public void setShortDes(String shortDes) {
        this.shortDes = shortDes;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
    
    
}
