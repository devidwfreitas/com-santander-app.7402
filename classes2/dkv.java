import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.support.annotation.NonNull;

public class dkv extends ctb<dkp> {
  public dkv(Context paramContext, Looper paramLooper, ctd paramctd, cte paramcte) {
    super(paramContext, paramLooper, 93, paramctd, paramcte, null);
  }
  
  public dkp b(IBinder paramIBinder) {
    return dkq.a(paramIBinder);
  }
  
  @NonNull
  protected String i() {
    return "com.google.android.gms.measurement.START";
  }
  
  @NonNull
  protected String j() {
    return "com.google.android.gms.measurement.internal.IMeasurementService";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dkv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */