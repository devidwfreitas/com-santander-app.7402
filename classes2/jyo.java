import android.util.Base64;
import android.util.Log;
import java.io.UnsupportedEncodingException;
import org.xml.sax.Attributes;

public class jyo extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  public jyo(jyn paramjyn) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (jyn.b(this.a) != null)
      jyn.b(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("listaCartao"))
      jyn.b(this.a).a().add(jyn.a(this.a)); 
    if (paramString3.equals("tipoCartao")) {
      this.c = false;
      if (jyn.a(this.a).a() == null)
        jyn.a(this.a).a(this.b.toString()); 
    } 
    if (paramString3.equals("agencia")) {
      this.c = false;
      jyn.a(this.a).j(this.b.toString());
    } 
    if (paramString3.equals("numeroCartao")) {
      this.c = false;
      jyn.a(this.a).b("Final " + this.b.toString().substring(this.b.toString().length() - 4, this.b.toString().length()));
    } 
    if (paramString3.equals("descProdutoCartao")) {
      this.c = false;
      jyn.a(this.a).a(this.b.toString());
    } 
    if (paramString3.equals("identificadorTitularidade")) {
      this.c = false;
      jyn.a(this.a).l(this.b.toString());
    } 
    if (paramString3.equals("numContratoCartao")) {
      this.c = false;
      jyn.a(this.a).d(this.b.toString());
    } 
    if (paramString3.equals("numPlasticoCartao")) {
      this.c = false;
      jyn.a(this.a).e(this.b.toString().trim());
    } 
    if (paramString3.equals("numeroFinal")) {
      this.c = false;
      try {
        paramString1 = (new naf()).c(Base64.decode(this.b.toString().getBytes("UTF-8"), 0));
        jyn.a(this.a).b("Final " + paramString1);
      } catch (UnsupportedEncodingException unsupportedEncodingException) {
        Log.e("Error", unsupportedEncodingException.toString());
      } catch (Exception exception) {
        Log.e("Error", exception.getMessage());
      } 
    } 
    if (paramString3.equals("numBeneficiario")) {
      this.c = false;
      jyn.a(this.a).f(this.b.toString());
    } 
    if (paramString3.equals("nomeClientePlasticoCartao")) {
      this.c = false;
      jyn.a(this.a).g(this.b.toString());
    } 
    if (paramString3.equals("codigoProduto")) {
      this.c = false;
      jyn.a(this.a).h(this.b.toString());
    } 
    if (paramString3.equals("codigoSubproduto")) {
      this.c = false;
      jyn.a(this.a).i(this.b.toString());
    } 
    if (paramString3.equals("limiteDisponivel")) {
      this.c = false;
      paramString2 = this.b.toString().replaceAll("\\+", "");
      paramString1 = paramString2;
      if (paramString2.contains("-")) {
        paramString1 = paramString2.replaceAll("-", "");
        paramString1 = "-" + paramString1;
      } 
      jyn.a(this.a).c(paramString1);
    } 
    if (paramString3.equals("LIMCREC")) {
      this.c = false;
      paramString2 = this.b.toString().replaceAll("\\+", "").replaceAll("\\{", "");
      paramString1 = paramString2;
      if (paramString2.contains("-")) {
        paramString1 = paramString2.replaceAll("-", "");
        paramString1 = "-" + paramString1;
      } 
      jyn.a(this.a).c(paramString1);
    } 
    if (paramString3.equals("percentualLimiteDisponivel")) {
      this.c = false;
      if (this.b.toString().contains("-"))
        jyn.a(this.a).c("-" + jyn.a(this.a).c().replaceAll("-", "")); 
    } 
    if (paramString3.equals("vencimento")) {
      this.c = false;
      paramString1 = this.b.toString();
      jyn.a(this.a).k(paramString1);
    } 
    if (paramString3.equals("valorSaldoParcial")) {
      this.c = true;
      paramString1 = this.b.toString();
      jyn.a(this.a).n(paramString1);
    } 
    if (paramString3.equals("indCartaoInternac")) {
      this.c = true;
      paramString1 = this.b.toString();
      jyn.a(this.a).p(paramString1);
    } 
    if (paramString3.equals("indViagemVigente")) {
      this.c = true;
      paramString1 = this.b.toString();
      jyn.a(this.a).o(paramString1);
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("listaCartao"))
      jyn.a(this.a, new fvw()); 
    if (paramString3.equals("tipoCartao") || paramString3.equals("agencia") || paramString3.equals("numeroCartao") || paramString3.equals("limiteDisponivel") || paramString3.equals("descProdutoCartao") || paramString3.equals("numContratoCartao") || paramString3.equals("numPlasticoCartao") || paramString3.equals("numBeneficiario") || paramString3.equals("codigoProduto") || paramString3.equals("codigoSubproduto") || paramString3.equals("nomeClientePlasticoCartao") || paramString3.equals("LIMCREC") || paramString3.equals("percentualLimiteDisponivel") || paramString3.equals("vencimento") || paramString3.equals("identificadorTitularidade") || paramString3.equals("valorSaldoParcial") || paramString3.equals("indCartaoInternac") || paramString3.equals("indViagemVigente") || paramString3.equalsIgnoreCase("numeroFinal")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jyo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */