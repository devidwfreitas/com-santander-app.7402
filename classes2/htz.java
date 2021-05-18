import android.content.Context;
import com.santander.app.MinhaConta;

public class htz extends gyc {
  private static final String c = "cardPreferences";
  
  private static final String d = "prefs_carrinho_cp_cpf";
  
  private static htz e;
  
  private final Context f = MinhaConta.b();
  
  public htz() {
    a("cardPreferences", "prefs_carrinho_cp_cpf");
    a(gwq.carrinhoCP);
  }
  
  public static htz h() {
    if (e == null)
      e = new htz(); 
    return e;
  }
  
  public gta g() {
    gta gta = new gta();
    gta.b(this.f.getResources().getString(2131297075));
    gta.a(gwq.carrinhoCP);
    gta.a((String)null);
    gta.a(2130838729);
    gta.b(2130838733);
    gta.c(2130838731);
    gta.c((String)null);
    gta.d((String)null);
    gta.e(null);
    return gta;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\htz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */