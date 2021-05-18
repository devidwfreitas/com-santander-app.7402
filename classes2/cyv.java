import android.content.Context;
import android.content.SharedPreferences;
import java.util.concurrent.Callable;

final class cyv implements Callable<SharedPreferences> {
  cyv(Context paramContext) {}
  
  public SharedPreferences a() {
    return this.a.getSharedPreferences("google_sdk_flags", 1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cyv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */