import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import br.com.santander.modulo.emprestimoslib.features.gestao.main.view.CreditoMainActivity;
import br.com.santander.modulo.emprestimoslib.features.remanejamento.main.view.RemanejamentoMainActivity;
import java.util.ArrayList;
import java.util.Properties;

public class afw {
  private static afw a;
  
  private Context b;
  
  private afx c;
  
  public static afw a() {
    // Byte code:
    //   0: ldc afw
    //   2: monitorenter
    //   3: getstatic afw.a : Lafw;
    //   6: ifnonnull -> 19
    //   9: new afw
    //   12: dup
    //   13: invokespecial <init> : ()V
    //   16: putstatic afw.a : Lafw;
    //   19: getstatic afw.a : Lafw;
    //   22: astore_0
    //   23: ldc afw
    //   25: monitorexit
    //   26: aload_0
    //   27: areturn
    //   28: astore_0
    //   29: ldc afw
    //   31: monitorexit
    //   32: aload_0
    //   33: athrow
    // Exception table:
    //   from	to	target	type
    //   3	19	28	finally
    //   19	23	28	finally
  }
  
  private void c(Context paramContext) {
    this.b = paramContext;
  }
  
  public void a(Activity paramActivity) {
    if (this.c != null)
      this.c.a(paramActivity); 
  }
  
  public void a(Context paramContext) {
    a(paramContext, new ArrayList<String>());
  }
  
  public void a(Context paramContext, String paramString, ie paramie, afx paramafx, ji paramji, Properties paramProperties, boolean paramBoolean) {
    if (a(paramie, paramji, paramProperties, paramafx, paramString, paramBoolean))
      a(paramContext); 
  }
  
  public void a(Context paramContext, ArrayList<String> paramArrayList) {
    Intent intent = new Intent(paramContext, CreditoMainActivity.class);
    intent.addFlags(67108864);
    intent.addFlags(268435456);
    intent.putStringArrayListExtra("params", paramArrayList);
    paramContext.startActivity(intent);
  }
  
  public void a(String paramString1, String paramString2) {
    if (this.c != null)
      this.c.a(paramString1, paramString2); 
  }
  
  public boolean a(ie paramie, ji paramji, Properties paramProperties, afx paramafx, String paramString, boolean paramBoolean) {
    if (paramie != null && paramProperties != null && paramji != null && paramString != null) {
      aja.b().a(paramie);
      aja.b().a(paramProperties);
      ajd.a().a(paramji);
      ajd.a().a(paramString);
      ajd.a().a(paramBoolean);
      this.c = paramafx;
      return true;
    } 
    return false;
  }
  
  public Context b() {
    return this.b;
  }
  
  public void b(Activity paramActivity) {
    if (this.c != null)
      this.c.b(paramActivity); 
  }
  
  public void b(Context paramContext) {
    b(paramContext, new ArrayList<String>());
  }
  
  public void b(Context paramContext, String paramString, ie paramie, afx paramafx, ji paramji, Properties paramProperties, boolean paramBoolean) {
    if (a(paramie, paramji, paramProperties, paramafx, paramString, paramBoolean))
      b(paramContext); 
  }
  
  public void b(Context paramContext, ArrayList<String> paramArrayList) {
    Intent intent = new Intent(paramContext, RemanejamentoMainActivity.class);
    intent.addFlags(67108864);
    intent.addFlags(268435456);
    intent.putStringArrayListExtra("params", paramArrayList);
    paramContext.startActivity(intent);
  }
  
  public void c() {
    if (this.c != null)
      this.c.c(); 
  }
  
  public void d() {
    if (this.c != null)
      this.c.a(); 
  }
  
  public void e() {
    if (this.c != null)
      this.c.b(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\afw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */