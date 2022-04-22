package br.edu.gama.gamaster.model.dto;

import br.edu.gama.gamaster.model.Conta;
import br.edu.gama.gamaster.model.Movimentacao;
import br.edu.gama.gamaster.model.TipoMovimentacao;
import br.edu.gama.gamaster.service.ContaService;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;
import java.time.LocalDateTime;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class MovimentacaoDepositoDto {

    @NotNull
	@Schema(description = "Valor do Depósito", example = "500.00")
    private BigDecimal valor;

    @NotNull
	@Schema(description = "Conta de realização do depósito", example = "1")
    private Long codigoConta;

    public Movimentacao toModel(ContaService contaService){
        Movimentacao movimentacao = new Movimentacao();
        Conta contaDestino = contaService.buscarPorCodigo(this.codigoConta);
        movimentacao.setValor(this.valor);
        movimentacao.setDataMovimentacao(LocalDateTime.now());
        movimentacao.setContaDestino(contaDestino);
        movimentacao.setTipoMovimentacao(TipoMovimentacao.ENTRADA);

        return movimentacao;
    }
}
