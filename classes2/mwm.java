public final class mwm {
  public static final String a = "Transferencia_MiniApp_MenuLateral_MeuPerfil_Submenu";
  
  private static final String b = "Transferencias";
  
  private static final String c = "Transferencia_MiniApp";
  
  private static final String d = "Transferencia_MiniApp_Acao";
  
  private static final String e = "Transferencia_Tipo";
  
  private static final String f = "Transferencia_MiniApp_ValorTransferencia";
  
  private static final String g = "Transferencia_MiniApp_LoginTipo";
  
  private static final String h = "Transferencia_MiniApp_BancoDestino";
  
  private static final String i = "Transferencia_MiniApp_Validacao";
  
  public static void a() {
    frq.a("Transferencia_MiniApp", "Transferencias");
    u();
  }
  
  public static void a(String paramString) {
    frq.d("Transferencia_MiniApp_BancoDestino", paramString);
  }
  
  public static void a(mrp parammrp) {
    String str;
    a(parammrp.c());
    b(parammrp.i());
    if (parammrp.a()) {
      str = "EntreContas";
    } else {
      str = "TED";
    } 
    c(str);
  }
  
  public static void b() {
    frq.a("Transferencia_MiniApp");
  }
  
  public static void b(String paramString) {
    frq.d("Transferencia_MiniApp_ValorTransferencia", paramString);
  }
  
  public static void c() {
    frq.d("Transferencia_MiniApp_Acao", "BotaoFechar");
  }
  
  public static void c(@mwo String paramString) {
    frq.d("Transferencia_Tipo", paramString);
  }
  
  public static void d() {
    frq.d("Transferencia_MiniApp_Acao", "BotaoTransferir");
  }
  
  public static void d(@mwn String paramString) {
    frq.d("Transferencia_MiniApp_LoginTipo", paramString);
  }
  
  public static void e() {
    frq.d("Transferencia_MiniApp_Acao", "EditarInformacoes");
  }
  
  public static void e(@mwp String paramString) {
    frq.d("Transferencia_MiniApp_Validacao", paramString);
  }
  
  public static void f() {
    v();
    frq.d("Transferencia_MiniApp_Acao", "EditarBanco");
  }
  
  public static void g() {
    frq.d("Transferencia_MiniApp_Acao", "EditarAgencia");
  }
  
  public static void h() {
    frq.d("Transferencia_MiniApp_Acao", "EditarContaCorrente");
  }
  
  public static void i() {
    frq.d("Transferencia_MiniApp_Acao", "EditarBeneficiario");
  }
  
  public static void j() {
    frq.d("Transferencia_MiniApp_Acao", "EditarCPFCNPJ");
  }
  
  public static void k() {
    frq.d("Transferencia_MiniApp_Acao", "EditarValorTransferencia");
  }
  
  public static void l() {
    frq.d("Transferencia_MiniApp_Acao", "BotaoAbrirAplicativo");
  }
  
  public static void m() {
    frq.d("Transferencia_MiniApp_Acao", "BotaoCancelarAbrirAplicativo");
  }
  
  public static void n() {
    frq.d("Transferencia_MiniApp_Acao", "BotaoLoginTentarDeNovo");
  }
  
  public static void o() {
    frq.d("Transferencia_MiniApp_Acao", "BotaoLoginUsarSenha");
  }
  
  public static void p() {
    frq.d("Transferencia_MiniApp_Acao", "BotaoValidarCSO");
  }
  
  public static void q() {
    frq.d("Transferencia_MiniApp_Acao", "BotaoAgendamentoProsseguir");
  }
  
  public static void r() {
    frq.d("Transferencia_MiniApp_Acao", "BotaoAgendamentoCancelar");
  }
  
  public static void s() {
    frq.d("Transferencia_MiniApp_Acao", "TransferenciaResultado");
  }
  
  public static void t() {
    frq.d("Transferencia_MiniApp_Acao", "BotaoCompartilharComprovante");
  }
  
  private static void u() {
    frq.d("Transferencia_MiniApp_Acao", "abreMiniAppTransferencia");
  }
  
  private static void v() {
    frq.d("Transferencia_MiniApp_Acao", "SelecionarBancoDestino");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mwm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */