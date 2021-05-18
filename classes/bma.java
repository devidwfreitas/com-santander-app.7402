import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;

public class bma {
  private static final String a = bma.class.getCanonicalName();
  
  public static void a() {
    Context context = bhv.h();
    String str = bhv.l();
    boolean bool = bhv.p();
    bqx.a(context, "context");
    if (bool) {
      if (context instanceof Application) {
        bla.a((Application)context, str);
        return;
      } 
    } else {
      return;
    } 
    Log.w(a, "Automatic logging of basic events will not happen, because FacebookSdk.getApplicationContext() returns object that is not instance of android.app.Application. Make sure you call FacebookSdk.sdkInitialize() from Application class and pass application context.");
  }
  
  public static void a(String paramString, long paramLong) {
    Context context = bhv.h();
    String str = bhv.l();
    bqx.a(context, "context");
    boj boj = bol.a(str, false);
    if (boj != null && boj.f() && paramLong > 0L) {
      bla bla = bla.c(context);
      Bundle bundle = new Bundle(1);
      bundle.putCharSequence("fb_aa_time_spent_view_name", paramString);
      bla.a("fb_aa_time_spent_on_view", paramLong, bundle);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bma.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */