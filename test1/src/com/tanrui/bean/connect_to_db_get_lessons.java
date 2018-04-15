package com.tanrui.bean;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class connect_to_db_get_lessons {
    public static ArrayList<get_lessons> ctb_get_lessons(String sql) throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");
        ResultSet resultSet = DriverManager.getConnection
                ("jdbc:mysql://i5apdbuy.457.dnstoo.com:4017/tanrui","tanrui_f","tanrui106")
                .createStatement().executeQuery(sql);
        ArrayList<get_lessons> lessons_list_default = new ArrayList<>();
        while (resultSet.next()){
            lessons_list_default.add(new get_lessons(resultSet.getString(2), resultSet.getString(1)));
        }
        return lessons_list_default;
    }
}
