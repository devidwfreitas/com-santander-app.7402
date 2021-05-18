import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.WorkerThread;
import android.support.v4.util.ArrayMap;
import java.util.Map;

public class djs extends dmt {
  private final Map<String, Long> a = (Map<String, Long>)new ArrayMap();
  
  private final Map<String, Integer> b = (Map<String, Integer>)new ArrayMap();
  
  private long c;
  
  public djs(dlv paramdlv) {
    super(paramdlv);
  }
  
  @WorkerThread
  private void a(long paramLong, egk paramegk) {
    if (paramegk == null) {
      u().D().a("Not logging ad exposure. No active activity");
      return;
    } 
    if (paramLong < 1000L) {
      u().D().a("Not logging ad exposure. Less than 1000 ms. exposure", Long.valueOf(paramLong));
      return;
    } 
    Bundle bundle = new Bundle();
    bundle.putLong("_xt", paramLong);
    dnk.a(paramegk, bundle);
    h().a("am", "_xa", bundle);
  }
  
  @WorkerThread
  private void a(String paramString, long paramLong) {
    c();
    e();
    csp.a(paramString);
    if (this.b.isEmpty())
      this.c = paramLong; 
    Integer integer = this.b.get(paramString);
    if (integer != null) {
      this.b.put(paramString, Integer.valueOf(integer.intValue() + 1));
      return;
    } 
    if (this.b.size() >= 100) {
      u().z().a("Too many ads visible");
      return;
    } 
    this.b.put(paramString, Integer.valueOf(1));
    this.a.put(paramString, Long.valueOf(paramLong));
  }
  
  @WorkerThread
  private void a(String paramString, long paramLong, egk paramegk) {
    if (paramegk == null) {
      u().D().a("Not logging ad unit exposure. No active activity");
      return;
    } 
    if (paramLong < 1000L) {
      u().D().a("Not logging ad unit exposure. Less than 1000 ms. exposure", Long.valueOf(paramLong));
      return;
    } 
    Bundle bundle = new Bundle();
    bundle.putString("_ai", paramString);
    bundle.putLong("_xt", paramLong);
    dnk.a(paramegk, bundle);
    h().a("am", "_xu", bundle);
  }
  
  @WorkerThread
  private void b(long paramLong) {
    for (String str : this.a.keySet())
      this.a.put(str, Long.valueOf(paramLong)); 
    if (!this.a.isEmpty())
      this.c = paramLong; 
  }
  
  @WorkerThread
  private void b(String paramString, long paramLong) {
    c();
    e();
    csp.a(paramString);
    Integer integer = this.b.get(paramString);
    if (integer != null) {
      dnn dnn = l().x();
      int i = integer.intValue() - 1;
      if (i == 0) {
        this.b.remove(paramString);
        Long long_ = this.a.get(paramString);
        if (long_ == null) {
          u().x().a("First ad unit exposure time was never set");
        } else {
          long l = long_.longValue();
          this.a.remove(paramString);
          a(paramString, paramLong - l, dnn);
        } 
        if (this.b.isEmpty()) {
          if (this.c == 0L) {
            u().x().a("First ad exposure time was never set");
            return;
          } 
        } else {
          return;
        } 
        a(paramLong - this.c, dnn);
        this.c = 0L;
        return;
      } 
      this.b.put(paramString, Integer.valueOf(i));
      return;
    } 
    u().x().a("Call to endAdUnitExposure for unknown ad unit id", paramString);
  }
  
  public void a() {
    long l = m().b();
    t().a(new djv(this, l));
  }
  
  @WorkerThread
  public void a(long paramLong) {
    dnn dnn = l().x();
    for (String str : this.a.keySet())
      a(str, paramLong - ((Long)this.a.get(str)).longValue(), dnn); 
    if (!this.a.isEmpty())
      a(paramLong - this.c, dnn); 
    b(paramLong);
  }
  
  public void a(String paramString) {
    int i = Build.VERSION.SDK_INT;
    if (paramString == null || paramString.length() == 0) {
      u().x().a("Ad unit id must be a non-empty string");
      return;
    } 
    long l = m().b();
    t().a(new djt(this, paramString, l));
  }
  
  public void b(String paramString) {
    int i = Build.VERSION.SDK_INT;
    if (paramString == null || paramString.length() == 0) {
      u().x().a("Ad unit id must be a non-empty string");
      return;
    } 
    long l = m().b();
    t().a(new dju(this, paramString, l));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\djs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */