/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.df.inventory.config;

import com.df.inventory.dto.TokenEntity;
import com.df.inventory.entities.UserApp;
import com.df.inventory.message.ServiceResponse;
import com.df.inventory.message.ServiceResponseData;
import com.df.inventory.services.UserAppService;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

/**
 *
 * @author mulyadi
 */

@Component
public class RequestFilter extends OncePerRequestFilter {

    @Autowired
    UserAppService service;

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {

        
        
        String[] allowedRequestUrl = {"/api/auth/login","/api/auth/validate"};
        boolean allowedRequest = false;
        for (String url : allowedRequestUrl) {
            Pattern pattern = Pattern.compile(url);
            Matcher match = pattern.matcher(request.getRequestURI());
            if (match.matches()) {
                allowedRequest = true;
                break;
            }
        }
        if (allowedRequest) {
            filterChain.doFilter(request, response);
            return;
        }

        if (preflightCheck(request)) {
            filterChain.doFilter(request, response);
            return;
        }

        String token = request.getHeader("auth");
        if(token==null){
            response.sendError(400, "Token not found");
            return;
        }
        ServiceResponseData<TokenEntity> extractToken = service.validateToken(token);
        if (extractToken.getStatusCode() != 200) {
            response.sendError(extractToken.getStatusCode(), extractToken.getMessage());
            return;
        }

        UserApp userData= extractToken.getData().getUserApp();
        UserCredential.setUserCredetial(userData);
        filterChain.doFilter(request, response);
    }

    private boolean preflightCheck(HttpServletRequest request) {
        if (request.getMethod().equals("OPTIONS")) {
            String mode = request.getHeader("Sec-Fetch-Mode");
            if (mode.equals("cors")) {
                return true;
            }
        }
        return false;
    }

}
