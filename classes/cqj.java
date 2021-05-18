import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import com.google.android.gms.common.api.Status;

public abstract class cqj<R extends cqg, S extends cqg> {
  @NonNull
  public Status a(@NonNull Status paramStatus) {
    return paramStatus;
  }
  
  @Nullable
  @WorkerThread
  public abstract cpy<S> a(@NonNull R paramR);
  
  @NonNull
  public final cpy<S> b(@NonNull Status paramStatus) {
    return (cpy<S>)new ddy(paramStatus);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cqj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */