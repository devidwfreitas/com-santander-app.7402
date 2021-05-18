public class gyg extends grs {
  public static final String a = "Marketing_Card_CRM_Porquinho_";
  
  public static final String b = "RendaFixa";
  
  public static final String c = "Poupanca";
  
  public static final String d = "_Acao";
  
  private static String a() {
    return (miq.C().f().i() != null) ? miq.C().f().i() : "";
  }
  
  public static void a(gxa paramgxa) {
    frq.d("Marketing_Card_CRM_Porquinho_" + a() + "_" + d(paramgxa) + "_Acao", "Aplicar");
  }
  
  public static void b(gxa paramgxa) {
    frq.d("Marketing_Card_CRM_Porquinho_" + a() + "_" + d(paramgxa) + "_Acao", "Ocultar");
  }
  
  public static void c(gxa paramgxa) {
    frq.d("Marketing_Card_CRM_Porquinho_" + a() + "_" + d(paramgxa) + "_Acao", "Exibir");
  }
  
  private static String d(gxa paramgxa) {
    gws gws = gws.valueOf(paramgxa.d());
    switch (gyh.a[gws.ordinal()]) {
      default:
        return gws.conteudo();
      case 1:
        return "Poupanca";
      case 2:
        break;
    } 
    return "RendaFixa";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gyg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */