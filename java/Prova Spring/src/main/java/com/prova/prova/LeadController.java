package com.prova.prova;

import java.util.List;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.beans.factory.annotation.Autowired;


@RestController
@RequestMapping("/lead")
public class LeadController {

    @Autowired // injeção de dependência
    private LeadRepository repository;

    @PostMapping
    public String criarLead(@RequestBody DadosCadastroLead dados){
        System.out.println("Lead recebidos: "+dados);
        repository.save(new Lead(null, dados.nome(), dados.email(), dados.telefone(), dados.cpf()));
        return "Lead criado com sucesso";

    }

    @GetMapping
    public List<DadosListagemLead> listarLeads(){
        return repository.findAll().stream().map(DadosListagemLead::new).toList();
    }

    @PutMapping
    public void atualizarLead(){

    }

    @DeleteMapping
    public void excluirLead(){

    }

    
}
