public class hxh extends gyc {
  private static final String c = "prefs_cpu_carrinho_abandono";
  
  private static final String d = "prefs_cpu_carrinho_cpf";
  
  private static hxh e;
  
  private hxh() {
    a("prefs_cpu_carrinho_abandono", "prefs_cpu_carrinho_cpf");
    a(gwq.creditounificado);
  }
  
  public static hxh h() {
    if (e == null)
      e = new hxh(); 
    return e;
  }
  
  public gta g() {
    gta gta = new gta();
    gta.b(this.a.getString(2131297076));
    gta.a(gwq.creditounificado);
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hxh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */