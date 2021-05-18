import android.net.nsd.NsdManager;
import android.net.nsd.NsdServiceInfo;

final class bmp implements NsdManager.RegistrationListener {
  bmp(String paramString1, String paramString2) {}
  
  public void onRegistrationFailed(NsdServiceInfo paramNsdServiceInfo, int paramInt) {
    bmo.b(this.b);
  }
  
  public void onServiceRegistered(NsdServiceInfo paramNsdServiceInfo) {
    if (!this.a.equals(paramNsdServiceInfo.getServiceName()))
      bmo.b(this.b); 
  }
  
  public void onServiceUnregistered(NsdServiceInfo paramNsdServiceInfo) {}
  
  public void onUnregistrationFailed(NsdServiceInfo paramNsdServiceInfo, int paramInt) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bmp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */