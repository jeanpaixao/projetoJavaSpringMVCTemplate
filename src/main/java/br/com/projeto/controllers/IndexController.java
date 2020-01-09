/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.projeto.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author jean.paixao
 */
@Controller
public class IndexController {

    @RequestMapping("/index")
    public String loadDashboard(Model model) {       
        return "index";
    }

}
