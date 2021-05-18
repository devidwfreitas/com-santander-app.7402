public class hhr {
  private static final String A = "CreditoFinanciamento_Acordo_Contratacao_DiaVencimento";
  
  private static final String B = "CreditoFinanciamento_Acordo_Contratacao_Valor";
  
  private static final String C = "CreditoFinanciamento_Acordo_Contratacao_ValorParcela";
  
  private static final String D = "CreditoFinanciamento_Acordo_Contratacao_Comprovante_Acao";
  
  private static final String a = "DetalhamentoDasDividas";
  
  private static final String b = "DebitoEmConta";
  
  private static final String c = "Boleto";
  
  private static final String d = "Parcelado";
  
  private static final String e = "AVista";
  
  private static final String f = "Simular";
  
  private static final String g = "Continuar";
  
  private static final String h = "CET";
  
  private static final String i = "ContratoRenegociacao";
  
  private static final String j = "CondicoesGerais";
  
  private static final String k = "LiConcordo";
  
  private static final String l = "Confirmar";
  
  private static final String m = "Compartilhar";
  
  private static final String n = "Fechar";
  
  private static final String o = "CopiarCodigoDeBarras";
  
  private static final String p = "PagarBoleto";
  
  private static final String q = "CreditoFinanciamento_Acordo_Simulacao_Acao";
  
  private static final String r = "CreditoFinanciamento_Acordo_Simulacao_NumeroDeParcelas_Acao";
  
  private static final String s = "CreditoFinanciamento_Acordo_Simulacao_DiaVencimento_Acao";
  
  private static final String t = "CreditoFinanciamento_Acordo_Simulacao_ValorParcela_Acao";
  
  private static final String u = "CreditoFinanciamento_Acordo_Simulacao_Pagamento_Acao";
  
  private static final String v = "CreditoFinanciamento_Acordo_Simulacao_Parcelado_Acao";
  
  private static final String w = "CreditoFinanciamento_Acordo_Contratacao_LerAgora_Acao";
  
  private static final String x = "CreditoFinanciamento_Acordo_Contratacao_Compartilhar_Acao";
  
  private static final String y = "CreditoFinanciamento_Acordo_Contratacao_Acao";
  
  private static final String z = "CreditoFinanciamento_Acordo_Contratacao_NumeroDeParcelas";
  
  public static void a() {
    a("CreditoFinanciamento_Acordo_Simulacao_Acao", "DetalhamentoDasDividas");
  }
  
  private static void a(int paramInt) {
    a("CreditoFinanciamento_Acordo_Contratacao_NumeroDeParcelas", paramInt + "");
  }
  
  public static void a(hfy paramhfy) {
    a(paramhfy.n());
    e(paramhfy.F());
    f(paramhfy.j());
    g(paramhfy.m());
  }
  
  public static void a(hgb paramhgb) {
    switch (paramhgb.a()) {
      default:
        return;
      case 0:
        a("CreditoFinanciamento_Acordo_Contratacao_LerAgora_Acao", "CondicoesGerais");
        return;
      case 1:
        a("CreditoFinanciamento_Acordo_Contratacao_LerAgora_Acao", "ContratoRenegociacao");
        return;
      case 2:
        break;
    } 
    a("CreditoFinanciamento_Acordo_Contratacao_LerAgora_Acao", "CET");
  }
  
  public static void a(String paramString) {
    a("CreditoFinanciamento_Acordo_Simulacao_NumeroDeParcelas_Acao", paramString);
  }
  
  private static void a(String paramString, Double paramDouble) {
    frq.a(paramString, paramDouble.doubleValue());
  }
  
  private static void a(String paramString1, String paramString2) {
    frq.d(paramString1, paramString2);
  }
  
  public static void a(boolean paramBoolean) {
    String str;
    if (paramBoolean) {
      str = "DebitoEmConta";
    } else {
      str = "Boleto";
    } 
    a("CreditoFinanciamento_Acordo_Simulacao_Pagamento_Acao", str);
  }
  
  public static void b() {
    a("CreditoFinanciamento_Acordo_Simulacao_Acao", "Simular");
  }
  
  public static void b(String paramString) {
    a("CreditoFinanciamento_Acordo_Simulacao_DiaVencimento_Acao", paramString);
  }
  
  public static void b(boolean paramBoolean) {
    String str;
    if (paramBoolean) {
      str = "Parcelado";
    } else {
      str = "AVista";
    } 
    a("CreditoFinanciamento_Acordo_Simulacao_Parcelado_Acao", str);
  }
  
  public static void c() {
    a("CreditoFinanciamento_Acordo_Simulacao_Acao", "Continuar");
  }
  
  public static void c(String paramString) {
    frq.a("CreditoFinanciamento_Acordo_Simulacao_ValorParcela_Acao", Double.valueOf(Double.parseDouble(naj.P(paramString))).doubleValue());
  }
  
  public static void d() {
    a("CreditoFinanciamento_Acordo_Contratacao_Acao", "Confirmar");
  }
  
  public static void d(String paramString) {
    String str = "";
    byte b = -1;
    switch (paramString.hashCode()) {
      default:
        switch (b) {
          default:
            paramString = str;
            a("CreditoFinanciamento_Acordo_Contratacao_Compartilhar_Acao", paramString);
            return;
          case 0:
            paramString = "CondicoesGerais";
            a("CreditoFinanciamento_Acordo_Contratacao_Compartilhar_Acao", paramString);
            return;
          case 1:
            paramString = "ContratoRenegociacao";
            a("CreditoFinanciamento_Acordo_Contratacao_Compartilhar_Acao", paramString);
            return;
          case 2:
            break;
        } 
        break;
      case 1544345178:
        if (paramString.equals("Condições Gerais."))
          b = 0; 
      case 202367945:
        if (paramString.equals("Contrato de Renegociação."))
          b = 1; 
      case -180303246:
        if (paramString.equals("Custo Efetivo Total"))
          b = 2; 
    } 
    paramString = "CET";
    a("CreditoFinanciamento_Acordo_Contratacao_Compartilhar_Acao", paramString);
  }
  
  public static void e() {
    a("CreditoFinanciamento_Acordo_Contratacao_Comprovante_Acao", "Compartilhar");
  }
  
  private static void e(String paramString) {
    a("CreditoFinanciamento_Acordo_Contratacao_DiaVencimento", paramString);
  }
  
  public static void f() {
    a("CreditoFinanciamento_Acordo_Contratacao_Comprovante_Acao", "Fechar");
  }
  
  private static void f(String paramString) {
    a("CreditoFinanciamento_Acordo_Contratacao_Valor", Double.valueOf(Double.parseDouble(naj.P(paramString))));
  }
  
  public static void g() {
    a("CreditoFinanciamento_Acordo_Contratacao_Comprovante_Acao", "CopiarCodigoDeBarras");
  }
  
  private static void g(String paramString) {
    a("CreditoFinanciamento_Acordo_Contratacao_ValorParcela", Double.valueOf(Double.parseDouble(naj.P(paramString))));
  }
  
  public static void h() {
    a("CreditoFinanciamento_Acordo_Contratacao_Comprovante_Acao", "PagarBoleto");
  }
  
  public static void i() {
    a("CreditoFinanciamento_Acordo_Contratacao_Acao", "LiConcordo");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hhr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */