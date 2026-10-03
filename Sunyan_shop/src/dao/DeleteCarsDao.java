package dao.deletecarsDao;

import utils.DataSourceUtils;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DeleteCarsDao {
    // 根据购物车记录的某个标识（比如主键等，这里假设是购物车记录的id）删除购物车记录
    public int deleteCartRecord(int cartRecordId) {
        int rowsAffected = 0;
        DataSource dataSource = DataSourceUtils.getDataSource();
        String sql = "DELETE FROM cart WHERE id =?";
        try (Connection connection = dataSource.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            preparedStatement.setInt(1, cartRecordId);
            rowsAffected = preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rowsAffected;
    }
}
