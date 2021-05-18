import android.app.Activity;
import android.content.Intent;

public class jaq implements jap {
  private izn a;
  
  private iwg b;
  
  public jaq(izn paramizn, Activity paramActivity) {
    this.a = paramizn;
    this.b = new iwh(this, paramActivity);
  }
  
  public void a(Intent paramIntent) {
    this.a.a(paramIntent);
  }
  
  public void a(gyx paramgyx) {
    this.b.a(paramgyx);
  }
  
  public void a(gyx paramgyx, String paramString) {
    this.b.a(paramgyx, paramString);
  }
  
  public void a(String paramString) {
    this.b.a(paramString);
  }
  
  public boolean a() {
    String str1 = miq.C().f().i();
    String str2 = miq.C().f().y().a();
    return (str2.equalsIgnoreCase(naz.MODO_CONSULTIVO_TELA_05_BLOQUEIO_TENTATIVAS.getValue()) || str2.equalsIgnoreCase(naz.TRANSACIONAL_COM_ID_OU_OTIMIZACAO.getValue())) ? ("PR".equalsIgnoreCase(str1) ? miq.C().f().C().b("00000111") : miq.C().f().C().b("00000110")) : false;
  }
  
  public void b(String paramString) {
    this.b.b(paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jaq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */