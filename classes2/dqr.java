import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;

public class dqr {
  private static final AtomicReference<dqr> a = new AtomicReference<dqr>();
  
  dqr(Context paramContext) {}
  
  @Nullable
  public static dqr a() {
    return a.get();
  }
  
  public static dqr a(Context paramContext) {
    a.compareAndSet(null, new dqr(paramContext));
    return a.get();
  }
  
  public eib a(@NonNull String paramString) {
    return null;
  }
  
  public void a(@NonNull ehu paramehu) {}
  
  public Set<String> b() {
    return Collections.emptySet();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dqr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */