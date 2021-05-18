import android.text.TextUtils;
import com.santander.app.MinhaConta;
import com.santander.app.emprestimo.creditopessoal.domain.CPContratacao;
import java.util.ArrayList;

public class hqh {
  public ArrayList<gky> a(CPContratacao paramCPContratacao) {
    ArrayList<gky> arrayList = new ArrayList();
    if (paramCPContratacao.getType() == 10) {
      arrayList.add(new gky("a) Taxa de juros remuneratórios: ", paramCPContratacao.getTaxaJurosBreakLineFormatted()));
      arrayList.add(new gky("   Custo efetivo total (CET)**: ", paramCPContratacao.getTaxaCETBreakLineFormatted()));
      arrayList.add(new gky("Tipo de taxa de juros: ", "Prefixada"));
      arrayList.add(new gky("b) Valor total devido no ato da contratação: ", paramCPContratacao.getValorTotalComEncargosFormatted()));
      if (!TextUtils.isEmpty(paramCPContratacao.getTotalPercentageFormatted()))
        arrayList.add(new gky("   Percentual valor total devido no ato da contratação: ", paramCPContratacao.getTotalPercentageFormatted())); 
      arrayList.add(new gky("c) Valor do IOF: ", paramCPContratacao.getIofFormatted()));
      if (!TextUtils.isEmpty(paramCPContratacao.getIofPercentageFormatted()))
        arrayList.add(new gky("   Percentual valor do IOF: ", paramCPContratacao.getIofPercentageFormatted())); 
      arrayList.add(new gky("d) Valor do seguro: ", paramCPContratacao.getValorPremioSeguroFormatted()));
      if (!TextUtils.isEmpty(paramCPContratacao.getSeguroPercentageFormatted()))
        arrayList.add(new gky("   Percentual valor do seguro: ", paramCPContratacao.getSeguroPercentageFormatted())); 
      arrayList.add(new gky("e) Valor liberado: ", paramCPContratacao.getValorEmprestimoFormatted()));
      if (!TextUtils.isEmpty(paramCPContratacao.getLiberadoPercentageFormatted()))
        arrayList.add(new gky("   Percentual valor solicitado: ", paramCPContratacao.getLiberadoPercentageFormatted())); 
      arrayList.add(new gky("f) Data/hora do cálculo*: ", paramCPContratacao.getDataHoraSolicitacao()));
      arrayList.add(new gky("g) Quantidade de parcelas: ", paramCPContratacao.getParcelaFormatted()));
      arrayList.add(new gky("h) Valor das parcelas: ", paramCPContratacao.getValorParcelaFormatted()));
      arrayList.add(new gky("i) Data da 1ª parcela: ", paramCPContratacao.getVencimentoFormatted()));
      arrayList.add(new gky("   Último vencimento: ", paramCPContratacao.getUltimoVencimentoFormatted()));
      arrayList.add(new gky("textFooter", MinhaConta.b().getString(2131297052)));
      return arrayList;
    } 
    arrayList.add(new gky("a) Valor do Empréstimo: ", paramCPContratacao.getValorEmprestimoFormatted()));
    arrayList.add(new gky("   Percentual Valor do Empréstimo: ", paramCPContratacao.getTotalPercentageFormatted()));
    if (paramCPContratacao.isRefinanciamento()) {
      String str1 = paramCPContratacao.getValorTotalRefinFormatted();
      arrayList.add(new gky("b) Valor Entregue: ", str1));
      arrayList.add(new gky("   Percentual Valor Entregue: ", paramCPContratacao.getLiberadoPercentageFormatted()));
      arrayList.add(new gky("c) IOF (Financiado): ", paramCPContratacao.getIofFormatted()));
      arrayList.add(new gky("   Percentual IOF (Financiado): ", paramCPContratacao.getIofPercentageFormatted()));
      arrayList.add(new gky("d) Valor do Prêmio do Seguro: ", paramCPContratacao.getValorPremioSeguroFormatted()));
      arrayList.add(new gky("   Percentual Valor do Prêmio do Seguro: ", paramCPContratacao.getSeguroPercentageFormatted()));
      arrayList.add(new gky("e) Juros Remuneratórios Pré-Fixado: ", paramCPContratacao.getTaxaJurosFormatted(false)));
      arrayList.add(new gky("f) Valor da Parcela: ", paramCPContratacao.getValorParcelaFormatted()));
      arrayList.add(new gky("g) Quantidade de Parcelas: ", paramCPContratacao.getParcelaFormatted()));
      arrayList.add(new gky("h) Total a Pagar: ", paramCPContratacao.getTotalPagarFormatted()));
      arrayList.add(new gky("i) Custo Efetivo Total (CET): ", paramCPContratacao.getTaxaCETFormatted()));
      arrayList.add(new gky("j) Forma de Liberação do Empréstimo: ", "Em Conta Corrente"));
      arrayList.add(new gky("k) Vencimento da 1ª Parcela: ", paramCPContratacao.getVencimentoFormatted()));
      arrayList.add(new gky("l) Vencimento da Última Parcela: ", paramCPContratacao.getUltimoVencimentoFormatted()));
      arrayList.add(new gky("   Data e hora do cálculo: ", paramCPContratacao.getDataHoraSolicitacao()));
      arrayList.add(new gky("", ""));
      arrayList.add(new gky("Encargos de mora: ", ""));
      arrayList.add(new gky("1) Taxa de Juros (% ao mês): ", paramCPContratacao.getTaxaJurosFormatted()));
      arrayList.add(new gky("2) Multa Moratória (% sobre o valor total devido): ", paramCPContratacao.getMultaMoratorioFormatted()));
      arrayList.add(new gky("3) Juros Moratórios (% ao mês): ", paramCPContratacao.getJurosMoratorioFormatted()));
      arrayList.add(new gky("", ""));
      arrayList.add(new gky("Fonte Pagadora: ", paramCPContratacao.getFontePagadoraFormatted()));
      arrayList.add(new gky("textFooter", MinhaConta.b().getString(2131296957)));
      return arrayList;
    } 
    String str = paramCPContratacao.getValorEntregueFormatted();
    arrayList.add(new gky("b) Valor Entregue: ", str));
    arrayList.add(new gky("   Percentual Valor Entregue: ", paramCPContratacao.getLiberadoPercentageFormatted()));
    arrayList.add(new gky("c) IOF (Financiado): ", paramCPContratacao.getIofFormatted()));
    arrayList.add(new gky("   Percentual IOF (Financiado): ", paramCPContratacao.getIofPercentageFormatted()));
    arrayList.add(new gky("d) Valor do Prêmio do Seguro: ", paramCPContratacao.getValorPremioSeguroFormatted()));
    arrayList.add(new gky("   Percentual Valor do Prêmio do Seguro: ", paramCPContratacao.getSeguroPercentageFormatted()));
    arrayList.add(new gky("e) Juros Remuneratórios Pré-Fixado: ", paramCPContratacao.getTaxaJurosFormatted(false)));
    arrayList.add(new gky("f) Valor da Parcela: ", paramCPContratacao.getValorParcelaFormatted()));
    arrayList.add(new gky("g) Quantidade de Parcelas: ", paramCPContratacao.getParcelaFormatted()));
    arrayList.add(new gky("h) Total a Pagar: ", paramCPContratacao.getTotalPagarFormatted()));
    arrayList.add(new gky("i) Custo Efetivo Total (CET): ", paramCPContratacao.getTaxaCETFormatted()));
    arrayList.add(new gky("j) Forma de Liberação do Empréstimo: ", "Em Conta Corrente"));
    arrayList.add(new gky("k) Vencimento da 1ª Parcela: ", paramCPContratacao.getVencimentoFormatted()));
    arrayList.add(new gky("l) Vencimento da Última Parcela: ", paramCPContratacao.getUltimoVencimentoFormatted()));
    arrayList.add(new gky("   Data e hora do cálculo: ", paramCPContratacao.getDataHoraSolicitacao()));
    arrayList.add(new gky("", ""));
    arrayList.add(new gky("Encargos de mora: ", ""));
    arrayList.add(new gky("1) Taxa de Juros (% ao mês): ", paramCPContratacao.getTaxaJurosFormatted()));
    arrayList.add(new gky("2) Multa Moratória (% sobre o valor total devido): ", paramCPContratacao.getMultaMoratorioFormatted()));
    arrayList.add(new gky("3) Juros Moratórios (% ao mês): ", paramCPContratacao.getJurosMoratorioFormatted()));
    arrayList.add(new gky("", ""));
    arrayList.add(new gky("Fonte Pagadora: ", paramCPContratacao.getFontePagadoraFormatted()));
    arrayList.add(new gky("textFooter", MinhaConta.b().getString(2131296957)));
    return arrayList;
  }
  
  public ArrayList<gky> a(String paramString) {
    ArrayList<gky> arrayList = new ArrayList();
    arrayList.add(new gky("", paramString));
    return arrayList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hqh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */