/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package quanlykhobanhang.entity;

/**
 *
 * @author admin
 */
public class NhaCungCap {
    private String strMaNCC;
    private String strTenNCC;
    private String strDiaChi;
    private String strEmail;
    private String strSoDT;
    
   
    
    public NhaCungCap(String strMaNCC, String strTenNCC, String strDiaChi, String strEmail, String strSoDT){
        this.strMaNCC = strMaNCC;
        this.strTenNCC = strTenNCC;
        this.strDiaChi = strDiaChi;
        this.strEmail = strEmail;
        this.strSoDT = strSoDT;
    }
    
    public String getStrMaNCC(){
        return strMaNCC;
    }
    public String getStrTenNCC(){
        return strTenNCC;
    }
    public String getStrDiaChi(){
        return strDiaChi;
    }
    public String getStrEmail(){
        return strEmail;
    }
    public String getStrSoDT(){
        return strSoDT;
    }
    
    public void setStrMaNCC(String strMaNCC) {
        this.strMaNCC = strMaNCC;
    }
    public void setStrTenNCC(String strTenNCC){
        this.strTenNCC = strTenNCC;
    }
    public void setStrDiaChi(String strDiaChi){
        this.strDiaChi = strDiaChi;
    }
    public void setStrEmail(String strEmail){
        this.strEmail = strEmail;
    }
    public void setStrSoDT(String strSoDT){
        this.strSoDT = strSoDT;
    }
}
