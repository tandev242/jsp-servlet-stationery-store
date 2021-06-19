/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;

/**
 *
 * @author ASUS
 */
@WebFilter("/*")
public class XFilter implements Filter {

    @Override
    public void destroy() {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpServletResponse res = (HttpServletResponse) response;

        res.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        res.setHeader("Pragma", "no-cache");
        res.setDateHeader("Expires", 0);

        res.setHeader("X-XSS-Protection", "1; mode=block");

        res.setHeader("X-Frame-Options", "DENY");

        res.setHeader("X-Content-Type-Options", "nosniff");
        
        res.setHeader("Set-Cookie", "key=value; HttpOnly; SameSite=strict");
           
        chain.doFilter(request, new HttpServletResponseWrapper((HttpServletResponse) res) {
            @Override
            public String encodeURL(String url) {
                return url;
            }
        });

    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

}
