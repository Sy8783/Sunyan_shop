package dao.addcarsDao;

import utils.DataSourceUtils;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class AddCarsDao {
    // 添加商品到购物车（插入购物车记录）
    public int addToCars(int userId, int productId, int quantity) {
        int rowsAffected = 0;
        DataSource dataSource = DataSourceUtils.getDataSource();
        String sql = "INSERT INTO cart (user_id, product_id, quantity, created_at, updated_at) VALUES (?,?,?,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP)";
        try (Connection connection = dataSource.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            preparedStatement.setInt(1, userId);
            preparedStatement.setInt(2, productId);
            preparedStatement.setInt(3, quantity);
            rowsAffected = preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rowsAffected;
    }

}