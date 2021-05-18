import org.xml.sax.Attributes;

public class jxu extends jxk {
  private StringBuffer b = null;
  
  private ftb c;
  
  private ftl h;
  
  private boolean i = false;
  
  private boolean j = false;
  
  private boolean k = false;
  
  private boolean l = false;
  
  public jxu(jxt paramjxt) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.l)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (jxt.a(this.a) != null)
      jxt.a(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (this.i) {
      if (!this.j) {
        if (paramString3.equals("agencia")) {
          this.l = false;
          this.c.i(this.b.toString());
          return;
        } 
        if (paramString3.equals("conta")) {
          this.l = false;
          this.c.j(this.b.toString());
          return;
        } 
        if (paramString3.equals("possuiRegraAnterior") && this.k) {
          this.l = false;
          this.c.a(this.b.toString());
          return;
        } 
        if (paramString3.equals("possuiRegraAtual") && this.k) {
          this.l = false;
          this.c.b(this.b.toString());
          return;
        } 
        if (paramString3.equals("saldoBloqueado") && this.k) {
          this.l = false;
          this.c.c(this.b.toString());
          return;
        } 
        if (paramString3.equals("saldoBloqueadoJudicial") && this.k) {
          this.l = false;
          this.c.d(this.b.toString());
          return;
        } 
        if (paramString3.equals("saldoDisponivel") && this.k) {
          this.l = false;
          this.c.e(this.b.toString());
          return;
        } 
        if (paramString3.equals("saldoDisponivelAnterior") && this.k) {
          this.l = false;
          this.c.f(this.b.toString());
          return;
        } 
        if (paramString3.equals("saldoDisponivelAtual") && this.k) {
          this.l = false;
          this.c.g(this.b.toString());
          return;
        } 
        if (paramString3.equals("saldoTotal") && this.k) {
          this.l = false;
          this.c.h(this.b.toString());
          return;
        } 
        if (paramString3.equals("listaPosicaoConsolidada")) {
          jxt.a(this.a).a().add(this.c);
          this.i = false;
          return;
        } 
        if (paramString3.equals("total")) {
          this.k = false;
          return;
        } 
        if (paramString3.equals("codigoRetorno")) {
          this.l = false;
          this.c.k(this.b.toString());
          return;
        } 
        return;
      } 
    } else {
      return;
    } 
    if (paramString3.equals("possuiRegraAnterior")) {
      this.l = false;
      this.h.g(this.b.toString());
      return;
    } 
    if (paramString3.equals("possuiRegraAtual")) {
      this.l = false;
      this.h.h(this.b.toString());
      return;
    } 
    if (paramString3.equals("agencia")) {
      this.l = false;
      this.h.c().a(this.b.toString());
      return;
    } 
    if (paramString3.equals("banco")) {
      this.l = false;
      this.h.c().b(this.b.toString());
      return;
    } 
    if (paramString3.equals("dataAbertura")) {
      this.l = false;
      this.h.c().c(this.b.toString());
      return;
    } 
    if (paramString3.equals("numero")) {
      this.l = false;
      this.h.c().d(this.b.toString());
      return;
    } 
    if (paramString3.equals("saldoBloqueado")) {
      this.l = false;
      this.h.a(this.b.toString());
      return;
    } 
    if (paramString3.equals("saldoBloqueadoJudicial")) {
      this.l = false;
      this.h.b(this.b.toString());
      return;
    } 
    if (paramString3.equals("saldoDisponivel")) {
      this.l = false;
      this.h.c(this.b.toString());
      return;
    } 
    if (paramString3.equals("saldoDisponivelAnterior")) {
      this.l = false;
      this.h.d(this.b.toString());
      return;
    } 
    if (paramString3.equals("saldoDisponivelAtual")) {
      this.l = false;
      this.h.e(this.b.toString());
      return;
    } 
    if (paramString3.equals("saldoTotal")) {
      this.l = false;
      this.h.f(this.b.toString());
      return;
    } 
    if (paramString3.equals("listaPosicaoConsolidada")) {
      this.c.a().add(this.h);
      this.j = false;
      return;
    } 
    if (paramString3.equals("total")) {
      this.k = false;
      return;
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("possuiRegraAnterior") || paramString3.equals("possuiRegraAtual") || paramString3.equals("agencia") || paramString3.equals("banco") || paramString3.equals("conta") || paramString3.equals("dataAbertura") || paramString3.equals("numero") || paramString3.equals("saldoBloqueado") || paramString3.equals("saldoBloqueadoJudicial") || paramString3.equals("saldoDisponivel") || paramString3.equals("saldoDisponivelAnterior") || paramString3.equals("saldoDisponivelAtual") || paramString3.equals("saldoTotal") || paramString3.equals("possuiRegraAnterior") || paramString3.equals("possuiRegraAtual") || paramString3.equals("saldoBloqueado") || paramString3.equals("saldoBloqueadoJudicial") || paramString3.equals("saldoDisponivel") || paramString3.equals("saldoDisponivelAnterior") || paramString3.equals("saldoDisponivelAtual") || paramString3.equals("saldoTotal") || paramString3.equals("codigoRetorno")) {
      this.l = true;
      this.b = new StringBuffer();
      return;
    } 
    if (paramString3.equals("listaPosicaoConsolidada")) {
      if (!this.i) {
        this.i = true;
        this.c = new ftb();
        return;
      } 
      if (this.i && !this.j) {
        this.j = true;
        this.h = new ftl();
        return;
      } 
      return;
    } 
    if (paramString3.equals("total")) {
      this.k = true;
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jxu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */