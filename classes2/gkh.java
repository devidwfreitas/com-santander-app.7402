public class gkh {
  private static final String a = "Outros_Home_Acao";
  
  private static final String b = "Outros_Chat_Acao";
  
  private static final String c = "Outros_Chat_PopUp_Acao";
  
  private static final String d = "Outros_Chat_PopUpOpcoes_Acao";
  
  private static final String e = "Outros_Chat_PopUpReconectar_Acao";
  
  private static final String f = "Outros_Chat_SuaExperiencia_Acao";
  
  private static final String g = "Outros_Chat_Nota";
  
  private static final String h = "Outros_Chat_Sucesso_Acao";
  
  private static final String i = "Chat";
  
  private static final String j = "Voltar";
  
  private static final String k = "Finalizar";
  
  private static final String l = "Cancelar";
  
  private static final String m = "Anexar";
  
  private static final String n = "Camera";
  
  private static final String o = "Galeria";
  
  private static final String p = "Documento";
  
  private static final String q = "Ok";
  
  private static final String r = "Reconectar";
  
  private static final String s = "Fechar";
  
  private static final String t = "Anterior";
  
  private static final String u = "Proximo";
  
  private static final String v = "DigitarMensagem";
  
  private static final String w = "Enviar";
  
  private static final String x = "Nota";
  
  private static final String y = "Sucesso";
  
  private static final String z = "Falha";
  
  public static void a() {
    a("Outros_Home_Acao", "Chat");
  }
  
  public static void a(String paramString) {
    a("Outros_Chat_PopUpOpcoes_Acao", paramString);
  }
  
  private static void a(String paramString1, String paramString2) {
    frq.d(paramString1, paramString2);
  }
  
  public static void a(boolean paramBoolean) {
    if (paramBoolean) {
      a("Outros_Chat_PopUp_Acao", "Finalizar");
      return;
    } 
    a("Outros_Chat_PopUp_Acao", "Cancelar");
  }
  
  public static void b() {
    a("Outros_Home_Acao", "Voltar");
  }
  
  public static void b(String paramString) {
    a("Outros_Chat_PopUpOpcoes_Acao", paramString);
  }
  
  public static void c() {
    a("Outros_Home_Acao", "Finalizar");
  }
  
  public static void d() {
    a("Outros_Chat_Acao", "DigitarMensagem");
  }
  
  public static void e() {
    a("Outros_Chat_Acao", "Anexar");
  }
  
  public static void f() {
    a("Outros_Chat_Acao", "Reconectar");
  }
  
  public static void g() {
    a("Outros_Chat_PopUpReconectar_Acao", "Cancelar");
  }
  
  public static void h() {
    a("Outros_Chat_PopUpReconectar_Acao", "Reconectar");
  }
  
  public static void i() {
    a("Outros_Chat_SuaExperiencia_Acao", "Fechar");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gkh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */