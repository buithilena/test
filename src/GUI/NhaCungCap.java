/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package GUI;

import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;
import test.ConnectDB;

/**
 *
 * @author admin
 */
public class NhaCungCap extends javax.swing.JFrame {
    
    DefaultTableModel tbModel;
    private String strEdit = " ";

    
    public NhaCungCap() {
        initComponents();
        CapNhatBangDuLieu();
    }

    
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        btnSua = new javax.swing.JButton();
        btnXoa = new javax.swing.JButton();
        btnTimkiem = new javax.swing.JButton();
        lblTimkiem = new javax.swing.JLabel();
        txtTimkiem = new javax.swing.JTextField();
        jScrollPane1 = new javax.swing.JScrollPane();
        tblNhacungcap = new javax.swing.JTable();
        btnThem = new javax.swing.JButton();
        lblMaNCC = new javax.swing.JLabel();
        lblTenNCC = new javax.swing.JLabel();
        lblDiaChi = new javax.swing.JLabel();
        lblEmail = new javax.swing.JLabel();
        lblSoDT = new javax.swing.JLabel();
        txtMaNCC = new javax.swing.JTextField();
        txtTenNCC = new javax.swing.JTextField();
        txtDiaChi = new javax.swing.JTextField();
        txtEmail = new javax.swing.JTextField();
        txtSoDT = new javax.swing.JTextField();
        btnThoat = new javax.swing.JButton();
        btnLuu = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Nhà Cung Cấp");

        btnSua.setText("Sửa");
        btnSua.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnSuaActionPerformed(evt);
            }
        });

        btnXoa.setText("Xóa");
        btnXoa.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnXoaActionPerformed(evt);
            }
        });

        btnTimkiem.setText("Tìm Kiếm");
        btnTimkiem.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnTimkiemActionPerformed(evt);
            }
        });

        lblTimkiem.setText("Nhập Mã NCC:");

        tblNhacungcap.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null, null, null}
            },
            new String [] {
                "STT", "Mã NCC", "Tên NCC", "Địa Chỉ", "Email", "Số ĐT"
            }
        ));
        jScrollPane1.setViewportView(tblNhacungcap);

        btnThem.setText("Thêm");
        btnThem.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnThemActionPerformed(evt);
            }
        });

        lblMaNCC.setText("Mã NCC:");

        lblTenNCC.setText("Tên NCC:");

        lblDiaChi.setText("Địa Chỉ:");

        lblEmail.setText("Email:");

        lblSoDT.setText("Số ĐT:");

        btnThoat.setText("Thoát");
        btnThoat.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnThoatActionPerformed(evt);
            }
        });

        btnLuu.setText("Lưu");
        btnLuu.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnLuuActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addGap(322, 322, 322)
                        .addComponent(lblTimkiem, javax.swing.GroupLayout.PREFERRED_SIZE, 92, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(txtTimkiem, javax.swing.GroupLayout.PREFERRED_SIZE, 277, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(btnTimkiem)
                        .addGap(0, 0, Short.MAX_VALUE))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(14, 14, 14)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                .addGroup(layout.createSequentialGroup()
                                    .addComponent(lblMaNCC)
                                    .addGap(18, 18, 18)
                                    .addComponent(txtMaNCC, javax.swing.GroupLayout.PREFERRED_SIZE, 177, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addGroup(layout.createSequentialGroup()
                                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                        .addComponent(lblTenNCC)
                                        .addComponent(lblDiaChi)
                                        .addComponent(lblEmail)
                                        .addComponent(lblSoDT))
                                    .addGap(18, 18, 18)
                                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                        .addComponent(txtTenNCC)
                                        .addComponent(txtDiaChi)
                                        .addComponent(txtEmail)
                                        .addComponent(txtSoDT))))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(15, 15, 15)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(btnThem)
                                    .addComponent(btnXoa))
                                .addGap(49, 49, 49)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(btnSua)
                                    .addComponent(btnThoat))))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 45, Short.MAX_VALUE)
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 632, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(23, 23, 23))
            .addGroup(layout.createSequentialGroup()
                .addGap(66, 66, 66)
                .addComponent(btnLuu)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(29, 29, 29)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(lblTimkiem, javax.swing.GroupLayout.PREFERRED_SIZE, 33, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txtTimkiem, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnTimkiem))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 302, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(lblMaNCC)
                            .addComponent(txtMaNCC, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(25, 25, 25)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(txtTenNCC, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(lblTenNCC))
                        .addGap(24, 24, 24)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(lblDiaChi)
                            .addComponent(txtDiaChi, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(21, 21, 21)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(lblEmail)
                            .addComponent(txtEmail, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(20, 20, 20)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(lblSoDT)
                            .addComponent(txtSoDT, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(26, 26, 26)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(btnThem, javax.swing.GroupLayout.PREFERRED_SIZE, 33, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(btnSua, javax.swing.GroupLayout.PREFERRED_SIZE, 33, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(btnXoa, javax.swing.GroupLayout.PREFERRED_SIZE, 33, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(btnThoat))))
                .addGap(18, 18, 18)
                .addComponent(btnLuu)
                .addContainerGap(11, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnThemActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnThemActionPerformed
        strEdit = "N";
        btnSua.setEnabled(false);
        btnXoa.setEnabled(false);
        setBlankControl();

    }//GEN-LAST:event_btnThemActionPerformed

    private void btnSuaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnSuaActionPerformed
        strEdit = "E";
        btnThem.setEnabled(false);
        btnXoa.setEnabled(false);

    }//GEN-LAST:event_btnSuaActionPerformed

    private void btnThoatActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnThoatActionPerformed
        JOptionPane.showMessageDialog(new JFrame(), "Bạn đang thoát Form làm việc...");
        this.dispose();

    }//GEN-LAST:event_btnThoatActionPerformed

    private void btnXoaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnXoaActionPerformed
        strEdit = "D";
        ConnectDB cdb = new ConnectDB();
        cdb.getConnect();
        int danhSachXoa[] = tblNhacungcap.getSelectedRows();
        for (int i = danhSachXoa.length - 1; i >= 0; i--) {
            String maNCC = tblNhacungcap.getValueAt(danhSachXoa[i], 1).toString();
            String strSQL = "DELETE FROM NhaCC WHERE MaNCC=" + maNCC;
//            cdb.queryIN_UP_DEL(strSQL);
        }
        cdb.getclose();
        CapNhatBangDuLieu();
        setBlankControl();// TODO add your handling code here:
    }//GEN-LAST:event_btnXoaActionPerformed

    private void btnLuuActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnLuuActionPerformed
        if (strEdit == "N") {
            String maNCC, tenNCC, diaChi, email, soDT;
            maNCC = txtMaNCC.getText();
            tenNCC = txtTenNCC.getText();
            diaChi = txtDiaChi.getText();
            email = txtEmail.getText();
            soDT = txtSoDT.getText();
           

            String strSQL = "INSERT INTO [dbo].[HocSinh]" + "([MaHocSinh]"
                    + ",[TenHocSinh]"
                    + ",[NgaySinh]"
                    + ",[GioiTinh]"
                    + ",[QueQuan]"
                    + ",[DiaChi]"
                    + ",[MaLopHoc])\n"
                    + "VALUES"
                    + "(N'" + maNCC + "'"
                    + ",N'" + tenNCC + "'"
                    + ",N'" + diaChi + "'"
                    + ",N'" + email + "'"
                    + ",N'" + soDT + "')";
                   
            ConnectDB cdb = new ConnectDB();
            cdb.getConnect();//Bước 1 và bước 2
            //cdb.queryIN_UP_DEL(strSQL); //Bước 3 và bước 4

            CapNhatBangDuLieu();
            cdb.getclose();//Bước 5
        } else if (strEdit == "E") {
            int viTriClick = tblNhacungcap.getSelectedRow();//Lấy vị trí dòng vừa chọn để sửa

            if (viTriClick == -1) {
                JOptionPane.showMessageDialog(new JFrame(), "Ban chua chon dong nao");
                return;
            }
            String maNCC, tenNCC, diaChi, email, soDT;
            maNCC = txtMaNCC.getText();
            tenNCC = txtTenNCC.getText();
            diaChi = txtDiaChi.getText();
            email = txtEmail.getText();
            soDT = txtSoDT.getText();
           

            String _maHScapNhat = tblNhacungcap.getValueAt(viTriClick, 1).toString();

            String strSQL = "UPDATE [dbo].[NhaCC]\n"
                    + "SET [MaNCC]='" + maNCC + "'"
                    + ",[TenNCC]=N'" + tenNCC + "'"
                    + ",[DiaChi]=N'" + diaChi + "'"
                    + ",[Email]=N'" + email + "'"
                    + ",[SoDT]=N'" + soDT + "'"
                   
                    + "WHERE MaNCC=" + _maHScapNhat;
            ConnectDB cdb = new ConnectDB();
            cdb.getConnect();

            //cdb.queryIN_UP_DEL(strSQL);
            CapNhatBangDuLieu();
        }
                          
// TODO add your handling code here:
    }//GEN-LAST:event_btnLuuActionPerformed

    private void btnTimkiemActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnTimkiemActionPerformed
        tblNhacungcap.setModel(new DefaultTableModel(null, new String[]{"TT", "Mã HS", "Tên HS", "Ngày sinh", "Giới tính", "Quê quán", "Địa chỉ", "Lớp học"}));
        try {
            String _maNCC_TimKiem = txtTimkiem.getText();
            //1. Tải JDBC driver (Load Driver) 2. Mở kết nối (Open Connection)

            ConnectDB cdb = new ConnectDB();
            cdb.getConnect();
            String strSQL = "SELECT * FROM NhaCC WHERE MaNCC =" + _maNCC_TimKiem;
            PreparedStatement pst = new 
            ResultSet rss = cdb.querySELECT(strSQL);
            tbModel = (DefaultTableModel) tblNhacungcap.getModel();

            Object obj[] = new Object[8];

            while (rss.next()) {
                obj[0] = tblNhacungcap.getRowCount() + 1;
                obj[1] = rss.getString("MaNCC");
                obj[2] = rss.getString("TenNCC");
                obj[3] = rss.getString("DiaChi");
                obj[4] = rss.getString("Email");
                obj[5] = rss.getString("SoDT");
                
                tbModel.addRow(obj);
            }

            cdb.getclose();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }// TODO add your handling code here:
    }//GEN-LAST:event_btnTimkiemActionPerformed
private void tblNhacungcapMouseClicked(java.awt.event.MouseEvent evt) {                                        
        int viTriClick = tblNhacungcap.getSelectedRow();//Lấy vị trí dòng vừa chọn
        String maNCC = tblNhacungcap.getValueAt(viTriClick, 1).toString();
        txtMaNCC.setText(maNCC);
        String TenNCC = tblNhacungcap.getValueAt(viTriClick, 2).toString();
        txtTenNCC.setText(TenNCC);
        String diaChi = tblNhacungcap.getValueAt(viTriClick, 3).toString();
        txtDiaChi.setText(diaChi);
        String email = tblNhacungcap.getValueAt(viTriClick, 4).toString();
        txtEmail.setText(email);
        String soDT = tblNhacungcap.getValueAt(viTriClick, 5).toString();
        txtSoDT.setText(soDT);
}
private void setBlankControl() {
        txtMaNCC.setText("");
        txtTenNCC.setText("");
        txtDiaChi.setText("");
        txtEmail.setText("");
        txtSoDT.setText("");
        
    }
public void CapNhatBangDuLieu() {
        //tbModel.setRowCount(0);
        tblNhacungcap.setModel(new DefaultTableModel(null, new String[]{"TT", "Mã HS", "Tên HS", "Ngày sinh", "Giới tính", "Quê quán", "Địa chỉ", "Lớp học"}));
        try {
            //1. Tải JDBC driver (Load Driver) 2. Mở kết nối (Open Connection)

            ConnectDB cdb = new ConnectDB();
            cdb.getConnect();
            String strSQL = "SELECT * FROM NhaCC";
            ResultSet rss = cdb.querySELECT(strSQL);
            tbModel = (DefaultTableModel) tblNhacungcap.getModel();

            Object obj[] = new Object[8];

            while (rss.next()) {
                obj[0] = tblNhacungcap.getRowCount() + 1;
                obj[1] = rss.getString("MaNCC");
                obj[2] = rss.getString("TenNCC");
                obj[3] = rss.getString("DiaChi");
                obj[4] = rss.getString("Email");
                obj[5] = rss.getString("SoDT");
                
                tbModel.addRow(obj);
            }

            cdb.getclose();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
}
   
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(NhaCungCap.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(NhaCungCap.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(NhaCungCap.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(NhaCungCap.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new NhaCungCap().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnLuu;
    private javax.swing.JButton btnSua;
    private javax.swing.JButton btnThem;
    private javax.swing.JButton btnThoat;
    private javax.swing.JButton btnTimkiem;
    private javax.swing.JButton btnXoa;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JLabel lblDiaChi;
    private javax.swing.JLabel lblEmail;
    private javax.swing.JLabel lblMaNCC;
    private javax.swing.JLabel lblSoDT;
    private javax.swing.JLabel lblTenNCC;
    private javax.swing.JLabel lblTimkiem;
    private javax.swing.JTable tblNhacungcap;
    private javax.swing.JTextField txtDiaChi;
    private javax.swing.JTextField txtEmail;
    private javax.swing.JTextField txtMaNCC;
    private javax.swing.JTextField txtSoDT;
    private javax.swing.JTextField txtTenNCC;
    private javax.swing.JTextField txtTimkiem;
    // End of variables declaration//GEN-END:variables
}
