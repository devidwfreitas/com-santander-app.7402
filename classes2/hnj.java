public class hnj {
  private static final String a = "CreditoFinanciamento";
  
  private static final String b = "Cancelamento";
  
  private static final String c = "CreditoFinanciamento_MenuLateral_Submenu_Acao";
  
  private static final String d = "CreditoFinanciamento_MeusEmprestimos_Acao";
  
  private static final String e = "CreditoFinanciamento_MeusEmprestimos_Consultar_Produto_Acao";
  
  private static final String f = "CreditoFinanciamento_MeusEmprestimos_Consultar_Status_Acao";
  
  private static final String g = "CreditoFinanciamento_MeusEmprestimos_Consultar_Cancelavel_Acao";
  
  private static final String h = "CreditoFinanciamento_MeusEmprestimos_Consultar_Acao";
  
  private static final String i = "CreditoFinanciamento_MeusEmprestimos_CancelarEmprestimo_Acao";
  
  private static final String j = "CreditoFinanciamento_MeusEmprestimos_CancelarEmprestimo_PopUp_Acao";
  
  private static final String k = "CreditoFinanciamento_MeusEmprestimos_CancelarEmprestimo_Comprovante_Acao";
  
  private static final String l = "CreditoFinanciamento_MeusEmprestimos_CancelarEmprestimo_Produto";
  
  private static final String m = "CreditoFinanciamento_MeusEmprestimos_CancelarEmprestimo_DataCancelamento";
  
  private static final String n = "CreditoFinanciamento_MeusEmprestimos_CancelarEmprestimo_Valor";
  
  private static final String o = "CreditoFinanciamento_MeusEmprestimos_CancelarEmprestimo_ReferOper";
  
  public static void a() {
    frq.a("CreditoFinanciamento", "Cancelamento");
  }
  
  public static void a(@hxu int paramInt) {
    String str;
    if (paramInt == 11) {
      str = "Consignado";
    } else {
      str = "CreditoPessoal";
    } 
    frq.d("CreditoFinanciamento_MeusEmprestimos_Consultar_Produto_Acao", str);
  }
  
  public static void a(hxl paramhxl) {
    String str2 = "";
    switch (paramhxl.b()) {
      default:
        str1 = str2;
        frq.d("CreditoFinanciamento_MeusEmprestimos_Consultar_Status_Acao", str1);
        return;
      case 4:
        str1 = "PropostaEmAnalise";
        frq.d("CreditoFinanciamento_MeusEmprestimos_Consultar_Status_Acao", str1);
        return;
      case 1:
        str1 = "ContratoAtivo";
        frq.d("CreditoFinanciamento_MeusEmprestimos_Consultar_Status_Acao", str1);
        return;
      case 5:
        str1 = "ContratoEmAtraso";
        frq.d("CreditoFinanciamento_MeusEmprestimos_Consultar_Status_Acao", str1);
        return;
      case 2:
        if (str1.f()) {
          str1 = "PropostaCancelada";
        } else {
          str1 = "ContratoCancelado";
        } 
        frq.d("CreditoFinanciamento_MeusEmprestimos_Consultar_Status_Acao", str1);
        return;
      case 6:
        str1 = "ContratoPago";
        frq.d("CreditoFinanciamento_MeusEmprestimos_Consultar_Status_Acao", str1);
        return;
      case 3:
        break;
    } 
    String str1 = "PropostaRecusada";
    frq.d("CreditoFinanciamento_MeusEmprestimos_Consultar_Status_Acao", str1);
  }
  
  public static void a(String paramString) {
    frq.d("CreditoFinanciamento_MeusEmprestimos_CancelarEmprestimo_DataCancelamento", paramString);
  }
  
  public static void a(boolean paramBoolean) {
    String str;
    if (paramBoolean) {
      str = "Sim";
    } else {
      str = "Não";
    } 
    frq.d("CreditoFinanciamento_MeusEmprestimos_Consultar_Cancelavel_Acao", str);
  }
  
  public static void b() {
    frq.a("CreditoFinanciamento");
  }
  
  public static void b(@hxu int paramInt) {
    String str;
    if (paramInt == 11) {
      str = "Consignado";
    } else {
      str = "CreditoPessoal";
    } 
    frq.d("CreditoFinanciamento_MeusEmprestimos_CancelarEmprestimo_Produto", str);
  }
  
  public static void b(String paramString) {
    frq.d("CreditoFinanciamento_MeusEmprestimos_CancelarEmprestimo_Valor", paramString);
  }
  
  public static void b(boolean paramBoolean) {
    String str;
    if (paramBoolean) {
      str = "Sim";
    } else {
      str = "Não";
    } 
    frq.d("CreditoFinanciamento_MeusEmprestimos_CancelarEmprestimo_PopUp_Acao", str);
  }
  
  public static void c() {
    frq.d("CreditoFinanciamento_MenuLateral_Submenu_Acao", "MeusEmprestimos");
  }
  
  public static void c(String paramString) {
    frq.d("CreditoFinanciamento_MeusEmprestimos_CancelarEmprestimo_ReferOper", paramString);
  }
  
  public static void d() {
    frq.d("CreditoFinanciamento_MeusEmprestimos_Acao", "NovoEmprestimo");
  }
  
  public static void e() {
    frq.d("CreditoFinanciamento_MeusEmprestimos_Consultar_Acao", "CancelarEmprestimo");
  }
  
  public static void f() {
    frq.d("CreditoFinanciamento_MeusEmprestimos_CancelarEmprestimo_Acao", "CancelarEmprestimo");
  }
  
  public static void g() {
    frq.d("CreditoFinanciamento_MeusEmprestimos_CancelarEmprestimo_Acao", "LerTermosCondicoes");
  }
  
  public static void h() {
    frq.d("CreditoFinanciamento_MeusEmprestimos_CancelarEmprestimo_Acao", "InformativoCodigoAverbacao");
  }
  
  public static void i() {
    frq.d("CreditoFinanciamento_MeusEmprestimos_CancelarEmprestimo_Acao", "PopUpCancelarEmprestimo");
  }
  
  public static void j() {
    frq.d("CreditoFinanciamento_MeusEmprestimos_CancelarEmprestimo_Comprovante_Acao", "Compartilhar");
  }
  
  public static void k() {
    frq.d("CreditoFinanciamento_MeusEmprestimos_CancelarEmprestimo_ReferOper", "Fechar");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hnj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */