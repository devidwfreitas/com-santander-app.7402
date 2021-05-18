import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;

public class dhu extends ctv<div> {
  protected final djo<div> e = new dhv(this);
  
  private final String f;
  
  public dhu(Context paramContext, Looper paramLooper, cpv paramcpv, cpw paramcpw, String paramString, ctn paramctn) {
    super(paramContext, paramLooper, 23, paramctn, paramcpv, paramcpw);
    this.f = paramString;
  }
  
  protected div b(IBinder paramIBinder) {
    return diw.a(paramIBinder);
  }
  
  protected String i() {
    return "com.google.android.location.internal.GoogleLocationManagerService.START";
  }
  
  protected String j() {
    return "com.google.android.gms.location.internal.IGoogleLocationManagerService";
  }
  
  protected Bundle t() {
    Bundle bundle = new Bundle();
    bundle.putString("client_name", this.f);
    return bundle;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dhu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */