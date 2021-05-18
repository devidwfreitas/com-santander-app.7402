import android.util.Base64;
import android.util.Log;
import org.xml.sax.Attributes;

public class fob extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  public fob(foa paramfoa) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (foa.a(this.a) != null)
      foa.a(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("codErro")) {
      this.c = false;
      foa.a(this.a).a(this.b.toString());
      return;
    } 
    if (paramString3.equals("msgErro")) {
      this.c = false;
      foa.a(this.a).b(this.b.toString());
      return;
    } 
    if (paramString3.equals("segmentoNome")) {
      this.c = false;
      naf naf = new naf();
      try {
        String[] arrayOfString = naf.c(Base64.decode(this.b.toString().getBytes("UTF-8"), 0)).split("\\|");
        foa.a(this.a).c(arrayOfString[0]);
        foa.a(this.a).f(arrayOfString[1]);
        return;
      } catch (Exception exception) {
        Log.e("Error", exception.toString());
        return;
      } 
    } 
    if (paramString3.equals("codRetorno")) {
      this.c = false;
      foa.a(this.a).d(this.b.toString());
      return;
    } 
    if (paramString3.equals("dadosRetorno")) {
      this.c = false;
      foa.a(this.a).e(this.b.toString());
      return;
    } 
    if (paramString3.equals("tokenSession")) {
      this.c = false;
      foa.a(this.a).g(this.b.toString());
      return;
    } 
    if (paramString3.equals("listaAgenciaContasCorrente")) {
      this.c = false;
      foa.a(this.a).a(foa.b(this.a));
      return;
    } 
    if (paramString3.equals("agencia")) {
      this.c = false;
      foa.a(this.a, new fyl());
      foa.b(this.a).b(this.b.toString());
      return;
    } 
    if (paramString3.equals("conta")) {
      this.c = false;
      foa.b(this.a).a(this.b.toString());
      return;
    } 
    if (paramString3.equals("paas")) {
      this.c = false;
      foa.a(this.a).h(this.b.toString());
      return;
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("codErro") || paramString3.equals("msgErro") || paramString3.equals("segmentoNome") || paramString3.equals("codRetorno") || paramString3.equals("dadosRetorno") || paramString3.equals("tokenSession") || paramString3.equals("listaAgenciaContasCorrente") || paramString3.equals("agencia") || paramString3.equals("conta") || paramString3.equals("paas")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fob.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */