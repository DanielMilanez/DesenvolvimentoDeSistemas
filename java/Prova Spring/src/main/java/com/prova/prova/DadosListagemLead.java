package com.prova.prova;

public record DadosListagemLead(String nome, String email, String telefone) {

    public DadosListagemLead(Lead lead) {
       this(lead.getNome(), lead.getEmail(), lead.getTelefone()); 
    }


}
