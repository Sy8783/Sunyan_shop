
package utils;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import javax.sql.DataSource;
import java.beans.PropertyVetoException;

public class DataSourceUtils {
    private static DataSource ds = null;

    static {
        ComboPooledDataSource cpds = new ComboPooledDataSource();
        try {
            cpds.setDriverClass("com.mysql.jdbc.Driver");
            cpds.setJdbcUrl("jdbc:mysql://localhost:3306/sunyan_shop?" + "serverTimezone=GMT%2B8");
            cpds.setUser("root");
            cpds.setPassword("root");
            cpds.setInitialPoolSize(5);
            cpds.setMaxPoolSize(15);
            ds = cpds;
        } catch (PropertyVetoException e) {
            throw new RuntimeException("数据库连接池配置出错", e);
        }
    }

    public static DataSource getDataSource() {
        return ds;
    }
}
