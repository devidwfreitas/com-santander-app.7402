import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.measurement.AppMeasurement;

class dln implements Runnable {
  dln(dlm paramdlm, dlv paramdlv, long paramLong, Bundle paramBundle, Context paramContext, dkw paramdkw) {}
  
  public void run() {
    long l1;
    dot dot = this.a.p().c(this.a.x().x(), "_fot");
    if (dot != null && dot.e instanceof Long) {
      l1 = ((Long)dot.e).longValue();
    } else {
      l1 = 0L;
    } 
    long l2 = this.b;
    if (l1 > 0L && (l2 >= l1 || l2 <= 0L)) {
      l1--;
    } else {
      l1 = l2;
    } 
    if (l1 > 0L)
      this.c.putLong("click_timestamp", l1); 
    AppMeasurement.getInstance(this.d).logEventInternal("auto", "_cmp", this.c);
    this.e.D().a("Install campaign recorded");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dln.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */