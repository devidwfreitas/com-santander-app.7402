import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import br.com.santander.modulo.ddav1.view.TitlesActivity;

public class adh {
  private static adh a;
  
  private adi b;
  
  public static adh a() {
    if (a == null)
      a = new adh(); 
    return a;
  }
  
  private void a(Context paramContext) {
    Intent intent = new Intent(paramContext, TitlesActivity.class);
    intent.addFlags(67108864);
    intent.addFlags(268435456);
    paramContext.startActivity(intent);
  }
  
  private boolean a(je paramje, String paramString, ji paramji, Boolean paramBoolean) {
    if (paramje != null && paramji != null) {
      adz.b().a(paramje);
      aea.a().a(paramji);
      aea.a().a(paramString);
      aea.a().a(paramBoolean.booleanValue());
      return true;
    } 
    return false;
  }
  
  private void c() {
    if (this.b != null)
      this.b.a(); 
  }
  
  public void a(Activity paramActivity, String paramString) {
    if (this.b != null)
      this.b.a(paramActivity, paramString); 
  }
  
  public void a(Context paramContext, je paramje, String paramString, ji paramji, Boolean paramBoolean, adi paramadi) {
    this.b = paramadi;
    if (a(paramje, paramString, paramji, paramBoolean)) {
      a(paramContext);
      return;
    } 
    c();
  }
  
  public void a(String paramString1, String paramString2) {
    if (this.b != null)
      this.b.a(paramString1, paramString2); 
  }
  
  public adi b() {
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\adh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */