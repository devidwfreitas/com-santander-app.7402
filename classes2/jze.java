import java.util.HashSet;
import java.util.Set;
import org.xml.sax.Attributes;

public class jze extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  private Set<String> h = new HashSet<String>();
  
  public jze(jzd paramjzd) {
    this.h.add("codigoDeBarra");
    this.h.add("codigoMenu");
    this.h.add("codigoMenuLinx");
    this.h.add("dataVencimento");
    this.h.add("horarioLimitePagamento");
    this.h.add("indicadorBoletoVR");
    this.h.add("indicadorLeitura");
    this.h.add("indicativoVal");
    this.h.add("nomeConvenio");
    this.h.add("tamanhoIdentificador");
    this.h.add("transacaoProduto");
    this.h.add("valorBoletoVR");
    this.h.add("valorTotalPagar");
  }
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (jzd.a(this.a) != null)
      jzd.a(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("codigoDeBarra")) {
      this.c = false;
      jzd.a(this.a).a(this.b.toString());
      return;
    } 
    if (paramString3.equals("codigoMenu")) {
      this.c = false;
      jzd.a(this.a).b(this.b.toString());
      return;
    } 
    if (paramString3.equals("codigoMenuLinx")) {
      this.c = false;
      jzd.a(this.a).c(this.b.toString());
      return;
    } 
    if (paramString3.equals("dataVencimento")) {
      this.c = false;
      jzd.a(this.a).d(this.b.toString());
      return;
    } 
    if (paramString3.equals("horarioLimitePagamento")) {
      this.c = false;
      jzd.a(this.a).e(this.b.toString());
      return;
    } 
    if (paramString3.equals("indicadorBoletoVR")) {
      this.c = false;
      jzd.a(this.a).f(this.b.toString());
      return;
    } 
    if (paramString3.equals("indicadorLeitura")) {
      this.c = false;
      jzd.a(this.a).g(this.b.toString());
      return;
    } 
    if (paramString3.equals("indicativoVal")) {
      this.c = false;
      jzd.a(this.a).h(this.b.toString());
      return;
    } 
    if (paramString3.equals("nomeConvenio")) {
      this.c = false;
      jzd.a(this.a).i(this.b.toString());
      return;
    } 
    if (paramString3.equals("tamanhoIdentificador")) {
      this.c = false;
      jzd.a(this.a).j(this.b.toString());
      return;
    } 
    if (paramString3.equals("transacaoProduto")) {
      this.c = false;
      jzd.a(this.a).k(this.b.toString());
      return;
    } 
    if (paramString3.equals("valorBoletoVR")) {
      this.c = false;
      jzd.a(this.a).l(this.b.toString());
      return;
    } 
    if (paramString3.equals("valorTotalPagar")) {
      this.c = false;
      jzd.a(this.a).m(this.b.toString());
      return;
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (this.h.contains(paramString3)) {
      this.c = true;
      this.b = new StringBuffer();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jze.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */