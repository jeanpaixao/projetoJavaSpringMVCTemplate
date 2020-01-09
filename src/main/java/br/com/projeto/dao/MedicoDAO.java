        /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.projeto.dao;


import br.com.projeto.models.Medico;
import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Adriano
 */
public class MedicoDAO {

    private static MedicoDAO instance;

    public static MedicoDAO getInstance() {
        if (instance == null) {
            instance = new MedicoDAO();
        }
        return instance;
    }

    public MedicoDAO() {
    }

    public List<Medico> listAll(Connection con) throws SQLException {

        List<Medico> statusAll = new ArrayList<>();
        Medico status;

        StringBuilder query = new StringBuilder();

        query.append("SELECT   ");
        query.append(" *       ");
        query.append(" FROM   ");
        query.append(" public.medico   ");
        query.append(" ORDER BY descricao asc   ");
        

        PreparedStatement ps = con.prepareStatement(query.toString());
        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            status = new Medico();

            status.setId(Integer.parseInt(rs.getString("id")));
            status.setDescricao(rs.getString("descricao"));
            status.setCrm(rs.getString("crm"));
            status.setStatus(rs.getInt("status"));
            

            statusAll.add(status);

        }
        return statusAll;
    }
    
     public void insert(Connection con, Medico medico) throws Exception {

        StringBuilder query = new StringBuilder();

        query.append(" INSERT INTO public.medico( ");
        query.append(" descricao, crm, status )");
        query.append(" VALUES (?,?,?)");

        PreparedStatement ps = con.prepareStatement(query.toString());

        ps.setString(1, medico.getDescricao().toUpperCase());
        ps.setString(2, medico.getCrm().toUpperCase());
        ps.setInt(3, medico.getStatus());

        ps.executeUpdate();

    }
     
      public void update(Connection con, Medico medico) throws Exception {

        StringBuilder query = new StringBuilder();

        query.append(" UPDATE public.medico ");
        query.append(" set descricao=?, crm=?, status=? ");
        query.append(" WHERE id = ? ");

        PreparedStatement ps = con.prepareStatement(query.toString());

        ps.setString(1, medico.getDescricao().toUpperCase());
        ps.setString(2, medico.getCrm().toUpperCase());
        ps.setInt(3, medico.getStatus());        
        ps.setInt(4, medico.getId());        

        ps.executeUpdate();
        

    }
      
      public Medico getByIdUnidade(Connection con, Integer idMedico) throws SQLException {

        StringBuilder query = new StringBuilder();
        

        query.append(" SELECT * FROM public.medico ");
        query.append(" WHERE ");
        query.append(" id =? ");
        query.append(" ; ");
       
        
        PreparedStatement ps = con.prepareStatement(query.toString());
        ps.setInt(1, idMedico);
        ResultSet rs = ps.executeQuery();

        while (rs.next()) {  
         
        Medico medico = new Medico();
        
        medico.setId(rs.getInt("id"));
        medico.setDescricao(rs.getString("descricao"));
        medico.setCrm(rs.getString("crm"));
      
        medico.setStatus(rs.getInt("status"));
        
        

       
            return medico;

        }
        return null;

    }


   

}
