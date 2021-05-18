import android.support.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;

public class csy {
  @NonNull
  public static cql a(@NonNull ConnectionResult paramConnectionResult) {
    return a(new Status(paramConnectionResult.c(), paramConnectionResult.e(), paramConnectionResult.d()));
  }
  
  @NonNull
  public static cql a(@NonNull Status paramStatus) {
    return (cql)(paramStatus.d() ? new cqr(paramStatus) : new cql(paramStatus));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\csy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */