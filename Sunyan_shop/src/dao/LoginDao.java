
package dao;

import model.User;
import utils.DataSourceUtils;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

// 假设这里有对应的User实体类，包含username、password等属性
public class LoginDao {
    // 根据用户名和密码查询用户信息来模拟登录验证（简单示例，可拓展更多安全等方面逻辑）
    public User findUserByUsernameAndPassword(String username, String password) {
        User user = null;
        DataSource dataSource = DataSourceUtils.getDataSource();
        String sql = "SELECT * FROM users WHERE username = ? AND password = ?";
        try (Connection connection = dataSource.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);
            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                if (resultSet.next()) {
                    user = new User();
                    user.setId(resultSet.getInt("id"));
                    user.setUsername(resultSet.getString("username"));
                    user.setPassword(resultSet.getString("password"));
                    user.setEmail(resultSet.getString("email"));
                    user.setPhone(resultSet.getString("phone"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }
}

