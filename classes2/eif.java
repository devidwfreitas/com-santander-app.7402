import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresPermission;
import android.support.annotation.Size;

public final class eif {
  private final dlv a;
  
  public eif(dlv paramdlv) {
    csp.a(paramdlv);
    this.a = paramdlv;
  }
  
  @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE", "android.permission.WAKE_LOCK"})
  public static eif a(Context paramContext) {
    return dlv.a(paramContext).n();
  }
  
  public egv<String> a() {
    return this.a.l().y();
  }
  
  public void a(long paramLong) {
    this.a.m().a(paramLong);
  }
  
  @MainThread
  public void a(@NonNull Activity paramActivity, @Nullable @Size(max = 36L, min = 1L) String paramString1, @Nullable @Size(max = 36L, min = 1L) String paramString2) {
    this.a.u().a(paramActivity, paramString1, paramString2);
  }
  
  public void a(String paramString) {
    this.a.m().a(paramString);
  }
  
  public void a(@NonNull @Size(max = 40L, min = 1L) String paramString, Bundle paramBundle) {
    this.a.m().a(paramString, paramBundle);
  }
  
  public void a(@NonNull @Size(max = 24L, min = 1L) String paramString1, @Nullable @Size(max = 36L) String paramString2) {
    this.a.m().a(paramString1, paramString2);
  }
  
  public void a(boolean paramBoolean) {
    this.a.m().a(paramBoolean);
  }
  
  public void b(long paramLong) {
    this.a.m().b(paramLong);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eif.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */