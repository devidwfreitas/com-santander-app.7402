import android.os.SystemClock;
import java.io.UnsupportedEncodingException;

class nlb implements Runnable {
  nlb(nla paramnla, String paramString, byte[] paramArrayOfbyte, boolean paramBoolean, int paramInt) {}
  
  public void run() {
    try {
      if ("GET".equals(this.a)) {
        nla.a(this.e, SystemClock.elapsedRealtime());
        nla.b(this.e, System.currentTimeMillis());
        nla.a(this.e).set(0);
        try {
          String str = new String(this.b, "UTF-8");
          if (this.c) {
            nla.a(this.e, str);
            return;
          } 
        } catch (UnsupportedEncodingException unsupportedEncodingException) {
          throw new RuntimeException(unsupportedEncodingException);
        } 
        nla.b(this.e, (String)unsupportedEncodingException);
        return;
      } 
    } catch (Throwable throwable) {
      nla.b(this.e).b(throwable);
      return;
    } 
    if ("HEAD".equals(this.a))
      nla.a(this.e, this.d); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nlb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */