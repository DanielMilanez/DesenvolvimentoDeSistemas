package com.prova.prova;


import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;   
import lombok.NoArgsConstructor;

@Table(name = "tb_genero")
@Entity(name = "genero")
@Getter
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(of="id")


class Genero {
    @Id @GeneratedValue(strategy =  GenerationType.IDENTITY)
    private long id;
    private String nome;
}