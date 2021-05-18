import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.net.Uri;
import android.support.v7.app.AlertDialog;
import android.text.TextUtils;

public class hbr implements hbv {
  private static hbr a;
  
  private mip b = (mip)miq.C();
  
  private hce c = new hce(this);
  
  private Dialog d;
  
  public static hbr a() {
    if (a == null)
      a = new hbr(); 
    return a;
  }
  
  private void a(Context paramContext) {
    b();
    this.d = mxn.b((Activity)paramContext);
  }
  
  private void a(Context paramContext, hbp paramhbp) {
    if (TextUtils.isEmpty(paramhbp.a()))
      return; 
    String str = paramhbp.a();
    byte b = -1;
    switch (str.hashCode()) {
      default:
        switch (b) {
          default:
            a(paramContext);
            this.c.a(paramContext, paramhbp);
            return;
          case 0:
            jcw.a((Activity)paramContext, "investimentosCDB");
            return;
          case 1:
            break;
        } 
        break;
      case 432072811:
        if (str.equals("investimentosCDB"))
          b = 0; 
      case -3323169:
        if (str.equals("investimentosFundos"))
          b = 1; 
    } 
    jcw.a((Activity)paramContext, "investimentosFundos");
  }
  
  private void b() {
    if (this.d == null)
      return; 
    this.d.dismiss();
  }
  
  private void b(Context paramContext, String paramString) {
    (new AlertDialog.Builder(paramContext)).setTitle(paramContext.getString(2131299008)).setMessage(paramString).setPositiveButton(17039370, null).create().show();
  }
  
  public void a(Context paramContext, Uri paramUri) {
    a(paramContext, new hbp(paramUri));
  }
  
  public void a(Context paramContext, hbu paramhbu) {
    b();
    if (paramhbu == null)
      return; 
    if (paramhbu.b != null) {
      paramContext.startActivity(paramhbu.b);
      this.b.a(null);
      return;
    } 
    b(paramContext, paramhbu.a);
  }
  
  public void a(Context paramContext, @hbs String paramString) {
    a(paramContext, new hbp(paramString));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hbr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */