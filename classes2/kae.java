import android.util.Base64;
import android.util.Log;
import java.io.UnsupportedEncodingException;
import org.xml.sax.Attributes;

public class kae extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  public kae(kad paramkad) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (kad.a(this.a) != null)
      kad.a(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("agencia")) {
      this.c = false;
      kad.a(this.a).d(this.b.toString());
    } 
    if (paramString3.equals("agendamento")) {
      this.c = false;
      kad.a(this.a).e(this.b.toString());
    } 
    if (paramString3.equals("bancoDestino")) {
      this.c = false;
      kad.a(this.a).f(this.b.toString());
    } 
    if (paramString3.equals("codigoBarras")) {
      this.c = false;
      kad.a(this.a).g(this.b.toString());
    } 
    if (paramString3.equals("codigoCaptura")) {
      this.c = false;
      kad.a(this.a).h(this.b.toString());
    } 
    if (paramString3.equals("codigoCedente")) {
      this.c = false;
      kad.a(this.a).i(this.b.toString());
    } 
    if (paramString3.equals("codigoMoeda")) {
      this.c = false;
      kad.a(this.a).j(this.b.toString());
    } 
    if (paramString3.equals("codigoNossoNum")) {
      this.c = false;
      kad.a(this.a).k(this.b.toString());
    } 
    if (paramString3.equals("codigoSeuNum")) {
      this.c = false;
      kad.a(this.a).l(this.b.toString());
    } 
    if (paramString3.equals("conta")) {
      this.c = false;
      kad.a(this.a).m(this.b.toString());
    } 
    if (paramString3.equals("dataContabil")) {
      this.c = false;
      kad.a(this.a).n(this.b.toString());
    } 
    if (paramString3.equals("dataPagamento")) {
      this.c = false;
      kad.a(this.a).o(this.b.toString());
    } 
    if (paramString3.equals("dataVencimento")) {
      this.c = false;
      kad.a(this.a).p(this.b.toString());
    } 
    if (paramString3.equals("docCedente")) {
      this.c = false;
      kad.a(this.a).q(this.b.toString());
    } 
    if (paramString3.equals("docSacado")) {
      this.c = false;
      kad.a(this.a).r(this.b.toString());
    } 
    if (paramString3.equals("dtAgendamento")) {
      this.c = false;
      kad.a(this.a).s(this.b.toString());
    } 
    if (paramString3.equals("formaPagamento")) {
      this.c = false;
      kad.a(this.a).t(this.b.toString());
    } 
    if (paramString3.equals("horarioLimitePagto")) {
      this.c = false;
      kad.a(this.a).v(this.b.toString());
    } 
    if (paramString3.equals("indCartorio")) {
      this.c = false;
      kad.a(this.a).w(this.b.toString());
    } 
    if (paramString3.equals("indPagtoCheque")) {
      this.c = false;
      kad.a(this.a).x(this.b.toString());
    } 
    if (paramString3.equals("indicaBoletoVR")) {
      this.c = false;
      kad.a(this.a).y(this.b.toString());
    } 
    if (paramString3.equals("mensagemAEA")) {
      this.c = false;
      kad.a(this.a).z(this.b.toString());
    } 
    if (paramString3.equals("nomeCedente")) {
      this.c = false;
      kad.a(this.a).A(this.b.toString());
    } 
    if (paramString3.equals("nomeSacado")) {
      this.c = false;
      kad.a(this.a).B(this.b.toString());
    } 
    if (paramString3.equals("numCartaoCredito")) {
      this.c = false;
      try {
        naf naf = new naf();
        kad.a(this.a).C(naf.c(Base64.decode(this.b.toString().getBytes("UTF-8"), 0)));
      } catch (UnsupportedEncodingException unsupportedEncodingException) {
        Log.e("Error", unsupportedEncodingException.toString());
      } catch (Exception exception) {
        Log.e("Error", exception.getMessage());
      } 
    } 
    if (paramString3.equals("numContratoCartao")) {
      this.c = false;
      kad.a(this.a).D(this.b.toString());
    } 
    if (paramString3.equals("numOper")) {
      this.c = false;
      kad.a(this.a).E(this.b.toString());
    } 
    if (paramString3.equals("produto")) {
      this.c = false;
      kad.a(this.a).F(this.b.toString());
    } 
    if (paramString3.equals("subProduto")) {
      this.c = false;
      kad.a(this.a).G(this.b.toString());
    } 
    if (paramString3.equals("tipoConta")) {
      this.c = false;
      kad.a(this.a).H(this.b.toString());
    } 
    if (paramString3.equals("tipoPessoaCedente")) {
      this.c = false;
      kad.a(this.a).I(this.b.toString());
    } 
    if (paramString3.equals("tipoPessoaSacado")) {
      this.c = false;
      kad.a(this.a).J(this.b.toString());
    } 
    if (paramString3.equals("tipoTitulo")) {
      this.c = false;
      kad.a(this.a).K(this.b.toString());
    } 
    if (paramString3.equals("valorAbatimento")) {
      this.c = false;
      kad.a(this.a).N(this.b.toString());
    } 
    if (paramString3.equals("valorDesconto")) {
      this.c = false;
      kad.a(this.a).O(this.b.toString());
    } 
    if (paramString3.equals("valorIOF")) {
      this.c = false;
      kad.a(this.a).P(this.b.toString());
    } 
    if (paramString3.equals("valorJuros")) {
      this.c = false;
      kad.a(this.a).Q(this.b.toString());
    } 
    if (paramString3.equals("valorMulta")) {
      this.c = false;
      kad.a(this.a).R(this.b.toString());
    } 
    if (paramString3.equals("valorRecebido")) {
      this.c = false;
      kad.a(this.a).S(this.b.toString());
    } 
    if (paramString3.equals("valorRefBoleto")) {
      this.c = false;
      kad.a(this.a).T(this.b.toString());
    } 
    if (paramString3.equals("valorTitulo")) {
      this.c = false;
      kad.a(this.a).U(this.b.toString());
    } 
    if (paramString3.equals("valorTituloRegistrado")) {
      this.c = false;
      kad.a(this.a).V(this.b.toString());
    } 
    if (paramString3.equals("valorTotalRecebido")) {
      this.c = false;
      kad.a(this.a).W(this.b.toString());
    } 
    if (paramString3.equals("retorno")) {
      this.c = false;
      kad.a(this.a).c(this.b.toString());
    } 
    if (paramString3.equals("tokenTransacao")) {
      this.c = false;
      kad.a(this.a).M(this.b.toString());
    } 
    if (paramString3.equals("valorTaxaCartao")) {
      this.c = false;
      kad.a(this.a).a("2450");
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("agencia") || paramString3.equals("agendamento") || paramString3.equals("agencia") || paramString3.equals("agendamento") || paramString3.equals("bancoDestino") || paramString3.equals("codigoBarras") || paramString3.equals("codigoCaptura") || paramString3.equals("codigoCedente") || paramString3.equals("codigoMoeda") || paramString3.equals("codigoNossoNum") || paramString3.equals("codigoSeuNum") || paramString3.equals("conta") || paramString3.equals("dataContabil") || paramString3.equals("dataPagamento") || paramString3.equals("dataVencimento") || paramString3.equals("docCedente") || paramString3.equals("docSacado") || paramString3.equals("dtAgendamento") || paramString3.equals("formaPagamento") || paramString3.equals("hash") || paramString3.equals("horarioLimitePagto") || paramString3.equals("indCartorio") || paramString3.equals("indPagtoCheque") || paramString3.equals("indicaBoletoVR") || paramString3.equals("mensagemAEA") || paramString3.equals("nomeCedente") || paramString3.equals("nomeSacado") || paramString3.equals("numCartaoCredito") || paramString3.equals("numContratoCartao") || paramString3.equals("numOper") || paramString3.equals("produto") || paramString3.equals("subProduto") || paramString3.equals("tipoConta") || paramString3.equals("tipoPessoaCedente") || paramString3.equals("tipoPessoaSacado") || paramString3.equals("tipoTitulo") || paramString3.equals("tokenSessao") || paramString3.equals("tokenTransacao") || paramString3.equals("valorAbatimento") || paramString3.equals("valorDesconto") || paramString3.equals("valorIOF") || paramString3.equals("valorJuros") || paramString3.equals("valorMulta") || paramString3.equals("valorRecebido") || paramString3.equals("valorRefBoleto") || paramString3.equals("valorTitulo") || paramString3.equals("valorTituloRegistrado") || paramString3.equals("valorTotalRecebido") || paramString3.equals("valorTaxaCartao") || paramString3.equals("retorno")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kae.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */