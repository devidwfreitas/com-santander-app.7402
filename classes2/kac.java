import android.util.Base64;
import android.util.Log;
import java.io.UnsupportedEncodingException;
import org.xml.sax.Attributes;

public class kac extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  public kac(kab paramkab) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (kab.a(this.a) != null)
      kab.a(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("agencia")) {
      this.c = false;
      kab.a(this.a).a(this.b.toString());
    } 
    if (paramString3.equals("agendamento")) {
      this.c = false;
      kab.a(this.a).b(this.b.toString());
    } 
    if (paramString3.equals("codBarra")) {
      this.c = false;
      kab.a(this.a).c(this.b.toString());
    } 
    if (paramString3.equals("conta")) {
      this.c = false;
      kab.a(this.a).d(this.b.toString());
    } 
    if (paramString3.equals("dataContabil")) {
      this.c = false;
      kab.a(this.a).e(this.b.toString());
    } 
    if (paramString3.equals("descricao")) {
      this.c = false;
      kab.a(this.a).f(this.b.toString());
    } 
    if (paramString3.equals("dtAgendamento")) {
      this.c = false;
      kab.a(this.a).g(this.b.toString());
    } 
    if (paramString3.equals("formaPagamento")) {
      this.c = false;
      kab.a(this.a).h(this.b.toString());
    } 
    if (paramString3.equals("mensagemAEA")) {
      this.c = false;
      kab.a(this.a).i(this.b.toString());
    } 
    if (paramString3.equals("numCartaoCredito")) {
      this.c = false;
      naf naf = new naf();
      try {
        kab.a(this.a).j(naf.c(Base64.decode(this.b.toString().getBytes("UTF-8"), 0)));
      } catch (UnsupportedEncodingException unsupportedEncodingException) {
        Log.e("Error", unsupportedEncodingException.toString());
      } catch (Exception exception) {
        Log.e("Error", exception.getMessage());
      } 
    } 
    if (paramString3.equals("numContratoCartao")) {
      this.c = false;
      kab.a(this.a).k(this.b.toString());
    } 
    if (paramString3.equals("numOper")) {
      this.c = false;
      kab.a(this.a).l(this.b.toString());
    } 
    if (paramString3.equals("produto")) {
      this.c = false;
      kab.a(this.a).m(this.b.toString());
    } 
    if (paramString3.equals("subProduto")) {
      this.c = false;
      kab.a(this.a).n(this.b.toString());
    } 
    if (paramString3.equals("tipoConta")) {
      this.c = false;
      kab.a(this.a).o(this.b.toString());
    } 
    if (paramString3.equals("VALPRIN")) {
      this.c = false;
      kab.a(this.a).p(this.b.toString());
    } 
    if (paramString3.equals("valor")) {
      this.c = false;
      kab.a(this.a).q(this.b.toString());
    } 
    if (paramString3.equals("vencto")) {
      this.c = false;
      kab.a(this.a).r(this.b.toString());
    } 
    if (paramString3.equals("tokenTransacao")) {
      this.c = false;
      kab.a(this.a).s(this.b.toString());
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("agencia") || paramString3.equals("agendamento") || paramString3.equals("codBarra") || paramString3.equals("conta") || paramString3.equals("dataContabil") || paramString3.equals("descricao") || paramString3.equals("dtAgendamento") || paramString3.equals("formaPagamento") || paramString3.equals("mensagemAEA") || paramString3.equals("numCartaoCredito") || paramString3.equals("numContratoCartao") || paramString3.equals("numOper") || paramString3.equals("produto") || paramString3.equals("subProduto") || paramString3.equals("tipoConta") || paramString3.equals("VALPRIN") || paramString3.equals("valor") || paramString3.equals("vencto") || paramString3.equals("tokenTransacao")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kac.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */