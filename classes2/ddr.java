import android.os.Looper;
import android.support.annotation.NonNull;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

public class ddr {
  private final Set<ddn<?>> a = Collections.newSetFromMap(new WeakHashMap<ddn<?>, Boolean>());
  
  public static <L> ddp<L> a(@NonNull L paramL, @NonNull String paramString) {
    csp.a(paramL, "Listener must not be null");
    csp.a(paramString, "Listener type must not be null");
    csp.a(paramString, "Listener type must not be empty");
    return new ddp<L>(paramL, paramString);
  }
  
  public static <L> ddn<L> b(@NonNull L paramL, @NonNull Looper paramLooper, @NonNull String paramString) {
    csp.a(paramL, "Listener must not be null");
    csp.a(paramLooper, "Looper must not be null");
    csp.a(paramString, "Listener type must not be null");
    return new ddn<L>(paramLooper, paramL, paramString);
  }
  
  public <L> ddn<L> a(@NonNull L paramL, Looper paramLooper) {
    return a(paramL, paramLooper, "NO_TYPE");
  }
  
  public <L> ddn<L> a(@NonNull L paramL, @NonNull Looper paramLooper, @NonNull String paramString) {
    ddn<L> ddn = b(paramL, paramLooper, paramString);
    this.a.add(ddn);
    return ddn;
  }
  
  public void a() {
    Iterator<ddn<?>> iterator = this.a.iterator();
    while (iterator.hasNext())
      ((ddn)iterator.next()).b(); 
    this.a.clear();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ddr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */