import android.util.Base64;
import android.util.Log;
import java.io.UnsupportedEncodingException;
import org.xml.sax.Attributes;

public class kag extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  public kag(kaf paramkaf) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (kaf.b(this.a) != null)
      kaf.b(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("listaParcela"))
      kaf.b(this.a).K().add(kaf.a(this.a)); 
    if (paramString3.equals("agencia")) {
      this.c = false;
      kaf.b(this.a).a(this.b.toString());
    } 
    if (paramString3.equals("agendamento")) {
      this.c = false;
      kaf.b(this.a).b(this.b.toString());
    } 
    if (paramString3.equals("bandeiraCartao")) {
      this.c = false;
      kaf.b(this.a).c(this.b.toString());
    } 
    if (paramString3.equals("codigoMoeda")) {
      this.c = false;
      kaf.b(this.a).d(this.b.toString());
    } 
    if (paramString3.equals("codigoRetorno")) {
      this.c = false;
      kaf.b(this.a).e(this.b.toString());
    } 
    if (paramString3.equals("contratoCartao")) {
      this.c = false;
      kaf.b(this.a).f(this.b.toString());
    } 
    if (paramString3.equals("cotacaoDolar")) {
      this.c = false;
      kaf.b(this.a).g(this.b.toString());
    } 
    if (paramString3.equals("custoEfetivoTotal")) {
      this.c = false;
      kaf.b(this.a).h(this.b.toString());
    } 
    if (paramString3.equals("dataAgendamento")) {
      this.c = false;
      kaf.b(this.a).i(this.b.toString());
    } 
    if (paramString3.equals("dataContabil")) {
      this.c = false;
      kaf.b(this.a).j(this.b.toString());
    } 
    if (paramString3.equals("dataEfetivacao")) {
      this.c = false;
      kaf.b(this.a).k(this.b.toString());
    } 
    if (paramString3.equals("dataPagamento")) {
      this.c = false;
      kaf.b(this.a).l(this.b.toString());
    } 
    if (paramString3.equals("dataVencimento")) {
      this.c = false;
      kaf.b(this.a).m(this.b.toString());
    } 
    if (paramString3.equals("despesaConvertida")) {
      this.c = false;
      kaf.b(this.a).n(this.b.toString());
    } 
    if (paramString3.equals("despesaReal")) {
      this.c = false;
      kaf.b(this.a).o(this.b.toString());
    } 
    if (paramString3.equals("entidade")) {
      this.c = false;
      kaf.b(this.a).p(this.b.toString());
    } 
    if (paramString3.equals("horaEfetivacao")) {
      this.c = false;
      kaf.b(this.a).q(this.b.toString());
    } 
    if (paramString3.equals("indicadorElegibilidade")) {
      this.c = false;
      kaf.b(this.a).r(this.b.toString());
    } 
    if (paramString3.equals("listaEmail")) {
      this.c = false;
      kaf.b(this.a).s(this.b.toString());
    } 
    if (paramString3.equals("mensagemRetorno")) {
      this.c = false;
      kaf.b(this.a).t(this.b.toString());
    } 
    if (paramString3.equals("nomeClientePlasticoCartao")) {
      this.c = false;
      kaf.b(this.a).u(this.b.toString());
    } 
    if (paramString3.equals("numReferDocumento")) {
      this.c = false;
      kaf.b(this.a).v(this.b.toString());
    } 
    if (paramString3.equals("numeroCartao")) {
      this.c = false;
      try {
        naf naf = new naf();
        kaf.b(this.a).w(naf.c(Base64.decode(this.b.toString().getBytes("UTF-8"), 0)));
      } catch (UnsupportedEncodingException unsupportedEncodingException) {
        Log.e("Error", unsupportedEncodingException.toString());
      } catch (Exception exception) {
        Log.e("Error", exception.getMessage());
      } 
    } 
    if (paramString3.equals("penumper")) {
      this.c = false;
      kaf.b(this.a).x(this.b.toString());
    } 
    if (paramString3.equals("produto")) {
      this.c = false;
      kaf.b(this.a).y(this.b.toString());
    } 
    if (paramString3.equals("referOper")) {
      this.c = false;
      kaf.b(this.a).z(this.b.toString());
    } 
    if (paramString3.equals("subProduto")) {
      this.c = false;
      kaf.b(this.a).A(this.b.toString());
    } 
    if (paramString3.equals("taxaJuros")) {
      this.c = false;
      kaf.b(this.a).B(this.b.toString());
    } 
    if (paramString3.equals("tipoFranquia")) {
      this.c = false;
      kaf.b(this.a).C(this.b.toString());
    } 
    if (paramString3.equals("tipoParcelamento")) {
      this.c = false;
      kaf.b(this.a).D(this.b.toString());
    } 
    if (paramString3.equals("valorFinanciado")) {
      this.c = false;
      kaf.b(this.a).E(this.b.toString());
    } 
    if (paramString3.equals("valorIOF")) {
      this.c = false;
      kaf.b(this.a).F(this.b.toString());
    } 
    if (paramString3.equals("valorPagamento")) {
      this.c = false;
      kaf.b(this.a).G(this.b.toString());
    } 
    if (paramString3.equals("valorPagamentoMinimo")) {
      this.c = false;
      kaf.b(this.a).H(this.b.toString());
    } 
    if (paramString3.equals("valorTarifa")) {
      this.c = false;
      kaf.b(this.a).I(this.b.toString());
    } 
    if (paramString3.equals("valorTotal")) {
      this.c = false;
      kaf.b(this.a).J(this.b.toString());
    } 
    if (paramString3.equals("tokenTransacao")) {
      this.c = false;
      kaf.b(this.a).K(this.b.toString());
    } 
    if (paramString3.equals("idParcela")) {
      this.c = false;
      kaf.a(this.a).a(this.b.toString());
    } 
    if (paramString3.equals("parcelaSelecionada")) {
      this.c = false;
      kaf.a(this.a).b(this.b.toString());
    } 
    if (paramString3.equals("quantidadeParcela")) {
      this.c = false;
      kaf.a(this.a).c(this.b.toString());
    } 
    if (paramString3.equals("valorParcela")) {
      this.c = false;
      kaf.a(this.a).d(this.b.toString());
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("listaParcela")) {
      kaf.a(this.a, new fum());
      return;
    } 
    if (paramString3.equals("agencia") || paramString3.equals("agendamento") || paramString3.equals("bandeiraCartao") || paramString3.equals("codigoMoeda") || paramString3.equals("codigoRetorno") || paramString3.equals("contratoCartao") || paramString3.equals("cotacaoDolar") || paramString3.equals("custoEfetivoTotal") || paramString3.equals("dataAgendamento") || paramString3.equals("dataContabil") || paramString3.equals("dataEfetivacao") || paramString3.equals("dataPagamento") || paramString3.equals("dataVencimento") || paramString3.equals("despesaConvertida") || paramString3.equals("despesaReal") || paramString3.equals("entidade") || paramString3.equals("horaEfetivacao") || paramString3.equals("indicadorElegibilidade") || paramString3.equals("listaEmail") || paramString3.equals("mensagemRetorno") || paramString3.equals("nomeClientePlasticoCartao") || paramString3.equals("numReferDocumento") || paramString3.equals("numeroCartao") || paramString3.equals("penumper") || paramString3.equals("produto") || paramString3.equals("referOper") || paramString3.equals("subProduto") || paramString3.equals("taxaJuros") || paramString3.equals("tipoFranquia") || paramString3.equals("tipoParcelamento") || paramString3.equals("valorFinanciado") || paramString3.equals("valorIOF") || paramString3.equals("valorPagamento") || paramString3.equals("valorPagamentoMinimo") || paramString3.equals("valorTarifa") || paramString3.equals("valorTotal") || paramString3.equals("idParcela") || paramString3.equals("parcelaSelecionada") || paramString3.equals("quantidadeParcela") || paramString3.equals("valorParcela") || paramString3.equals("tokenTransacao")) {
      this.c = true;
      this.b = new StringBuffer();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kag.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */