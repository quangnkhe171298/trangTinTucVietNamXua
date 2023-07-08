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
import model.Category;
import model.User;

/**
 *
 * @author kiemq
 */
public class CategoryDao extends DBContext{
    public List<Category> getAllCategorys() {
        List<Category> list = new ArrayList<>();
        try {
            String sql = "SELECT *FROM Category";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Category r = new Category();
                r.setId(rs.getInt(1));
                r.setName(rs.getString(2));
                r.setImage(rs.getString(3));
                list.add(r);
            }
        } catch (Exception e) {
        }
        return list;

    }

    public Category getCategoryById(int id) {
        try {
            String sql = "SELECT *FROM [Category] WHERE id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Category r = new Category();
                r.setId(rs.getInt(1));
                r.setName(rs.getString(2));
                r.setImage(rs.getString(3));
                return r;
            }
        } catch (Exception e) {
        }
        return null;

    }

    public void insertCategory(Category s) {
        try {
            String sql = "INSERT INTO [dbo].[Category]\n"
                    + "           ([Name]\n"
                    + "           ,[Image])\n"
                    + "     VALUES\n"
                    + "           (?\n"
                    + "           ,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, s.getName());
            statement.setString(2, s.getImage());
            statement.executeUpdate();
        } catch (SQLException ex) {
        }
    }

    public void deleteCategory(int id) {
        try {
            String sql = "DELETE Category WHERE id=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            statement.executeUpdate();
        } catch (SQLException ex) {
        }
    }

    public void updateCategory(Category s) {
        try {
            String sql = "UPDATE [dbo].[Category]\n"
                    + "   SET [Name] = ?, Image = ?\n"
                    + " WHERE ID =  ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, s.getName());
            statement.setString(2, s.getImage());
            statement.setInt(3, s.getId());
            statement.executeUpdate();
        } catch (SQLException ex) {
        }
    }
}
