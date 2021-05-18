import android.os.Looper;

final class nft implements nfr {
  public void a(nfg paramnfg) {
    if (Looper.myLooper() != Looper.getMainLooper())
      throw new IllegalStateException("Event bus " + paramnfg + " accessed from non-main thread " + Looper.myLooper()); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nft.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */