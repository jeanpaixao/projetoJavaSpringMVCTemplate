/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.projeto.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Jean
 */
public class ConnectionFactory {

    private Connection con;

    public Connection getConnection() throws SQLException {
        try {
            Class.forName("org.postgresql.Driver");
            con = DriverManager.getConnection(            
                    "jdbc:postgresql://localhost:5432/gfrota", "postgres", "postgres"
            );

        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e);
        }
        return con;
    }
// jdbc:postgresql://54.233.209.61:5432/pepgeuni
}
