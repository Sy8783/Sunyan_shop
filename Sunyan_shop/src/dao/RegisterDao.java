package dao;

import model.User;
import utils.DataSourceUtils;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

// 假设这里有对应的User实体类，包含username、password等属性
public class RegisterDao {
    // 插入新用户信息，对应注册功能
    public int registerUser(User user) {
        int rowsAffected = 0;
        DataSource dataSource = DataSourceUtils.getDataSource();
        String sql = "INSERT INTO users (username, password, email, phone) VALUES (?,?,?,?)";
        try (Connection connection = dataSource.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            preparedStatement.setString(1, user.getUsername());
            preparedStatement.setString(2, user.getPassword());
            preparedStatement.setString(3, user.getEmail());
            preparedStatement.setString(4, user.getPhone());
            rowsAffected = preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rowsAffected;
    }
}
