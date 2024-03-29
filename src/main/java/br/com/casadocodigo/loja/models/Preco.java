package br.com.casadocodigo.loja.models;


import lombok.Getter;
import lombok.Setter;

import javax.persistence.Embeddable;
import java.math.BigDecimal;

@Setter
@Getter
@Embeddable
public class Preco {

    private BigDecimal valor;
    private TipoPreco tipo;

}
