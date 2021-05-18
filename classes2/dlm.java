import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.MainThread;

public final class dlm {
  private final dlo a;
  
  public dlm(dlo paramdlo) {
    csp.a(paramdlo);
    this.a = paramdlo;
  }
  
  public static boolean a(Context paramContext, boolean paramBoolean) {
    csp.a(paramContext);
    if (paramBoolean) {
      String str1 = "com.google.android.gms.measurement.PackageMeasurementReceiver";
      return dou.a(paramContext, str1, false);
    } 
    String str = "com.google.android.gms.measurement.AppMeasurementReceiver";
    return dou.a(paramContext, str, false);
  }
  
  @MainThread
  public void a(Context paramContext, Intent paramIntent) {
    dlv dlv = dlv.a(paramContext);
    dkw dkw = dlv.f();
    if (paramIntent == null) {
      dkw.z().a("Receiver called with null intent");
      return;
    } 
    dlv.d().V();
    String str = paramIntent.getAction();
    dkw.D().a("Local receiver got", str);
    if ("com.google.android.gms.measurement.UPLOAD".equals(str)) {
      dog.a(paramContext, false);
      paramIntent = (new Intent()).setClassName(paramContext, "com.google.android.gms.measurement.AppMeasurementService");
      paramIntent.setAction("com.google.android.gms.measurement.UPLOAD");
      this.a.a(paramContext, paramIntent);
      return;
    } 
    if ("com.android.vending.INSTALL_REFERRER".equals(str)) {
      str = paramIntent.getStringExtra("referrer");
      if (str == null) {
        dkw.D().a("Install referrer extras are null");
        return;
      } 
      Uri uri = Uri.parse(str);
      Bundle bundle = dlv.o().a(uri);
      if (bundle == null) {
        dkw.D().a("No campaign defined in install referrer broadcast");
        return;
      } 
      long l = 1000L * paramIntent.getLongExtra("referrer_timestamp_seconds", 0L);
      if (l == 0L)
        dkw.z().a("Install referrer is missing timestamp"); 
      dlv.h().a(new dln(this, dlv, l, bundle, paramContext, dkw));
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dlm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */