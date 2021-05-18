import android.content.ComponentCallbacks2;
import android.content.res.Configuration;

public final class crs implements ComponentCallbacks2 {
  private final crp a;
  
  public crs(crp paramcrp) {
    this.a = paramcrp;
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration) {}
  
  public void onLowMemory() {
    this.a.evictAll();
  }
  
  public void onTrimMemory(int paramInt) {
    if (paramInt >= 60) {
      this.a.evictAll();
      return;
    } 
    if (paramInt >= 20) {
      this.a.trimToSize(this.a.size() / 2);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\crs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */