import android.support.annotation.NonNull;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public final class eha {
  public static <TResult> egv<TResult> a(@NonNull Exception paramException) {
    ehr<TResult> ehr = new ehr();
    ehr.a(paramException);
    return ehr;
  }
  
  public static <TResult> egv<TResult> a(TResult paramTResult) {
    ehr<TResult> ehr = new ehr();
    ehr.a(paramTResult);
    return ehr;
  }
  
  public static egv<Void> a(Collection<? extends egv<?>> paramCollection) {
    if (paramCollection.isEmpty())
      return a((Void)null); 
    Iterator<? extends egv<?>> iterator2 = paramCollection.iterator();
    while (iterator2.hasNext()) {
      if ((egv)iterator2.next() == null)
        throw new NullPointerException("null tasks are not accepted"); 
    } 
    ehr<Void> ehr = new ehr();
    ehe ehe = new ehe(paramCollection.size(), ehr);
    Iterator<? extends egv<?>> iterator1 = paramCollection.iterator();
    while (iterator1.hasNext())
      a(iterator1.next(), ehe); 
    return ehr;
  }
  
  public static <TResult> egv<TResult> a(@NonNull Callable<TResult> paramCallable) {
    return a(egx.a, paramCallable);
  }
  
  public static <TResult> egv<TResult> a(@NonNull Executor paramExecutor, @NonNull Callable<TResult> paramCallable) {
    csp.a(paramExecutor, "Executor must not be null");
    csp.a(paramCallable, "Callback must not be null");
    ehr<TResult> ehr = new ehr();
    paramExecutor.execute(new ehb(ehr, paramCallable));
    return ehr;
  }
  
  public static egv<Void> a(egv<?>... paramVarArgs) {
    return (paramVarArgs.length == 0) ? a((Void)null) : a(Arrays.asList(paramVarArgs));
  }
  
  public static <TResult> TResult a(@NonNull egv<TResult> paramegv) {
    csp.a();
    csp.a(paramegv, "Task must not be null");
    if (paramegv.a())
      return b(paramegv); 
    ehc ehc = new ehc(null);
    a(paramegv, ehc);
    ehc.a();
    return b(paramegv);
  }
  
  public static <TResult> TResult a(@NonNull egv<TResult> paramegv, long paramLong, @NonNull TimeUnit paramTimeUnit) {
    csp.a();
    csp.a(paramegv, "Task must not be null");
    csp.a(paramTimeUnit, "TimeUnit must not be null");
    if (paramegv.a())
      return b(paramegv); 
    ehc ehc = new ehc(null);
    a(paramegv, ehc);
    if (!ehc.a(paramLong, paramTimeUnit))
      throw new TimeoutException("Timed out waiting for Task"); 
    return b(paramegv);
  }
  
  private static void a(egv<?> paramegv, ehd paramehd) {
    paramegv.a(egx.b, paramehd);
    paramegv.a(egx.b, paramehd);
  }
  
  private static <TResult> TResult b(egv<TResult> paramegv) {
    if (paramegv.b())
      return paramegv.c(); 
    throw new ExecutionException(paramegv.d());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eha.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */