package br.com.projeto.filter;

import br.com.projeto.utils.ConnectionFactory;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

public class AutenticationFilter
        implements Filter {

    public AutenticationFilter() {
    }

    @Override
    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {

        HttpServletRequest request = (HttpServletRequest) servletRequest;

        HttpServletRequest httpRequest = (HttpServletRequest) request;

        String requestedURL = httpRequest.getRequestURI();

        try (Connection con = new ConnectionFactory().getConnection()) {
            request.setAttribute("connection", con);

            chain.doFilter(request, response);
            return;

        } catch (SQLException | ServletException | IOException ex) {
            request.setAttribute("erro", ex);
            RequestDispatcher rd = request.getRequestDispatcher("erro500");
            rd.forward(request, response);
            Logger.getLogger(AutenticationFilter.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @Override
    public void init(FilterConfig arg0)
            throws ServletException {
    }
}
