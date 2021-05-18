import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v7.app.AlertDialog;
import android.util.Log;
import br.com.santander.investimentoV2.features.carrinho.view.CarrinhoActivity;
import br.com.santander.investimentoV2.features.cdbProgressivo.view.CdbProgressivoActivity;
import br.com.santander.investimentoV2.features.comprovantes.view.ComprovantesActivity;
import br.com.santander.investimentoV2.features.comprovantes.view.NotasNegociacaoActivity;
import br.com.santander.investimentoV2.features.configuracao.view.ConfigurarAplicacaoActivity;
import br.com.santander.investimentoV2.features.configurarInvestimentos.view.ConfigurarInvestimentosActivity;
import br.com.santander.investimentoV2.features.detalhes.view.DetalheSubProdutoActivity;
import br.com.santander.investimentoV2.features.efetivacao.view.EfetivacaoActivity;
import br.com.santander.investimentoV2.features.home.view.HomeActivity;
import br.com.santander.investimentoV2.features.investirPorValor.view.InvestirPorValorActivity;
import br.com.santander.investimentoV2.features.listagemSubproduto.view.ListagemSubprodutoActivity;
import br.com.santander.investimentoV2.features.listagemSubproduto.view.ListagemTodosSubprodutosActivity;
import br.com.santander.investimentoV2.features.recomendacao.view.RecomendacaoActivity;
import br.com.santander.investimentoV2.features.resgate.view.ResgateActivity;
import br.com.santander.investimentoV2.features.resgate.view.ResgateConfigurarActivity;
import br.com.santander.investimentoV2.features.resgate.view.ResgateContratosActivity;
import br.com.santander.investimentoV2.features.termos.view.TermosAceiteItemActivity;
import br.com.santander.investimentoV2.features.termos.view.TermosCondicoesActivity;
import br.com.santander.investimentoV2.features.termos.view.TermosRecusaActivity;
import br.com.santander.investimentoV2.features.validacao.view.ValidacaoActivity;
import java.io.File;
import java.util.ArrayList;
import java.util.Map;

public class zs {
  public static final String a = "1";
  
  public static final String b = "4";
  
  public static final String c = "5";
  
  private static zs d;
  
  private Context e;
  
  private ks f;
  
  private Intent a(ace paramace, Context paramContext, Class<?> paramClass) {
    Bundle bundle = new Bundle();
    Intent intent = new Intent(paramContext, paramClass);
    bundle.putString("aplicacaoEntity", (new eju()).j().b(paramace));
    intent.putExtras(bundle);
    return intent;
  }
  
  private Intent a(acg paramacg, Context paramContext, Class<?> paramClass) {
    Bundle bundle = new Bundle();
    Intent intent = new Intent(paramContext, paramClass);
    if (paramacg != null) {
      bundle.putString("to", (new eju()).j().b(paramacg));
      intent.putExtras(bundle);
    } 
    return intent;
  }
  
  public static zs a() {
    // Byte code:
    //   0: ldc zs
    //   2: monitorenter
    //   3: getstatic zs.d : Lzs;
    //   6: ifnonnull -> 19
    //   9: new zs
    //   12: dup
    //   13: invokespecial <init> : ()V
    //   16: putstatic zs.d : Lzs;
    //   19: getstatic zs.d : Lzs;
    //   22: astore_0
    //   23: ldc zs
    //   25: monitorexit
    //   26: aload_0
    //   27: areturn
    //   28: astore_0
    //   29: ldc zs
    //   31: monitorexit
    //   32: aload_0
    //   33: athrow
    // Exception table:
    //   from	to	target	type
    //   3	19	28	finally
    //   19	23	28	finally
  }
  
  private void e(Context paramContext) {
    this.e = paramContext;
  }
  
  public String a(byte[] paramArrayOfbyte) {
    return (this.f != null) ? this.f.a(paramArrayOfbyte) : "";
  }
  
  public void a(Activity paramActivity, zx paramzx) {
    if (this.f != null)
      this.f.a(paramzx); 
  }
  
  public void a(Context paramContext) {
    a(paramContext, new ArrayList<String>());
  }
  
  public void a(Context paramContext, ace paramace) {
    Intent intent = a(paramace, paramContext, TermosCondicoesActivity.class);
    intent.setFlags(268435456);
    paramContext.startActivity(intent);
  }
  
  public void a(Context paramContext, acg paramacg) {
    Intent intent = a(paramacg, paramContext, DetalheSubProdutoActivity.class);
    intent.addFlags(67108864);
    intent.addFlags(268435456);
    paramContext.startActivity(intent);
  }
  
  public void a(Context paramContext, acg paramacg, String paramString) {
    Intent intent = a(paramacg, paramContext, EfetivacaoActivity.class);
    Bundle bundle = intent.getExtras();
    bundle.putString("otp", paramString);
    intent.putExtras(bundle);
    intent.setFlags(1073741824);
    paramContext.startActivity(intent);
  }
  
  @Deprecated
  public void a(Context paramContext, acg paramacg, String paramString1, String paramString2) {
    Intent intent = new Intent(paramContext, TermosRecusaActivity.class);
    Bundle bundle = new Bundle();
    bundle.putString("to", (new eju()).j().b(paramacg));
    bundle.putString("title", paramString1);
    bundle.putString("message", paramString2);
    intent.putExtras(bundle);
    intent.setFlags(268435456);
    paramContext.startActivity(intent);
  }
  
  public void a(Context paramContext, acg paramacg, sy paramsy) {
    if (aca.a().g().booleanValue()) {
      l(paramContext, null);
      return;
    } 
    e(paramContext);
    Intent intent = a(paramacg, this.e, ResgateContratosActivity.class);
    Bundle bundle = new Bundle();
    bundle.putString("family", (new eju()).j().b(paramsy));
    intent.putExtras(bundle);
    intent.setFlags(268435456);
    paramContext.startActivity(intent);
  }
  
  public void a(Context paramContext, acg paramacg, yt paramyt) {
    Intent intent = a(paramacg, paramContext, EfetivacaoActivity.class);
    Bundle bundle = intent.getExtras();
    bundle.putString("cso", (new eju()).j().b(paramyt));
    intent.putExtras(bundle);
    intent.setFlags(1073741824);
    paramContext.startActivity(intent);
  }
  
  public void a(Context paramContext, Uri paramUri) {
    Intent intent = new Intent();
    intent.setAction("android.intent.action.SEND");
    intent.putExtra("android.intent.extra.STREAM", (Parcelable)paramUri);
    intent.setType("image/jpeg");
    paramContext.startActivity(Intent.createChooser(intent, paramContext.getResources().getText(lg.app_compartilhar)));
  }
  
  public void a(Context paramContext, File paramFile) {
    Intent intent = new Intent();
    intent.setAction("android.intent.action.SEND");
    intent.putExtra("android.intent.extra.STREAM", paramFile);
    intent.setDataAndType(Uri.fromFile(paramFile), "application/pdf");
    paramContext.startActivity(Intent.createChooser(intent, paramContext.getResources().getText(lg.app_compartilhar)));
  }
  
  public void a(Context paramContext, String paramString) {
    Intent intent = new Intent();
    intent.setAction("android.intent.action.SEND");
    intent.putExtra("android.intent.extra.TEXT", paramString);
    intent.setType("text/plain");
    paramContext.startActivity(Intent.createChooser(intent, paramContext.getResources().getText(lg.app_compartilhar)));
  }
  
  public void a(Context paramContext, String paramString1, String paramString2, String paramString3, ace paramace, acg paramacg) {
    e(paramContext);
    Intent intent = a(paramacg, paramContext, RecomendacaoActivity.class);
    Bundle bundle = new Bundle();
    bundle.putString("tipoRecomendacao", paramString1);
    bundle.putString("recomendacaoValorTotalInvestimento", paramString2);
    bundle.putString("recomendacaoValorParcialInvestimento", paramString3);
    bundle.putString("recomendacaoApplicationEntity", (new eju()).j().b(paramace));
    intent.putExtras(bundle);
    intent.setFlags(268435456);
    paramContext.startActivity(intent);
  }
  
  public void a(Context paramContext, String paramString, zx paramzx) {
    int i;
    if (paramzx != null) {
      (new AlertDialog.Builder(paramContext)).setMessage(lg.aviso_saida_para_acesso_url_externa).setTitle("Atenção").setCancelable(false).setPositiveButton(lg.app_ok, (DialogInterface.OnClickListener)new zu(this, paramString, paramContext, paramzx)).setNeutralButton(lg.app_cancelar, (DialogInterface.OnClickListener)new zt(this, paramString, paramContext)).create().show();
      return;
    } 
    if (paramString != null && paramString.toLowerCase().contains("ações")) {
      i = lg.tag_name_popup_corretora_acoes;
    } else {
      i = lg.tag_name_popup_corretora_outros;
    } 
    (new AlertDialog.Builder(paramContext)).setTitle("Atenção").setMessage(lg.aviso_saida_para_outro_app_santander).setCancelable(false).setPositiveButton(lg.app_ok, (DialogInterface.OnClickListener)new zw(this, paramString, paramContext, i, paramzx)).setNeutralButton(lg.app_cancelar, (DialogInterface.OnClickListener)new zv(this, paramString, paramContext, i)).create().show();
  }
  
  public void a(Context paramContext, ArrayList<String> paramArrayList) {
    Intent intent = new Intent(paramContext, HomeActivity.class);
    intent.addFlags(67108864);
    intent.addFlags(268435456);
    intent.putStringArrayListExtra("params", paramArrayList);
    paramContext.startActivity(intent);
  }
  
  public void a(Context paramContext, je paramje, String paramString, ji paramji, ks paramks, Boolean paramBoolean) {
    if (a(paramje, paramString, paramji, paramks, paramBoolean))
      a(paramContext); 
  }
  
  public void a(Context paramContext, je paramje, String paramString1, ji paramji, ks paramks, Boolean paramBoolean, String paramString2) {
    a(paramContext, paramje, paramString1, paramji, paramks, paramBoolean);
  }
  
  public void a(Context paramContext, je paramje, String paramString1, ji paramji, ks paramks, Boolean paramBoolean, String paramString2, String paramString3) {
    acg acg;
    if (a(paramje, paramString1, paramji, paramks, paramBoolean)) {
      acg = new acg();
      acg.f(paramString2);
      acg.a(paramString3);
      j(paramContext, acg);
      return;
    } 
    a(paramContext, (je)acg, paramString1, paramji, paramks, paramBoolean);
  }
  
  public void a(Context paramContext, je paramje, String paramString1, ji paramji, ks paramks, Boolean paramBoolean, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7) {
    acg acg;
    if (a(paramje, paramString1, paramji, paramks, paramBoolean)) {
      acg = new acg();
      acg.f(paramString2);
      acg.c(paramString3);
      acg.a(new to(paramString4, paramString5, paramString6, paramString7));
      b(paramContext, acg);
      return;
    } 
    a(paramContext, (je)acg, paramString1, paramji, paramks, paramBoolean);
  }
  
  public void a(Context paramContext, je paramje, String paramString, ji paramji, ks paramks, Boolean paramBoolean, boolean paramBoolean1) {
    te.a = paramBoolean1;
    a(paramContext, paramje, paramString, paramji, paramks, paramBoolean);
  }
  
  public void a(Context paramContext, uz paramuz, acg paramacg) {
    Intent intent = new Intent(paramContext, ListagemTodosSubprodutosActivity.class);
    Bundle bundle = new Bundle();
    bundle.putString("to", (new eju()).j().b(paramacg));
    bundle.putString("family", (new eju()).j().b(paramuz));
    intent.putExtras(bundle);
    intent.setFlags(268435456);
    paramContext.startActivity(intent);
  }
  
  public void a(Context paramContext, xw paramxw) {
    Intent intent = new Intent(paramContext, TermosAceiteItemActivity.class);
    Bundle bundle = new Bundle();
    bundle.putString("model", (new eju()).j().b(paramxw));
    intent.putExtras(bundle);
    intent.setFlags(268435456);
    paramContext.startActivity(intent);
  }
  
  public void a(String paramString) {
    if (this.f != null)
      this.f.a(paramString); 
  }
  
  public void a(String paramString, double paramDouble) {
    if (this.f != null)
      this.f.a(paramString, paramDouble); 
  }
  
  public void a(String paramString1, String paramString2) {
    if (this.f != null)
      this.f.a(paramString1, paramString2); 
  }
  
  public void a(String paramString1, String paramString2, Map<String, String> paramMap) {
    if (this.f != null)
      this.f.a(paramString1, paramString2, paramMap); 
  }
  
  public void a(yw paramyw) {
    if (this.f != null)
      this.f.a(paramyw); 
  }
  
  public boolean a(je paramje, String paramString, ji paramji, ks paramks, Boolean paramBoolean) {
    this.f = paramks;
    if (paramString.equalsIgnoreCase(ach.USER_PRIVATE.toString())) {
      Log.d("Segmento", "Abrindo investimento Antigo: usuário Private");
      d();
      return false;
    } 
    if (paramje != null && paramji != null) {
      Log.d("Segmento", "Abrindo investimento Novo: tudo OK");
      abp.b().a(paramje);
      aca.a().a(paramji);
      aca.a().a(paramString);
      aca.a().a(paramBoolean);
      this.f = paramks;
      return true;
    } 
    Log.d("Segmento", "Abrindo investimento Antigo: Parametros inválidos");
    d();
    return false;
  }
  
  public void b() {
    (new lo()).a();
  }
  
  public void b(Context paramContext) {
    if (aca.a().g().booleanValue()) {
      l(paramContext, null);
      return;
    } 
    Intent intent = a(new acg(), paramContext, CarrinhoActivity.class);
    Bundle bundle = intent.getExtras();
    bundle.putBoolean("KD", true);
    intent.putExtras(bundle);
    intent.setFlags(268435456);
    paramContext.startActivity(intent);
  }
  
  public void b(Context paramContext, acg paramacg) {
    if (aca.a().g().booleanValue()) {
      l(paramContext, paramacg);
      return;
    } 
    Intent intent = a(paramacg, paramContext, ConfigurarAplicacaoActivity.class);
    intent.setFlags(268435456);
    paramContext.startActivity(intent);
  }
  
  public void b(Context paramContext, String paramString) {
    Log.e("OPEN URL", paramString);
    paramContext.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(paramString)));
  }
  
  public void b(Context paramContext, je paramje, String paramString1, ji paramji, ks paramks, Boolean paramBoolean, String paramString2) {
    acg acg;
    if (a(paramje, paramString1, paramji, paramks, paramBoolean)) {
      acg = new acg();
      acg.f(paramString2);
      j(paramContext, acg);
      return;
    } 
    a(paramContext, (je)acg, paramString1, paramji, paramks, paramBoolean);
  }
  
  public void b(String paramString1, String paramString2) {
    if (this.f != null)
      this.f.b(paramString1, paramString2); 
  }
  
  public Context c() {
    return this.e;
  }
  
  public void c(Context paramContext) {
    try {
      paramContext.startActivity(new Intent(paramContext, Class.forName(paramContext.getString(lg.home_mobile_pf))));
      return;
    } catch (ClassNotFoundException classNotFoundException) {
      classNotFoundException.printStackTrace();
      return;
    } 
  }
  
  public void c(Context paramContext, acg paramacg) {
    if (aca.a().g().booleanValue()) {
      l(paramContext, paramacg);
      return;
    } 
    Log.d("PRODUCT_", paramacg.n().k());
    Intent intent = a(paramacg, paramContext, ResgateConfigurarActivity.class);
    intent.setFlags(1073741824);
    paramContext.startActivity(intent);
  }
  
  public void c(Context paramContext, String paramString) {
    Intent intent = new Intent("android.intent.action.DIAL");
    intent.setData(Uri.parse("tel:" + paramString));
    paramContext.startActivity(intent);
  }
  
  public void c(Context paramContext, je paramje, String paramString1, ji paramji, ks paramks, Boolean paramBoolean, String paramString2) {
    acg acg;
    if (a(paramje, paramString1, paramji, paramks, paramBoolean)) {
      acg = new acg();
      acg.f(paramString2);
      h(paramContext, acg);
      return;
    } 
    a(paramContext, (je)acg, paramString1, paramji, paramks, paramBoolean);
  }
  
  public void d() {
    if (this.f != null)
      this.f.a(); 
  }
  
  public void d(Context paramContext) {
    paramContext.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://santander.custhelp.com/app/chat/chat_santander/p/94")));
  }
  
  public void d(Context paramContext, acg paramacg) {
    Intent intent = a(paramacg, paramContext, NotasNegociacaoActivity.class);
    intent.setFlags(1073741824);
    paramContext.startActivity(intent);
  }
  
  public void d(Context paramContext, String paramString) {
    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
    intent.addFlags(268435456);
    intent.setPackage("com.android.chrome");
    try {
      paramContext.startActivity(intent);
      return;
    } catch (ActivityNotFoundException activityNotFoundException) {
      intent.setPackage(null);
      paramContext.startActivity(intent);
      return;
    } 
  }
  
  public void e(Context paramContext, acg paramacg) {
    Intent intent = a(paramacg, paramContext, CarrinhoActivity.class);
    intent.addFlags(268435456);
    intent.addFlags(67108864);
    paramContext.startActivity(intent);
  }
  
  public void f(Context paramContext, acg paramacg) {
    Intent intent = a(paramacg, paramContext, ComprovantesActivity.class);
    intent.addFlags(65536);
    intent.addFlags(268435456);
    paramContext.startActivity(intent);
  }
  
  public void g(Context paramContext, acg paramacg) {
    Intent intent = a(paramacg, paramContext, CdbProgressivoActivity.class);
    intent.setFlags(268435456);
    paramContext.startActivity(intent);
  }
  
  public void h(Context paramContext, acg paramacg) {
    if (aca.a().g().booleanValue()) {
      l(paramContext, null);
      return;
    } 
    e(paramContext);
    Intent intent = a(paramacg, this.e, ConfigurarInvestimentosActivity.class);
    intent.setFlags(268435456);
    paramContext.startActivity(intent);
  }
  
  public void i(Context paramContext, acg paramacg) {
    if (aca.a().g().booleanValue()) {
      l(paramContext, null);
      return;
    } 
    e(paramContext);
    Intent intent = a(paramacg, this.e, ResgateActivity.class);
    intent.setFlags(268435456);
    paramContext.startActivity(intent);
  }
  
  public void j(Context paramContext, acg paramacg) {
    Intent intent = a(paramacg, paramContext, ListagemSubprodutoActivity.class);
    intent.setFlags(268435456);
    paramContext.startActivity(intent);
  }
  
  public void k(Context paramContext, acg paramacg) {
    e(paramContext);
    Intent intent = a(paramacg, paramContext, InvestirPorValorActivity.class);
    intent.setFlags(268435456);
    paramContext.startActivity(intent);
  }
  
  public void l(Context paramContext, acg paramacg) {
    e(paramContext);
    Intent intent = a(paramacg, paramContext, ValidacaoActivity.class);
    intent.addFlags(1073741824);
    intent.addFlags(268435456);
    paramContext.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\zs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */