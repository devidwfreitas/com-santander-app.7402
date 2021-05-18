import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.Spanned;
import android.util.Log;
import com.santander.app.Poupanca_posicaoconsolidadaActivity;
import com.santander.app.contacorrente.domain.Conta;
import com.santander.app.investimentos.presentation.MeusInvestimentosActivity;
import com.santander.app.investimentos.presentation.SemProdutoActivity;
import java.io.Serializable;

public class jcw {
  public static final String a = "investimentosFundos";
  
  public static final String b = "investimentosCDB";
  
  public static final String c = "LISTA_FUNDOS";
  
  public static final String d = "LISTA_LCI";
  
  public static final String e = "LISTA_CDB";
  
  public static final String f = "CDB_FUNCIONARIO";
  
  public static final String g = "FUNDOS";
  
  public static final String h = "POUPANCA";
  
  public static final String i = "CARDS";
  
  public static final String j = "CDB_RECOMPENSA";
  
  public static final String k = "CDB_VG_DIGITAL";
  
  public static final String l = "PREVIDENCIA";
  
  public static final String m = "CARRINHO_ABANDONADO";
  
  private static final String n = "https://santander.custhelp.com/app/chat/chat_santander/p/203";
  
  public static void a(Activity paramActivity) {
    if (miq.C().f().C().b("00000107")) {
      f(paramActivity);
    } else {
      d(paramActivity);
    } 
    frq.d("Investimentos_MenuLateral_Investimentos_SubMenu_Acao", "MeusInvestimentos");
  }
  
  public static void a(Activity paramActivity, String paramString) {
    if (miq.C().f().C().b("00000107")) {
      byte b = -1;
      switch (paramString.hashCode()) {
        default:
          switch (b) {
            default:
              f(paramActivity);
              return;
            case 0:
              frq.d("DeepLink_InvestimentosFundos", "DeepLink");
              zs.a().a(paramActivity.getApplicationContext(), gnz.a().d(), miq.C().f().i(), nab.a().f(), h(paramActivity), Boolean.valueOf(mzr.a()), miq.C().f().j(), "1");
              return;
            case 1:
              break;
          } 
          break;
        case -3323169:
          if (paramString.equals("investimentosFundos"))
            b = 0; 
        case 432072811:
          if (paramString.equals("investimentosCDB"))
            b = 1; 
      } 
      frq.d("DeepLink_InvestimentosCdb", "DeepLink");
      zs.a().a(paramActivity.getApplicationContext(), gnz.a().d(), miq.C().f().i(), nab.a().f(), h(paramActivity), Boolean.valueOf(mzr.a()), miq.C().f().j(), "4");
      return;
    } 
    d(paramActivity);
  }
  
  @Deprecated
  public static void a(Activity paramActivity, jdf paramjdf) {
    zs.a().a(paramActivity.getApplicationContext(), gnz.a().d(), miq.C().f().i(), nab.a().f(), b(paramActivity, paramjdf), Boolean.valueOf(mzr.a()));
  }
  
  public static void a(Activity paramActivity, boolean paramBoolean) {
    if (miq.C().f().C().b("00000107")) {
      b(paramActivity, paramBoolean);
      return;
    } 
    e(paramActivity);
  }
  
  private static ks b(Activity paramActivity, jdf paramjdf) {
    return (ks)new jcx(paramActivity, paramjdf);
  }
  
  public static void b(Activity paramActivity) {
    if (miq.C().f().C().b("00000107")) {
      f(paramActivity);
    } else {
      d(paramActivity);
    } 
    frq.d("Investimentos_Home_Acao", "Investimentos");
  }
  
  public static void b(Activity paramActivity, String paramString) {
    if (miq.C().f().C().b("00000107")) {
      byte b = -1;
      switch (paramString.hashCode()) {
        default:
          switch (b) {
            default:
              f(paramActivity);
              return;
            case 0:
              zs.a().a(paramActivity.getApplicationContext(), gnz.a().d(), miq.C().f().i(), nab.a().f(), h(paramActivity), Boolean.valueOf(mzr.a()), miq.C().f().j(), "1");
              return;
            case 1:
              zs.a().a(paramActivity.getApplicationContext(), gnz.a().d(), miq.C().f().i(), nab.a().f(), h(paramActivity), Boolean.valueOf(mzr.a()), miq.C().f().j(), "5");
              return;
            case 2:
              break;
          } 
          break;
        case 370807749:
          if (paramString.equals("LISTA_FUNDOS"))
            b = 0; 
        case 1564694230:
          if (paramString.equals("LISTA_LCI"))
            b = 1; 
        case 1564685605:
          if (paramString.equals("LISTA_CDB"))
            b = 2; 
      } 
      zs.a().a(paramActivity.getApplicationContext(), gnz.a().d(), miq.C().f().i(), nab.a().f(), h(paramActivity), Boolean.valueOf(mzr.a()), miq.C().f().j(), "4");
      return;
    } 
    d(paramActivity);
  }
  
  private static void b(Activity paramActivity, boolean paramBoolean) {
    zs.a().a(paramActivity.getApplicationContext(), gnz.a().d(), miq.C().f().i(), nab.a().f(), h(paramActivity), Boolean.valueOf(mzr.a()), true);
  }
  
  public static void c(Activity paramActivity) {
    bfj bfj = new bfj();
    bfj.a("Este canal de atendimento é exclusivo para cancelamento de");
    bfj.a(" Aplicações");
    bfj.a(" contratadas.");
    (new hno((Context)paramActivity)).a("Investimentos").b("Cancelamento de Aplicações").a(2130838462).b((Spanned)bfj).d("seg à sex das 08:00 às 20:00hrs").e("https://santander.custhelp.com/app/chat/chat_santander/p/203").a(hxi.f()).a().a();
  }
  
  public static void c(Activity paramActivity, String paramString) {
    if (miq.C().f().C().b("00000107")) {
      byte b = -1;
      switch (paramString.hashCode()) {
        default:
          switch (b) {
            default:
              f(paramActivity);
              return;
            case 0:
              g(paramActivity);
              return;
            case 1:
              zs.a().a(paramActivity.getApplicationContext(), gnz.a().d(), miq.C().f().i(), nab.a().f(), h(paramActivity), Boolean.valueOf(mzr.a()), miq.C().f().j(), "4");
              return;
            case 2:
              zs.a().a(paramActivity.getApplicationContext(), gnz.a().d(), miq.C().f().i(), nab.a().f(), h(paramActivity), Boolean.valueOf(mzr.a()), miq.C().f().j(), "1");
              return;
            case 3:
            case 4:
            case 5:
              zs.a().c(paramActivity.getApplicationContext(), gnz.a().d(), miq.C().f().i(), nab.a().f(), h(paramActivity), Boolean.valueOf(mzr.a()), miq.C().f().j());
              return;
            case 6:
              break;
          } 
          break;
        case 831987820:
          if (paramString.equals("CARRINHO_ABANDONADO"))
            b = 0; 
        case -1398924675:
          if (paramString.equals("CDB_FUNCIONARIO"))
            b = 1; 
        case 2084931433:
          if (paramString.equals("FUNDOS"))
            b = 2; 
        case 1593593125:
          if (paramString.equals("POUPANCA"))
            b = 3; 
        case -177950089:
          if (paramString.equals("CDB_RECOMPENSA"))
            b = 4; 
        case 63893315:
          if (paramString.equals("CARDS"))
            b = 5; 
        case -25206424:
          if (paramString.equals("CDB_VG_DIGITAL"))
            b = 6; 
        case 817255812:
          if (paramString.equals("PREVIDENCIA"))
            b = 7; 
      } 
      zs.a().a(paramActivity.getApplicationContext(), gnz.a().d(), miq.C().f().i(), nab.a().f(), h(paramActivity), Boolean.valueOf(mzr.a()), miq.C().f().j(), "4", "BP", "0011", "26", "CDB DI DIGITAL");
      return;
    } 
    d(paramActivity);
  }
  
  private static void d(Activity paramActivity) {
    frq.d(paramActivity.getString(2131298666), paramActivity.getString(2131298667));
    Intent intent = new Intent((Context)paramActivity, MeusInvestimentosActivity.class);
    intent.setFlags(67108864);
    paramActivity.startActivity(intent);
  }
  
  private static void e(Activity paramActivity) {
    Intent intent;
    if (((Conta)miq.C().f().q().a().get(0)).getSaldoTotalPoupanca() == null) {
      intent = new Intent((Context)paramActivity, SemProdutoActivity.class);
      intent.putExtra("tipo_produto", (Serializable)jda.POUPANCA);
    } else {
      intent = new Intent((Context)paramActivity, Poupanca_posicaoconsolidadaActivity.class);
      intent.putExtra("type", 1);
      intent.putExtra("positionFundo", -1);
    } 
    intent.setFlags(67108864);
    paramActivity.startActivity(intent);
  }
  
  private static void f(Activity paramActivity) {
    frq.d(paramActivity.getString(2131298666), paramActivity.getString(2131298668));
    zs.a().a(paramActivity.getApplicationContext(), gnz.a().d(), miq.C().f().i(), nab.a().f(), b(paramActivity, (jdf)null), Boolean.valueOf(mzr.a()));
  }
  
  private static void g(Activity paramActivity) {
    try {
      zs.a().b((Context)paramActivity);
      return;
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return;
    } 
  }
  
  private static ks h(Activity paramActivity) {
    return b(paramActivity, (jdf)null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\jcw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */