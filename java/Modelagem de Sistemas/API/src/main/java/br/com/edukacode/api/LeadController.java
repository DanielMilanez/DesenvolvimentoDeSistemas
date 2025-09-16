package br.com.edukacode.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import jakarta.transaction.Transactional;
import jakarta.validation.Valid;

import br.com.edukacode.api.dto.DadosAtualizacaoLead;


@RestController
@RequestMapping("/lead")
public class LeadController {

    @Autowired // injeção de dependência
    private LeadRepository repository;

    @PostMapping
    public String criarLead(@RequestBody @Valid DadosCadastroLead dados){
        System.out.println("Lead recebidos: "+dados);
        repository.save(new Lead(null, dados.nome(), dados.email(), dados.telefone(), dados.cpf()));
        return "Lead criado com sucesso";

    }

    @GetMapping
    public Page<DadosListagemLead>listarLeads(@PageableDefault(size=15,sort={"nome"})
    Pageable paginacaoPageable){
        return repository.findAll(paginacaoPageable).map(DadosListagemLead::new);
    }


    @PutMapping
    @Transactional
    public String atualizarLead(@RequestBody DadosAtualizacaoLead dados){
        var lead = repository.getReferenceById(dados.id());
        lead.atualizarInformacoes(dados);
        return "Lead atualizado com sucesso"; 
    }

    @DeleteMapping("/{id}")
    @Transactional
    public String excluirLead(@PathVariable Long id){
        repository.deleteById(id);
        return "Lead excluido com sucesso";
    }

    
}
