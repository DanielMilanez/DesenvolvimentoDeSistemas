package br.com.edukacode.api;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import jakarta.validation.Valid;


@RestController 
@RequestMapping("/generos")

public class GeneroController {
    @Autowired
    private GeneroRepository repository;

    @PostMapping
    public String criarGenero(@RequestBody @Valid DadosCadastroGenero dados){
        System.out.println("Genero recebido: "+dados);
        repository.save(new Genero(null, dados.nome()));
        return "Genêro criado com sucesso";
    }
    
    @GetMapping
    public Page<DadosListagemGenero>listarGenero(@PageableDefault(size=15,sort={"nome"})Pageable paginaPageable){
        return repository.findAll(paginaPageable).map(DadosListagemGenero::new);
    }  

}
 