import android.text.TextUtils;

public class jor {
  private static final String a = "Outros_MenuLateral_Acao";
  
  private static final String b = "Marketing_LojaOnline_%s";
  
  private static final String c = "Marketing_LojaOnline_%s_Acao";
  
  private static final String d = "Marketing_LojaOnline_%s_CarrosselDeProdutos_Acao";
  
  private static final String e = "Marketing_LojaOnline_%s_ListaDeProdutos_Acao";
  
  private static final String f = "Marketing_LojaOnline_%s_%s_Redirecionamento_Acao";
  
  public static void a() {
    if (TextUtils.isEmpty(e()))
      return; 
    frq.d("Outros_MenuLateral_Acao", String.format("LojaOnline%s", new Object[] { e() }));
  }
  
  public static void a(String paramString, int paramInt) {
    if (TextUtils.isEmpty(e()))
      return; 
    frq.d(String.format("Marketing_LojaOnline_%s_CarrosselDeProdutos_Acao", new Object[] { e() }), String.format("%s_Posicao%s", new Object[] { paramString, Integer.valueOf(paramInt) }));
  }
  
  public static void a(String paramString1, String paramString2) {
    if (TextUtils.isEmpty(e()))
      return; 
    frq.d(String.format("Marketing_LojaOnline_%s_%s_Redirecionamento_Acao", new Object[] { e(), paramString1 }), paramString2);
  }
  
  public static void b() {
    if (TextUtils.isEmpty(e()))
      return; 
    frq.d(String.format("Marketing_LojaOnline_%s", new Object[] { e() }), "CardVisualizado");
  }
  
  public static void b(String paramString, int paramInt) {
    if (TextUtils.isEmpty(e()))
      return; 
    frq.d(String.format("Marketing_LojaOnline_%s_ListaDeProdutos_Acao", new Object[] { e() }), String.format("%s_Posicao%s", new Object[] { paramString, Integer.valueOf(paramInt) }));
  }
  
  public static void c() {
    if (TextUtils.isEmpty(e()))
      return; 
    frq.d(String.format("Marketing_LojaOnline_%s_Acao", new Object[] { e() }), "Card");
  }
  
  public static void d() {
    if (TextUtils.isEmpty(e()))
      return; 
    frq.d(String.format("Marketing_LojaOnline_%s_Acao", new Object[] { e() }), "Termos");
  }
  
  private static String e() {
    jnc jnc = miq.C().z();
    return (jnc != null) ? jnc.c() : "";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */