import android.content.Context;
import com.santander.app.MinhaConta;

public class gyd extends gyc {
  private static final String c = "cardPreferences";
  
  private static final String d = "prefs_carrinho_poupanca_cpf";
  
  private static gyd e;
  
  private final Context f = MinhaConta.b();
  
  public gyd() {
    a("cardPreferences", "prefs_carrinho_poupanca_cpf");
    a(gwq.carrinhoPoupanca);
  }
  
  public static gyd n() {
    if (e == null)
      e = new gyd(); 
    return e;
  }
  
  public void a(gye paramgye) {
    this.b.edit().putInt("conta", paramgye.a()).apply();
    this.b.edit().putInt("contaAplicacao", paramgye.b()).apply();
    this.b.edit().putString("valor", paramgye.d()).apply();
    this.b.edit().putInt("dataPosition", paramgye.c()).apply();
    this.b.edit().putString("data", paramgye.e()).apply();
    this.b.edit().putBoolean("clickCard", paramgye.f()).apply();
  }
  
  public gta g() {
    gta gta = new gta();
    gta.b(this.f.getResources().getString(2131296826));
    gta.a(gwq.carrinhoPoupanca);
    gta.a((String)null);
    gta.a(2130838729);
    gta.b(2130838733);
    gta.c(2130838731);
    gta.c((String)null);
    gta.d((String)null);
    gta.e(null);
    return gta;
  }
  
  public String h() {
    return this.b.getString("valor", "");
  }
  
  public String i() {
    return this.b.getString("data", "");
  }
  
  public int j() {
    return this.b.getInt("contaAplicacao", 0);
  }
  
  public int k() {
    return this.b.getInt("conta", 0);
  }
  
  public int l() {
    return this.b.getInt("dataPosition", 0);
  }
  
  public boolean m() {
    return this.b.getBoolean("clickCard", false);
  }
  
  public void o() {
    this.b.edit().putInt("conta", 0).apply();
    this.b.edit().putInt("contaAplicacao", 0).apply();
    this.b.edit().putString("valor", "").apply();
    this.b.edit().putInt("dataPosition", 0).apply();
    this.b.edit().putString("data", "").apply();
    this.b.edit().putBoolean("clickCard", false).apply();
  }
  
  public gye p() {
    return new gye(k(), j(), l(), h(), i(), m());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gyd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */