package com.prova.prova;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@RestController
@RequestMapping("/generos")

public class GeneroController {

    @GetMapping
    public String listar(){
        return "listando generos ";
    }

}
