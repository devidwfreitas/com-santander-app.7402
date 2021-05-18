import android.support.annotation.NonNull;
import android.util.Log;
import com.google.android.gms.common.api.Status;

public abstract class cqi<R extends cqg> implements cqh<R> {
  public abstract void a(@NonNull Status paramStatus);
  
  public abstract void a(@NonNull R paramR);
  
  public final void b(@NonNull R paramR) {
    Status status = paramR.a();
    if (status.e()) {
      a(paramR);
      return;
    } 
    a(status);
    if (paramR instanceof cqe)
      try {
        ((cqe)paramR).b();
        return;
      } catch (RuntimeException runtimeException) {
        String str = String.valueOf(paramR);
        Log.w("ResultCallbacks", (new StringBuilder(String.valueOf(str).length() + 18)).append("Unable to release ").append(str).toString(), runtimeException);
        return;
      }  
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cqi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */