import android.graphics.Bitmap;
import android.os.RemoteException;

public final class edn {
  public static final float a = 0.0F;
  
  public static final float b = 30.0F;
  
  public static final float c = 60.0F;
  
  public static final float d = 120.0F;
  
  public static final float e = 180.0F;
  
  public static final float f = 210.0F;
  
  public static final float g = 240.0F;
  
  public static final float h = 270.0F;
  
  public static final float i = 300.0F;
  
  public static final float j = 330.0F;
  
  private static eej k;
  
  public static edm a() {
    try {
      return new edm(b().a());
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public static edm a(float paramFloat) {
    try {
      return new edm(b().a(paramFloat));
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public static edm a(int paramInt) {
    try {
      return new edm(b().a(paramInt));
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public static edm a(Bitmap paramBitmap) {
    try {
      return new edm(b().a(paramBitmap));
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public static edm a(String paramString) {
    try {
      return new edm(b().a(paramString));
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public static void a(eej parameej) {
    if (k != null)
      return; 
    k = csp.<eej>a(parameej);
  }
  
  public static edm b(String paramString) {
    try {
      return new edm(b().b(paramString));
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  private static eej b() {
    return csp.<eej>a(k, "IBitmapDescriptorFactory is not initialized");
  }
  
  public static edm c(String paramString) {
    try {
      return new edm(b().c(paramString));
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\edn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */