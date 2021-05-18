import android.support.annotation.NonNull;
import com.google.android.gms.common.api.Status;

public class cql extends Exception {
  protected final Status a;
  
  public cql(@NonNull Status paramStatus) {
    super(paramStatus.c());
    this.a = paramStatus;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cql.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */