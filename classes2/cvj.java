import android.content.Context;
import android.content.Intent;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.stats.WakeLockEvent;
import java.util.List;

public class cvj {
  private static cvj a = new cvj();
  
  private static Boolean b;
  
  public static cvj a() {
    return a;
  }
  
  private static boolean a(Context paramContext) {
    if (b == null)
      b = Boolean.valueOf(false); 
    return b.booleanValue();
  }
  
  public void a(Context paramContext, String paramString1, int paramInt1, String paramString2, String paramString3, String paramString4, int paramInt2, List<String> paramList) {
    a(paramContext, paramString1, paramInt1, paramString2, paramString3, paramString4, paramInt2, paramList, 0L);
  }
  
  public void a(Context paramContext, String paramString1, int paramInt1, String paramString2, String paramString3, String paramString4, int paramInt2, List<String> paramList, long paramLong) {
    if (a(paramContext)) {
      String str;
      if (TextUtils.isEmpty(paramString1)) {
        str = String.valueOf(paramString1);
        if (str.length() != 0) {
          str = "missing wakeLock key. ".concat(str);
        } else {
          str = new String("missing wakeLock key. ");
        } 
        Log.e("WakeLockTracker", str);
        return;
      } 
      long l = System.currentTimeMillis();
      if (7 == paramInt1 || 8 == paramInt1 || 10 == paramInt1 || 11 == paramInt1) {
        WakeLockEvent wakeLockEvent = new WakeLockEvent(l, paramInt1, paramString2, paramInt2, cvh.a(paramList), paramString1, SystemClock.elapsedRealtime(), cvu.a((Context)str), paramString3, cvh.a(str.getPackageName()), cvu.b((Context)str), paramLong, paramString4);
        try {
          str.startService((new Intent()).setComponent(cvg.a).putExtra("com.google.android.gms.common.stats.EXTRA_LOG_EVENT", (Parcelable)wakeLockEvent));
          return;
        } catch (Exception exception) {
          Log.wtf("WakeLockTracker", exception);
          return;
        } 
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cvj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */