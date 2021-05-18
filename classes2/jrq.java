public class jrq {
  public static String a;
  
  public static String b;
  
  public static String c;
  
  public static String d;
  
  private static String e = "Outros_MenuLateral_Acao";
  
  private static String f = "Outros_Notificacoes_Tipo_Acao";
  
  private static String g = "Outros_MenuLateral_MeuPerfil_Acao";
  
  private static String h = "Outros_ConfiguracoesNotificacoes_ContaCorrente_Acao";
  
  private static String i = "Outros_ConfiguracoesNotificacoes_Cartoes_Acao";
  
  private static String j = "Outros_ConfiguracoesNotificacoes_OfertasEspeciais_Acao";
  
  private static String k = "Outros_ConfiguracoesNotificacoes_Acao";
  
  private static String l;
  
  private static String m;
  
  private static String n;
  
  private static String o;
  
  private static String p;
  
  static {
    a = "Outros_Notificacoes_Acao";
    b = "Outros_Notificacoes_Detalhes_Acao";
    c = "Outros_Notificacoes_Detalhes_PopUp_Acao";
    d = "Outros_Notificacoes_PopUp_Acao";
    l = "Notificacoes";
    m = "Voltar";
    n = "ConfiguracoesNotificacoes";
    o = "Habilita";
    p = "Desabilita";
  }
  
  public static void a() {
    b(e, l);
  }
  
  public static void a(String paramString) {
    b(f, paramString);
  }
  
  public static void a(String paramString1, String paramString2) {
    b(paramString1, paramString2);
  }
  
  public static void a(String paramString, boolean paramBoolean) {
    // Byte code:
    //   0: iconst_m1
    //   1: istore_2
    //   2: aload_0
    //   3: invokevirtual hashCode : ()I
    //   6: lookupswitch default -> 40, -2075759325 -> 99, 911625092 -> 113, 1324635223 -> 85
    //   40: iload_2
    //   41: tableswitch default -> 68, 0 -> 127, 1 -> 134, 2 -> 141
    //   68: ldc ''
    //   70: astore_0
    //   71: iload_1
    //   72: ifeq -> 148
    //   75: getstatic jrq.o : Ljava/lang/String;
    //   78: astore_3
    //   79: aload_0
    //   80: aload_3
    //   81: invokestatic b : (Ljava/lang/String;Ljava/lang/String;)V
    //   84: return
    //   85: aload_0
    //   86: ldc 'Conta Corrente'
    //   88: invokevirtual equals : (Ljava/lang/Object;)Z
    //   91: ifeq -> 40
    //   94: iconst_0
    //   95: istore_2
    //   96: goto -> 40
    //   99: aload_0
    //   100: ldc 'Cartões'
    //   102: invokevirtual equals : (Ljava/lang/Object;)Z
    //   105: ifeq -> 40
    //   108: iconst_1
    //   109: istore_2
    //   110: goto -> 40
    //   113: aload_0
    //   114: ldc 'Ofertas especiais'
    //   116: invokevirtual equals : (Ljava/lang/Object;)Z
    //   119: ifeq -> 40
    //   122: iconst_2
    //   123: istore_2
    //   124: goto -> 40
    //   127: getstatic jrq.h : Ljava/lang/String;
    //   130: astore_0
    //   131: goto -> 71
    //   134: getstatic jrq.k : Ljava/lang/String;
    //   137: astore_0
    //   138: goto -> 71
    //   141: getstatic jrq.k : Ljava/lang/String;
    //   144: astore_0
    //   145: goto -> 71
    //   148: getstatic jrq.p : Ljava/lang/String;
    //   151: astore_3
    //   152: goto -> 79
  }
  
  public static void b() {
    b(b, m);
  }
  
  private static void b(String paramString1, String paramString2) {
    frq.d(paramString1, paramString2);
  }
  
  public static void c() {
    b(g, n);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jrq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */