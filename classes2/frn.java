import org.xml.sax.Attributes;

public class frn extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  private StringBuffer h = null;
  
  public frn(frm paramfrm) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (frm.a(this.a) != null);
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("numContratoCDB")) {
      frm.a(this.a).U(this.b.toString());
      return;
    } 
    if (paramString3.equals("prazoCDB")) {
      frm.a(this.a).V(this.b.toString());
      return;
    } 
    if (paramString3.equals("taxaCDB")) {
      frm.a(this.a).W(this.b.toString());
      return;
    } 
    if (paramString3.equals("vinculo")) {
      frm.a(this.a).X(this.b.toString());
      return;
    } 
    if (paramString3.equals("contaDebito")) {
      frm.a(this.a).Y(this.b.toString());
      return;
    } 
    if (paramString3.equals("contaFundoCredito")) {
      frm.a(this.a).Z(this.b.toString());
      return;
    } 
    if (paramString3.equals("contaPoupancaCredito")) {
      frm.a(this.a).aa(this.b.toString());
      return;
    } 
    if (paramString3.equals("dataVencimento")) {
      frm.a(this.a).ac(this.b.toString());
      return;
    } 
    if (paramString3.equals("numeroCartao")) {
      frm.a(this.a).ad(this.b.toString());
      return;
    } 
    if (paramString3.equals("codigoBarra")) {
      frm.a(this.a).ae(this.b.toString());
      return;
    } 
    if (paramString3.equals("concessionaria")) {
      frm.a(this.a).af(this.b.toString());
      return;
    } 
    if (paramString3.equals("historico")) {
      frm.a(this.a).al(this.b.toString());
      return;
    } 
    if (paramString3.equals("ispb")) {
      frm.a(this.a).am(this.b.toString());
      return;
    } 
    if (paramString3.equals("telefone")) {
      frm.a(this.a).an(this.b.toString());
      return;
    } 
    if (paramString3.equals("operadora")) {
      frm.a(this.a).ao(this.b.toString());
      return;
    } 
    if (paramString3.equals("canal")) {
      frm.a(this.a).S(this.b.toString());
      return;
    } 
    if (paramString3.equals("agencia")) {
      frm.a(this.a).ag(this.b.toString());
      return;
    } 
    if (paramString3.equals("codigoBanco")) {
      frm.a(this.a).u(this.b.toString());
      return;
    } 
    if (paramString3.equals("conta")) {
      frm.a(this.a).ah(this.b.toString());
      return;
    } 
    if (paramString3.equals("dataAgendamento")) {
      frm.a(this.a).I(this.b.toString());
      return;
    } 
    if (paramString3.equals("dataHoraSolicitacao")) {
      frm.a(this.a).T(this.b.toString());
      return;
    } 
    if (paramString3.equals("dataSolicitada")) {
      frm.a(this.a).J(this.b.toString());
      return;
    } 
    if (paramString3.equals("descricao")) {
      frm.a(this.a).K(this.b.toString());
      return;
    } 
    if (paramString3.equals("descricaoBanco")) {
      frm.a(this.a).t(this.b.toString());
      return;
    } 
    if (paramString3.equals("documentoFavorecido")) {
      frm.a(this.a).ai(this.b.toString());
      return;
    } 
    if (paramString3.equals("favorecido")) {
      frm.a(this.a).aj(this.b.toString());
      return;
    } 
    if (paramString3.equals("finalidade")) {
      frm.a(this.a).ak(this.b.toString());
      return;
    } 
    if (paramString3.equals("horaSolicitada")) {
      frm.a(this.a).M(this.b.toString());
      return;
    } 
    if (paramString3.equals("numProtocolo")) {
      frm.a(this.a).N(this.b.toString());
      return;
    } 
    if (paramString3.equals("status")) {
      frm.a(this.a).O(this.b.toString());
      return;
    } 
    if (paramString3.equals("subTipoAgendamento")) {
      frm.a(this.a).s(this.b.toString());
      return;
    } 
    if (paramString3.equals("tipo")) {
      frm.a(this.a).ab(this.b.toString());
      return;
    } 
    if (paramString3.equals("tipoAgendamento")) {
      frm.a(this.a).R(this.b.toString());
      return;
    } 
    if (paramString3.equals("tipoAgendamento")) {
      frm.a(this.a).R(this.b.toString());
      return;
    } 
    if (paramString3.equals("valor")) {
      frm.a(this.a).P(this.b.toString());
      return;
    } 
    if (paramString3.equals("confirmacao")) {
      frm.a(this.a).aq(this.b.toString());
      return;
    } 
    if (paramString3.equals("indiceAgendamento")) {
      frm.a(this.a).m(this.b.toString());
      return;
    } 
    if (paramString3.equals("autenticacao")) {
      frm.a(this.a).l(this.b.toString());
      return;
    } 
    if (paramString3.equals("codigoArea")) {
      frm.a(this.a).j(this.b.toString());
      return;
    } 
    if (paramString3.equals("dataRecarga")) {
      frm.a(this.a).r(this.b.toString());
      return;
    } 
    if (paramString3.equals("tipoTransferencia")) {
      frm.a(this.a).h(this.b.toString());
      return;
    } 
    if (paramString3.equals("agenciaCredito")) {
      frm.a(this.a).g(this.b.toString());
      return;
    } 
    if (paramString3.equals("agenciaDebito")) {
      frm.a(this.a).f(this.b.toString());
      return;
    } 
    if (paramString3.equals("descricaoConcessionaria")) {
      frm.a(this.a).af(this.b.toString());
      return;
    } 
    if (paramString3.equals("contaPoupancaDebito")) {
      frm.a(this.a).o(this.b.toString());
      return;
    } 
    if (paramString3.equals("mensagemErro")) {
      frm.a(this.a).e(this.b.toString());
      return;
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("numContratoCDB") || paramString3.equals("prazoCDB") || paramString3.equals("taxaCDB") || paramString3.equals("vinculo") || paramString3.equals("contaDebito") || paramString3.equals("contaFundoCredito") || paramString3.equals("contaPoupancaCredito") || paramString3.equals("dataVencimento") || paramString3.equals("numeroCartao") || paramString3.equals("codigoBarra") || paramString3.equals("concessionaria") || paramString3.equals("historico") || paramString3.equals("ispb") || paramString3.equals("telefone") || paramString3.equals("operadora") || paramString3.equals("codigoArea") || paramString3.equals("dataRecarga") || paramString3.equals("tipoTransferencia") || paramString3.equals("canal") || paramString3.equals("agencia") || paramString3.equals("codigoBanco") || paramString3.equals("conta") || paramString3.equals("dataAgendamento") || paramString3.equals("dataHoraSolicitacao") || paramString3.equals("dataSolicitada") || paramString3.equals("descricao") || paramString3.equals("descricaoBanco") || paramString3.equals("documentoFavorecido") || paramString3.equals("favorecido") || paramString3.equals("finalidade") || paramString3.equals("horaSolicitada") || paramString3.equals("numProtocolo") || paramString3.equals("status") || paramString3.equals("subTipoAgendamento") || paramString3.equals("tipo") || paramString3.equals("tipoAgendamento") || paramString3.equals("valor") || paramString3.equals("confirmacao") || paramString3.equals("indiceAgendamento") || paramString3.equals("autenticacao") || paramString3.equals("agenciaCredito") || paramString3.equals("agenciaDebito") || paramString3.equals("descricaoConcessionaria") || paramString3.equals("contaPoupancaDebito") || paramString3.equals("mensagemErro")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\frn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */