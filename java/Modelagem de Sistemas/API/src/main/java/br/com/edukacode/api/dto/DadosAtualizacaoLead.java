package br.com.edukacode.api.dto;

import jakarta.validation.constraints.NotBlank;

public record DadosAtualizacaoLead(
    @NotBlank
    Long id,

    String nome,
    String email,
    String telefone,
    String cpf

) {

}
