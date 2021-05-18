import com.santander.app.emprestimo.creditopessoal.domain.CPContratacao;
import java.util.ArrayList;

public class hqg {
  private ArrayList<gky> c(CPContratacao paramCPContratacao) {
    boolean bool = d(paramCPContratacao);
    ArrayList<gky> arrayList = new ArrayList();
    arrayList.add(new gky("Valor Solicitado: ", paramCPContratacao.getValorEntregueFormatted()));
    arrayList.add(new gky("Quantidade de Parcelas: ", paramCPContratacao.getParcelaFormatted()));
    arrayList.add(new gky("Valor da Parcela:  ", paramCPContratacao.getValorParcelaFormatted()));
    if (!bool)
      arrayList.add(new gky("Convênio:  ", paramCPContratacao.getFontePagadoraFormatted())); 
    arrayList.add(new gky("Dia de débito: ", paramCPContratacao.getDiaPagamentoFormatted()));
    arrayList.add(new gky("Primeira parcela: ", paramCPContratacao.getVencimentoFormatted()));
    arrayList.add(new gky("Taxa de juros: ", paramCPContratacao.getTaxaJurosFormatted(false)));
    arrayList.add(new gky("Custo efetivo total (CET): ", paramCPContratacao.getTaxaCETFormatted()));
    arrayList.add(new gky("Valor do IOF: ", paramCPContratacao.getIofFormatted()));
    if (paramCPContratacao.getValorPremioSeguroCP() > 0.0F)
      arrayList.add(new gky("Valor do seguro: ", paramCPContratacao.getValorPremioSeguroFormatted())); 
    if (bool) {
      arrayList.add(new gky("Número de Contrato: ", paramCPContratacao.getNumeroContratoFormatted()));
    } else {
      arrayList.add(new gky("Número de Proposta: ", paramCPContratacao.getNumeroContratoFormatted()));
    } 
    if (!bool)
      arrayList.add(new gky("Tempo para aprovação: ", "Em até 2 dias úteis")); 
    return arrayList;
  }
  
  private boolean d(CPContratacao paramCPContratacao) {
    return (paramCPContratacao.getType() == 10);
  }
  
  public gvb a(CPContratacao paramCPContratacao) {
    String str1;
    String str2;
    String str3;
    if (d(paramCPContratacao)) {
      str1 = "Contratação de Crédito Pessoal";
    } else {
      str1 = "Solicitação de Consignado";
    } 
    if (d(paramCPContratacao)) {
      str2 = "Crédito Pessoal";
    } else {
      str2 = "Consignado";
    } 
    gvb gvb = new gvb();
    if (d(paramCPContratacao)) {
      str3 = "empre-cp-comprFechar";
    } else {
      str3 = "empre-csg-comprFechar";
    } 
    gvb.n(str3);
    gvb.i("");
    if (d(paramCPContratacao)) {
      str3 = "empre-cp-comprCompartilhar";
    } else {
      str3 = "empre-csg-comprCompartilhar";
    } 
    gvb.j(str3);
    gvb.b(c(paramCPContratacao));
    gvb.c(str2);
    gvb.d(false);
    gvb.f(paramCPContratacao.getDataHoraSolicitacao());
    gvb.e(paramCPContratacao.getAutenticacaoBancaria());
    gvb.d(str1 + " realizada com sucesso");
    if (d(paramCPContratacao)) {
      str1 = "Empréstimo " + str1 + " " + paramCPContratacao.getDataHoraSolicitacao();
    } else {
      str1 = "" + str1 + " " + paramCPContratacao.getDataHoraSolicitacao();
    } 
    gvb.g(str1);
    if (d(paramCPContratacao)) {
      gvb.b(true);
      return gvb;
    } 
    gvb.a(true);
    return gvb;
  }
  
  public gvb b(CPContratacao paramCPContratacao) {
    String str1;
    if (d(paramCPContratacao)) {
      str1 = "Contratação de Crédito Pessoal";
    } else {
      str1 = "Solicitação de Consignado";
    } 
    if (d(paramCPContratacao)) {
      String str = "Crédito Pessoal";
      gvb gvb1 = new gvb();
      ArrayList<gky> arrayList1 = new ArrayList();
      gvb1.i("");
      arrayList1.add(new gky("Erro: ", paramCPContratacao.getMessageError()));
      gvb1.b(arrayList1);
      gvb1.c(str);
      gvb1.d(false);
      gvb1.e(true);
      gvb1.e(paramCPContratacao.getAutenticacaoBancaria());
      gvb1.b("Transação não efetuada");
      gvb1.g("Comprovante - Erro na " + str1);
      return gvb1;
    } 
    String str2 = "Consignado";
    gvb gvb = new gvb();
    ArrayList<gky> arrayList = new ArrayList();
    gvb.i("");
    arrayList.add(new gky("Erro: ", paramCPContratacao.getMessageError()));
    gvb.b(arrayList);
    gvb.c(str2);
    gvb.d(false);
    gvb.e(true);
    gvb.e(paramCPContratacao.getAutenticacaoBancaria());
    gvb.b("Transação não efetuada");
    gvb.g("Comprovante - Erro na " + str1);
    return gvb;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hqg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */