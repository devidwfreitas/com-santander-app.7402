import org.xml.sax.Attributes;

public class het extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  public het(hes paramhes) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (hes.a(this.a) != null)
      hes.a(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("mensagemRetorno")) {
      this.c = false;
      hes.a(this.a).l(this.b.toString());
      return;
    } 
    if (paramString3.equals("mensagemAEA")) {
      this.c = false;
      hes.a(this.a).k(this.b.toString());
      return;
    } 
    if (paramString3.equals("codigoRetorno")) {
      this.c = false;
      hes.a(this.a).j(this.b.toString());
      return;
    } 
    if (paramString3.equals("centroConta")) {
      this.c = false;
      hes.a(this.a).a(this.b.toString());
      return;
    } 
    if (paramString3.equals("codigoDivisa")) {
      this.c = false;
      hes.a(this.a).b(this.b.toString());
      return;
    } 
    if (paramString3.equals("codigoProduto")) {
      this.c = false;
      hes.a(this.a).c(this.b.toString());
      return;
    } 
    if (paramString3.equals("codigoSubProduto")) {
      this.c = false;
      hes.a(this.a).d(this.b.toString());
      return;
    } 
    if (paramString3.equals("descricaoDivisa")) {
      this.c = false;
      hes.a(this.a).e(this.b.toString());
      return;
    } 
    if (paramString3.equals("descricaoProduto")) {
      this.c = false;
      hes.a(this.a).f(this.b.toString());
      return;
    } 
    if (paramString3.equals("descricaoSubProduto")) {
      this.c = false;
      hes.a(this.a).g(this.b.toString());
      return;
    } 
    if (paramString3.equals("entidadeConta")) {
      this.c = false;
      hes.a(this.a).h(this.b.toString());
      return;
    } 
    if (paramString3.equals("numeroConta")) {
      this.c = false;
      hes.a(this.a).i(this.b.toString());
      return;
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("mensagemRetorno") || paramString3.equals("mensagemAEA") || paramString3.equals("codigoRetorno") || paramString3.equals("centroConta") || paramString3.equals("codigoDivisa") || paramString3.equals("codigoProduto") || paramString3.equals("codigoSubProduto") || paramString3.equals("descricaoDivisa") || paramString3.equals("descricaoProduto") || paramString3.equals("descricaoSubProduto") || paramString3.equals("entidadeConta") || paramString3.equals("numeroConta")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\het.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */