import com.santander.app.MinhaConta;

public class hhq extends gyc {
  private static final String c = "prefs_acordo_carrinho_abandono";
  
  private static final String d = "prefs_acordo_carrinho_cpf";
  
  private static hhq e;
  
  private hhq() {
    a("prefs_acordo_carrinho_abandono", "prefs_acordo_carrinho_cpf");
    a(gwq.acordoAbandono);
  }
  
  public static hhq h() {
    if (e == null)
      e = new hhq(); 
    return e;
  }
  
  public gta g() {
    gta gta = new gta();
    gta.b(MinhaConta.b().getString(2131297077));
    gta.a(gwq.acordoAbandono);
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hhq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */