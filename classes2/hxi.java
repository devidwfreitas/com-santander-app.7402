public class hxi {
  private static final String A = "CreditoFinanciamento_Reorganizacao_Contratacao_DiaVencimento";
  
  private static final String B = "CreditoFinanciamento_Reorganizacao_Contratacao_Valor";
  
  private static final String C = "CreditoFinanciamento_Reorganizacao_Contratacao_ValorParcela";
  
  private static final String D = "CreditoFinanciamento_Reorganizacao_Contratacao_Comprovante_Acao";
  
  private static final String E = "CreditoFinanciamento_Renegociacao_Acao";
  
  private static final String a = "CreditoFinanciamento";
  
  private static final String b = "Renegociacao_CPU";
  
  private static final String c = "Renegociacao_Reorganizacao";
  
  private static final String d = "CreditoFinanciamento_CarrosselHomeLogada_Acao";
  
  private static final String e = "CreditoFinanciamento_MenuLateral_Acao";
  
  private static final String f = "CreditoFinanciamento_MenuLateral_Submenu_Acao";
  
  private static final String g = "CreditoFinanciamento_Cancelamento_Acao";
  
  private static final String h = "CreditoFinanciamento_Cancelamento_Popup_Acao";
  
  private static final String i = "CreditoFinanciamento_CPU_Simulacao_Acao";
  
  private static final String j = "CreditoFinanciamento_CPU_Simulacao_NumeroDeParcelas_Acao";
  
  private static final String k = "CreditoFinanciamento_CPU_Simulacao_DiaVencimento_Acao";
  
  private static final String l = "CreditoFinanciamento_CPU_Contratacao_LerAgora_Acao";
  
  private static final String m = "CreditoFinanciamento_CPU_Contratacao_Acao";
  
  private static final String n = "CreditoFinanciamento_CPU_Contratacao_NumeroDeParcelas";
  
  private static final String o = "CreditoFinanciamento_CPU_Contratacao_DiaVencimento";
  
  private static final String p = "CreditoFinanciamento_CPU_Contratacao_Valor";
  
  private static final String q = "CreditoFinanciamento_CPU_Contratacao_ValorParcela";
  
  private static final String r = "CreditoFinanciamento_CPU_Contratacao_Comprovante_Acao";
  
  private static final String s = "CreditoFinanciamento_CPU_Contratacao_SeguroContratado";
  
  private static final String t = "CreditoFinanciamento_CPU_Contratacao_PopUpSeguro_Acao";
  
  private static final String u = "CreditoFinanciamento_Reorganizacao_Simulacao_Acao";
  
  private static final String v = "CreditoFinanciamento_Reorganizacao_Simulacao_NumeroDeParcelas_Acao";
  
  private static final String w = "CreditoFinanciamento_Reorganizacao_Simulacao_DiaVencimento_Acao";
  
  private static final String x = "CreditoFinanciamento_Reorganizacao_Contratacao_LerAgora_Acao";
  
  private static final String y = "CreditoFinanciamento_Reorganizacao_Contratacao_Acao";
  
  private static final String z = "CreditoFinanciamento_Reorganizacao_Contratacao_NumeroDeParcelas";
  
  public static void a() {
    frq.a("CreditoFinanciamento");
  }
  
  public static void a(hxn paramhxn) {
    String str;
    if (paramhxn.s()) {
      str = "Renegociacao_Reorganizacao";
    } else {
      str = "Renegociacao_CPU";
    } 
    frq.a("CreditoFinanciamento", str);
  }
  
  public static void a(hxn paramhxn, String paramString) {
    String str;
    if (paramhxn.s()) {
      str = "CreditoFinanciamento_Reorganizacao_Simulacao_NumeroDeParcelas_Acao";
    } else {
      str = "CreditoFinanciamento_CPU_Simulacao_NumeroDeParcelas_Acao";
    } 
    frq.d(str, paramString);
  }
  
  public static void a(hxn paramhxn, boolean paramBoolean) {
    String str;
    if (paramhxn.s()) {
      str = "CreditoFinanciamento_Reorganizacao_Contratacao_Acao";
    } else {
      str = "CreditoFinanciamento_CPU_Contratacao_Acao";
    } 
    frq.d(str, "LiConcordo");
  }
  
  public static void a(String paramString) {
    frq.b("CreditoFinanciamento", paramString);
  }
  
  public static void b() {
    frq.d("CreditoFinanciamento_CarrosselHomeLogada_Acao", "RenegocieSuasDividas");
  }
  
  public static void b(hxn paramhxn) {
    String str;
    if (paramhxn.s()) {
      str = "CreditoFinanciamento_Reorganizacao_Simulacao_Acao";
    } else {
      str = "CreditoFinanciamento_CPU_Simulacao_Acao";
    } 
    frq.d(str, "DetalhamentoDasDividas");
  }
  
  public static void b(hxn paramhxn, String paramString) {
    String str;
    if (paramhxn.s()) {
      str = "CreditoFinanciamento_Reorganizacao_Simulacao_DiaVencimento_Acao";
    } else {
      str = "CreditoFinanciamento_CPU_Simulacao_DiaVencimento_Acao";
    } 
    frq.d(str, paramString);
  }
  
  public static void b(hxn paramhxn, boolean paramBoolean) {
    if (paramhxn.s())
      return; 
    if (paramBoolean) {
      frq.d("CreditoFinanciamento_CPU_Contratacao_Acao", "SimularComSeguro");
      return;
    } 
    frq.d("CreditoFinanciamento_CPU_Contratacao_Acao", "SimularSemSeguro");
  }
  
  public static void c() {
    frq.d("CreditoFinanciamento_MenuLateral_Acao", "Renegociação");
  }
  
  public static void c(hxn paramhxn) {
    String str;
    if (paramhxn.s()) {
      str = "CreditoFinanciamento_Reorganizacao_Simulacao_Acao";
    } else {
      str = "CreditoFinanciamento_CPU_Simulacao_Acao";
    } 
    frq.d(str, "InformacoesCompletasSobreDivida");
  }
  
  public static void c(hxn paramhxn, @huw String paramString) {
    String str;
    if (paramhxn.s()) {
      str = "CreditoFinanciamento_Reorganizacao_Contratacao_LerAgora_Acao";
    } else {
      str = "CreditoFinanciamento_CPU_Contratacao_LerAgora_Acao";
    } 
    byte b = -1;
    switch (paramString.hashCode()) {
      default:
        switch (b) {
          default:
            return;
          case 0:
            frq.d(str, "CondicoesGeraisEmprestimo");
            return;
          case 1:
            frq.d(str, "CondicoesGeraisSeguro");
            return;
          case 2:
            frq.d(str, "CET");
            return;
          case 3:
            break;
        } 
        break;
      case 1133976258:
        if (paramString.equals("cpu_condicoes_gerais_emprestimo"))
          b = 0; 
      case -90730350:
        if (paramString.equals("cpu_condicoes_seguro"))
          b = 1; 
      case 985996603:
        if (paramString.equals("cpu_cet"))
          b = 2; 
      case -218020610:
        if (paramString.equals("cpu_resumo_contratual"))
          b = 3; 
    } 
    frq.d(str, "ResumoContratual");
  }
  
  public static void d() {
    frq.d("CreditoFinanciamento_MenuLateral_Submenu_Acao", "SimularRenegociação");
  }
  
  public static void d(hxn paramhxn) {
    String str;
    if (paramhxn.s()) {
      str = "CreditoFinanciamento_Reorganizacao_Simulacao_Acao";
    } else {
      str = "CreditoFinanciamento_CPU_Simulacao_Acao";
    } 
    frq.d(str, "Continuar");
  }
  
  public static void e() {
    frq.d("CreditoFinanciamento_MenuLateral_Submenu_Acao", "Cancelamento");
  }
  
  public static void e(hxn paramhxn) {
    if (paramhxn.s()) {
      frq.d("CreditoFinanciamento_Reorganizacao_Contratacao_Acao", "FinalizarContratacao");
      return;
    } 
    if (paramhxn.a()) {
      frq.d("CreditoFinanciamento_CPU_Contratacao_Acao", "ContratarComSeguro");
      return;
    } 
    frq.d("CreditoFinanciamento_CPU_Contratacao_Acao", "ContratarSemSeguro");
  }
  
  public static hnl f() {
    return new hxj();
  }
  
  public static void f(hxn paramhxn) {
    if (paramhxn.s())
      return; 
    frq.d("CreditoFinanciamento_CPU_Contratacao_PopUpSeguro_Acao", "ManterSeguro");
  }
  
  public static void g(hxn paramhxn) {
    if (paramhxn.s())
      return; 
    frq.d("CreditoFinanciamento_CPU_Contratacao_PopUpSeguro_Acao", "ExcluirSeguro");
  }
  
  public static void h(hxn paramhxn) {
    k(paramhxn);
    l(paramhxn);
    m(paramhxn);
    n(paramhxn);
    o(paramhxn);
  }
  
  public static void i(hxn paramhxn) {
    String str;
    if (paramhxn.s()) {
      str = "CreditoFinanciamento_Reorganizacao_Contratacao_Comprovante_Acao";
    } else {
      str = "CreditoFinanciamento_CPU_Contratacao_Comprovante_Acao";
    } 
    frq.d(str, "Compartilhar");
  }
  
  public static void j(hxn paramhxn) {
    String str;
    if (paramhxn.s()) {
      str = "CreditoFinanciamento_Reorganizacao_Contratacao_Comprovante_Acao";
    } else {
      str = "CreditoFinanciamento_CPU_Contratacao_Comprovante_Acao";
    } 
    frq.d(str, "Fechar");
  }
  
  private static void k(hxn paramhxn) {
    String str;
    if (paramhxn.s()) {
      str = "CreditoFinanciamento_Reorganizacao_Contratacao_NumeroDeParcelas";
    } else {
      str = "CreditoFinanciamento_CPU_Contratacao_NumeroDeParcelas";
    } 
    frq.a(str, paramhxn.m());
  }
  
  private static void l(hxn paramhxn) {
    String str;
    if (paramhxn.s()) {
      str = "CreditoFinanciamento_Reorganizacao_Contratacao_DiaVencimento";
    } else {
      str = "CreditoFinanciamento_CPU_Contratacao_DiaVencimento";
    } 
    frq.a(str, paramhxn.q());
  }
  
  private static void m(hxn paramhxn) {
    String str;
    if (paramhxn.s()) {
      str = "CreditoFinanciamento_Reorganizacao_Contratacao_Valor";
    } else {
      str = "CreditoFinanciamento_CPU_Contratacao_Valor";
    } 
    frq.d(str, paramhxn.d());
  }
  
  private static void n(hxn paramhxn) {
    String str;
    if (paramhxn.s()) {
      str = "CreditoFinanciamento_Reorganizacao_Contratacao_ValorParcela";
    } else {
      str = "CreditoFinanciamento_CPU_Contratacao_ValorParcela";
    } 
    frq.d(str, paramhxn.e());
  }
  
  private static void o(hxn paramhxn) {
    String str;
    if (paramhxn.s())
      return; 
    if (paramhxn.a()) {
      str = "Sim";
    } else {
      str = "Nao";
    } 
    frq.d("CreditoFinanciamento_CPU_Contratacao_SeguroContratado", str);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hxi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */