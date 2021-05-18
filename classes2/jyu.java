import java.util.Vector;
import org.xml.sax.Attributes;

public class jyu extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  public jyu(jyt paramjyt) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (jyt.b(this.a) != null)
      jyt.b(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("listaContaFundo")) {
      jyt.a(this.a, Boolean.valueOf(false));
      jyt.b(this.a).k().add(jyt.a(this.a));
      return;
    } 
    if (paramString3.equals("listaAplicacao")) {
      jyt.b(this.a, Boolean.valueOf(false));
      jyt.a(this.a).i().add(jyt.c(this.a));
      return;
    } 
    if (paramString3.equals("codigoRetorno")) {
      this.c = false;
      jyt.b(this.a).k(this.b.toString());
      return;
    } 
    if (paramString3.equals("dataCota")) {
      this.c = false;
      jyt.b(this.a).a(this.b.toString());
      return;
    } 
    if (paramString3.equals("valorCota") && !jyt.d(this.a).booleanValue()) {
      this.c = false;
      jyt.b(this.a).b(this.b.toString());
      return;
    } 
    if (paramString3.equals("codigoFundo")) {
      this.c = false;
      jyt.b(this.a).c(this.b.toString());
      return;
    } 
    if (paramString3.equals("nomeReduzidoIb")) {
      this.c = false;
      jyt.b(this.a).d(this.b.toString());
      return;
    } 
    if (paramString3.equals("totalSaldoBruto")) {
      this.c = false;
      jyt.b(this.a).e(this.b.toString());
      return;
    } 
    if (paramString3.equals("totalSaldoCotas")) {
      this.c = false;
      jyt.b(this.a).f(this.b.toString());
      return;
    } 
    if (paramString3.equals("totalSaldoLiquido")) {
      this.c = false;
      jyt.b(this.a).g(this.b.toString());
      return;
    } 
    if (paramString3.equals("totalTaxaSaida")) {
      this.c = false;
      jyt.b(this.a).h(this.b.toString());
      return;
    } 
    if (paramString3.equals("totalValorIOF")) {
      this.c = false;
      jyt.b(this.a).i(this.b.toString());
      return;
    } 
    if (paramString3.equals("totalValorIR")) {
      this.c = false;
      jyt.b(this.a).j(this.b.toString());
      return;
    } 
    if (paramString3.equals("contaFundo")) {
      this.c = false;
      jyt.a(this.a).a(this.b.toString());
      return;
    } 
    if (paramString3.equals("saldoBruto") && !jyt.d(this.a).booleanValue()) {
      this.c = false;
      jyt.a(this.a).b(this.b.toString());
      return;
    } 
    if (paramString3.equals("saldoCotas")) {
      this.c = false;
      jyt.a(this.a).c(this.b.toString());
      return;
    } 
    if (paramString3.equals("saldoLiquido")) {
      this.c = false;
      jyt.a(this.a).d(this.b.toString());
      return;
    } 
    if (paramString3.equals("taxaSaida")) {
      this.c = false;
      jyt.a(this.a).e(this.b.toString());
      return;
    } 
    if (paramString3.equals("valorIOF") && !jyt.d(this.a).booleanValue()) {
      this.c = false;
      jyt.a(this.a).f(this.b.toString());
      return;
    } 
    if (paramString3.equals("valorIR") && !jyt.d(this.a).booleanValue()) {
      this.c = false;
      jyt.a(this.a).g(this.b.toString());
      return;
    } 
    if (paramString3.equals("dataAplicacao")) {
      this.c = false;
      jyt.c(this.a).a(this.b.toString());
      return;
    } 
    if (paramString3.equals("saldoBruto") && jyt.d(this.a).booleanValue()) {
      this.c = false;
      jyt.c(this.a).b(this.b.toString());
      return;
    } 
    if (paramString3.equals("valorCota") && jyt.d(this.a).booleanValue()) {
      this.c = false;
      jyt.c(this.a).c(this.b.toString());
      return;
    } 
    if (paramString3.equals("valorIOF") && jyt.d(this.a).booleanValue()) {
      this.c = false;
      jyt.c(this.a).d(this.b.toString());
      return;
    } 
    if (paramString3.equals("valorIR") && jyt.d(this.a).booleanValue()) {
      this.c = false;
      jyt.c(this.a).e(this.b.toString());
      return;
    } 
    if (paramString3.equals("valorLiquido")) {
      this.c = false;
      jyt.c(this.a).f(this.b.toString());
      return;
    } 
    if (paramString3.equals("valorTaxaSaida")) {
      this.c = false;
      jyt.c(this.a).g(this.b.toString());
      return;
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("listaContaFundo")) {
      jyt.a(this.a, Boolean.valueOf(true));
      jyt.a(this.a, new fti());
      jyt.a(this.a).a(new Vector<fth>());
      return;
    } 
    if (paramString3.equals("listaAplicacao")) {
      jyt.b(this.a, Boolean.valueOf(true));
      jyt.a(this.a, new fth());
      return;
    } 
    if (paramString3.equals("codigoRetorno") || paramString3.equals("dataCota") || paramString3.equals("valorCota") || paramString3.equals("codigoFundo") || paramString3.equals("nomeReduzidoIb") || paramString3.equals("totalSaldoBruto") || paramString3.equals("totalSaldoCotas") || paramString3.equals("totalSaldoLiquido") || paramString3.equals("totalTaxaSaida") || paramString3.equals("totalValorIOF") || paramString3.equals("totalValorIR") || paramString3.equals("contaFundo") || paramString3.equals("saldoBruto") || paramString3.equals("saldoCotas") || paramString3.equals("saldoLiquido") || paramString3.equals("taxaSaida") || paramString3.equals("valorIOF") || paramString3.equals("valorIR") || paramString3.equals("dataAplicacao") || paramString3.equals("saldoBruto") || paramString3.equals("valorLiquido") || paramString3.equals("valorTaxaSaida")) {
      this.c = true;
      this.b = new StringBuffer();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jyu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */