/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package quanlykhobanhang.dal;


import test.ConnectDB;
import java.sql.PreparedStatement;

import java.sql.ResultSet;
/**
 *
 * @author admin
 */
public class TaiKhoan extends ConnectDB {
        private final String GET_LOGIN = "Select *From NguoiDung where Username=? and Password=?";
    
    public int getLogin(String u, String p) {
        try {
            getConnect();

            PreparedStatement ps = con.prepareStatement(GET_LOGIN);
            ps.setString(1, u);
            ps.setString(2, p);
            ResultSet rs = ps.executeQuery();
            
            getclose();
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
}
