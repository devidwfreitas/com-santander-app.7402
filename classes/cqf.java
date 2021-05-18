import android.app.Activity;
import android.content.IntentSender;
import android.support.annotation.NonNull;
import android.util.Log;
import com.google.android.gms.common.api.Status;

public abstract class cqf<R extends cqg> extends cqi<R> {
  private final Activity a;
  
  private final int b;
  
  protected cqf(@NonNull Activity paramActivity, int paramInt) {
    this.a = (Activity)csp.a(paramActivity, "Activity must not be null");
    this.b = paramInt;
  }
  
  public final void a(@NonNull Status paramStatus) {
    if (paramStatus.d())
      try {
        paramStatus.a(this.a, this.b);
        return;
      } catch (android.content.IntentSender.SendIntentException sendIntentException) {
        Log.e("ResolvingResultCallback", "Failed to start resolution", (Throwable)sendIntentException);
        b(new Status(8));
        return;
      }  
    b((Status)sendIntentException);
  }
  
  public abstract void a(@NonNull R paramR);
  
  public abstract void b(@NonNull Status paramStatus);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cqf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */