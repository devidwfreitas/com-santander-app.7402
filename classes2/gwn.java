public class gwn {
  private static final String a = "Marketing_Card_CRM_";
  
  private static final String b = "Marketing_Card_FormalizacaoDigital_";
  
  private static final String c = "Marketing_Card_Investimentos_";
  
  private static final String d = "Marketing_Card_Renegociacao_";
  
  private static final String e = "Marketing_Card_Emprestimo_";
  
  private static final String f = "_Acao";
  
  private static final String g = "Investimentos_Card_CarrinhoAbandono_RendaFixa_";
  
  private static final String h = "Investimentos_Card_CarrinhoAbandono_Poupanca_";
  
  private static final String i = "Investimentos_Card_CarrinhoAbandono_Emprestimos_";
  
  public static void a(gta paramgta, gww paramgww) {
    a(e(paramgta, paramgww), "Fechar");
  }
  
  private static void a(String paramString1, String paramString2) {
    if (paramString1 != null && !"".equals(paramString1))
      frq.d(paramString1, paramString2); 
  }
  
  public static void b(gta paramgta, gww paramgww) {
    a(e(paramgta, paramgww), "Proximo");
  }
  
  public static void c(gta paramgta, gww paramgww) {
    a(e(paramgta, paramgww), "Clicar");
  }
  
  public static void d(gta paramgta, gww paramgww) {
    a(e(paramgta, paramgww), "Exibir");
  }
  
  private static String e(gta paramgta, gww paramgww) {
    String str;
    gws gws2 = null;
    gws gws1 = gws2;
    switch (gwo.b[paramgta.e().ordinal()]) {
      default:
        gws1 = gws2;
      case 3:
      case 8:
      case 12:
      
      case 1:
        return "Marketing_Card_FormalizacaoDigital_" + paramgww + "_Acao";
      case 2:
        return "Marketing_Card_Investimentos_" + paramgww + "_Acao";
      case 4:
        return "Marketing_Card_Emprestimo_" + paramgww + "_Acao";
      case 5:
        return "Investimentos_Card_CarrinhoAbandono_RendaFixa_" + paramgww + "_Acao";
      case 6:
        return "Investimentos_Card_CarrinhoAbandono_Emprestimos_" + paramgww + "_Acao";
      case 7:
        return "Investimentos_Card_CarrinhoAbandono_Poupanca_" + paramgww + "_Acao";
      case 9:
        return "Marketing_Card_CRM_" + paramgta.d() + "_" + paramgww + "_Acao";
      case 10:
        gws2 = gws.valueOf(paramgta.b());
        str = "";
        if (paramgta.d() == null || paramgta.d().isEmpty()) {
          switch (gwo.a[gws2.ordinal()]) {
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
              return str;
            default:
              return "";
            case 1:
              return "Marketing_Card_Emprestimo_" + paramgww + "_Acao";
            case 2:
              return "Marketing_Card_Renegociacao_" + paramgww + "_Acao";
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
              break;
          } 
          return "Marketing_Card_Investimentos_" + paramgww + "_Acao";
        } 
        return "Marketing_Card_CRM_" + paramgta.d() + "_" + paramgww + "_Acao";
      case 11:
        break;
    } 
    return (paramgta.d() == null) ? ("Marketing_Card_CRM_" + paramgta.e().name() + "_" + paramgww + "_Acao") : ("Marketing_Card_CRM_" + paramgta.d() + paramgww + "_Acao");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gwn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */