import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import org.xml.sax.Attributes;

public class jzs extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  private fvp h = null;
  
  public jzs(jzr paramjzr) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (jzr.a(this.a) != null)
      jzr.a(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("seguros"))
      try {
        Date date = (new SimpleDateFormat("yyyy-MM-dd")).parse(this.h.f());
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.setTime(date);
        gregorianCalendar.add(5, 7);
        if (gregorianCalendar.after(new GregorianCalendar())) {
          jzr.a(this.a).a().add(this.h);
        } else {
          jzr.a(this.a).b().add(this.h);
        } 
      } catch (ParseException parseException) {
        jzr.a(this.a).b().add(this.h);
      }  
    if (paramString3.equals("numeroProposta")) {
      this.c = false;
      this.h.a(this.b.toString());
    } 
    if (paramString3.equals("cpfOuCnpj")) {
      this.c = false;
      this.h.b(this.b.toString());
    } 
    if (paramString3.equals("numeroApolice")) {
      this.c = false;
      this.h.c(this.b.toString());
    } 
    if (paramString3.equals("numeroCertificado")) {
      this.c = false;
      this.h.d(this.b.toString());
    } 
    if (paramString3.equals("nomeProduto")) {
      this.c = false;
      this.h.e(this.b.toString());
    } 
    if (paramString3.equals("dataContratacao")) {
      this.c = false;
      this.h.f(this.b.toString());
    } 
    if (paramString3.equals("valorPremioPago")) {
      this.c = false;
      this.h.g(this.b.toString());
    } 
    if (paramString3.equals("codigoProduto")) {
      this.c = false;
      this.h.h(this.b.toString());
    } 
    if (paramString3.equals("codigoSubproduto")) {
      this.c = false;
      this.h.i(this.b.toString());
    } 
    if (paramString3.equals("codigoBanco")) {
      this.c = false;
      this.h.j(this.b.toString());
    } 
    if (paramString3.equals("codigoAgencia")) {
      this.c = false;
      this.h.k(this.b.toString());
    } 
    if (paramString3.equals("contaCorrente")) {
      this.c = false;
      this.h.l(this.b.toString());
    } 
    if (paramString3.equals("codigoCanalProposta")) {
      this.c = false;
      this.h.m(this.b.toString());
    } 
    if (paramString3.equals("descricaoCanalProposta")) {
      this.c = false;
      this.h.n(this.b.toString());
    } 
    if (paramString3.equals("codigoRamo")) {
      this.c = false;
      this.h.o(this.b.toString());
    } 
    if (paramString3.equals("descricaoRamo")) {
      this.c = false;
      this.h.p(this.b.toString());
    } 
    if (paramString3.equals("grupoCanal")) {
      this.c = false;
      this.h.q(this.b.toString());
    } 
    if (paramString3.equals("dataAdesao")) {
      this.c = false;
      this.h.r(this.b.toString());
    } 
    if (paramString3.equals("indicadorAdesao")) {
      this.c = false;
      this.h.s(this.b.toString());
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("seguros"))
      this.h = new fvp(); 
    if (paramString3.equals("numeroProposta") || paramString3.equals("cpfOuCnpj") || paramString3.equals("numeroApolice") || paramString3.equals("numeroCertificado") || paramString3.equals("nomeProduto") || paramString3.equals("dataContratacao") || paramString3.equals("valorPremioPago") || paramString3.equals("codigoProduto") || paramString3.equals("codigoSubproduto") || paramString3.equals("codigoBanco") || paramString3.equals("codigoAgencia") || paramString3.equals("contaCorrente") || paramString3.equals("codigoCanalProposta") || paramString3.equals("descricaoCanalProposta") || paramString3.equals("codigoRamo") || paramString3.equals("descricaoRamo") || paramString3.equals("grupoCanal") || paramString3.equals("dataAdesao") || paramString3.equals("indicadorAdesao") || paramString3.equals("tokenTransacao")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jzs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */