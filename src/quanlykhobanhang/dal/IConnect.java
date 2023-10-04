/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package quanlykhobanhang.dal;

import java.sql.ResultSet;

/**
 *
 * @author admin
 */
public interface IConnect {
    //1. Load Driver và 2. Mở kết nối
    void openConnect();

    //3.2. Khởi tạo đối tượng truy vấn và 4.2. Chạy truy vấn với lệnh "INSERT, UPDATE, DELETE"
    int queryIN_UP_DEL(String strSQL);

    //3.1. Khởi tạo đối tượng truy vấn và 4.1. Chạy truy vấn với lệnh "SELECT"
    ResultSet querySELECT(String strSQL);

    //5. Đóng kết nối
    void closeConnect();
}
