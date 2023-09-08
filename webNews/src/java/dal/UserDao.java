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
import model.User;

/**
 *
 * @author kiemq
 */
public class UserDao extends DBContext{
    public User getAccountByUsernameAndPassword(String user, String pass) {
        try {
            String sql = "SELECT *FROM Users WHERE username = ? AND password = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, user);
            statement.setString(2, pass);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                User a = new User();
                a.setId(rs.getInt(1));
                a.setUsername(rs.getString(2));
                a.setPassword(rs.getString(3));
                a.setRoles(rs.getInt(4));
                a.setFullname(rs.getString(5));

                return a;
            }
        } catch (Exception e) {
        }
        return null;

    }
    
     public User checkAccountExist(String user) {
        try {
            String sql = "SELECT * FROM Users WHERE username = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, user);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                User a = new User();
                a.setId(rs.getInt(1));
                a.setUsername(rs.getString(2));
                a.setPassword(rs.getString(3));
                a.setFullname(rs.getString(5));

                return a;
            }
        } catch (Exception e) {
        }
        return null;

    }
     
    public void insertAccount(User s) {
        try {
            String sql = "INSERT INTO [dbo].[Users]\n"
                    + "           ([username]\n"
                    + "           ,[password]\n"
                    + "           ,[roleId]\n"
                    + "           ,[fullname])\n"
                    + "     VALUES\n"
                    + "           (?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, s.getUsername());
            statement.setString(2, s.getPassword());
            statement.setInt(3, s.getRoles());
            statement.setString(4, s.getFullname());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public User getUserById(int id) {
        try {
            String sql = "SELECT * FROM Users WHERE id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                User a = new User();
                a.setId(rs.getInt(1));
                a.setUsername(rs.getString(2));
                a.setPassword(rs.getString(3));
                a.setRoles(rs.getInt(4));
                a.setFullname(rs.getString(5));

                return a;
            }
        } catch (Exception e) {
        }
        return null;

    }
    
    public List<User> getFullUser() {
        List<User> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM Users";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                User r = new User();
                r.setId(rs.getInt(1));
                r.setUsername(rs.getString(2));
                r.setPassword(rs.getString(3));
                r.setRoles(rs.getInt(4));
                r.setFullname(rs.getString(5));              
                list.add(r);
            }
        } catch (Exception e) {
        }
        return list;

    }
    
    public void updateAccount(User s) {
        try {
            String sql = "UPDATE [dbo].[Users]\n"
                    + "   SET [username] = ?\n"
                    + "      ,[password] = ?\n"
                    + "      ,[roleId] = ?\n"
                    + "      ,[fullname] = ?\n"
                    + " WHERE id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, s.getUsername());
            statement.setString(2, s.getPassword());
            statement.setInt(3, s.getRoles());
            statement.setString(4, s.getFullname());
            statement.setInt(5, s.getId());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void deleteAccount(int id) {
        try {
            String sql = "DELETE Users WHERE id=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            statement.executeUpdate();
        } catch (SQLException ex) {
        }
    }
}
