/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Comment;
import model.News;
import model.User;

/**
 *
 * @author kiemq
 */
public class CommentDao extends DBContext{
     public UserDao userDao = new UserDao();

    public List<Comment> getAllCommentByNewId(String id) {
        List<Comment> list = new ArrayList<>();
        try {
            String sql = "SELECT *FROM Comment where new_id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, id);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Comment r = new Comment();
                r.setId(rs.getInt(1));
                r.setUserId(rs.getInt(2));
                r.setComment(rs.getString(3));
                r.setTime(rs.getString(4));
                User user = userDao.getUserById(r.getUserId());
                r.setUser(user);
                list.add(r);
            }
        } catch (Exception e) {
        }
        return list;

    }

    public int countCommentByNewId(String id) {
        int count = 0;
        try {
            String sql = "SELECT COUNT([USER_ID])\n"
                    + "FROM Comment\n"
                    + "WHERE new_id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, id);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return count;
    }

    public void insertComment(Comment s) {
        try {
            String sql = "INSERT INTO [dbo].[Comment]\n"
                    + "           ([user_id]\n"
                    + "           ,[comment]\n"
                    + "           ,[time]\n"
                    + "           ,[new_id])\n"
                    + "     VALUES\n"
                    + "           (?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, s.getUserId());
            statement.setString(2, s.getComment());
            statement.setString(3, s.getTime());
            statement.setInt(4, s.getNewId());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
