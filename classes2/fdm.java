import android.os.Handler;
import android.os.Message;

class fdm implements Handler.Callback {
  fdm(fdl paramfdl) {}
  
  public boolean handleMessage(Message paramMessage) {
    if (paramMessage.what == erz.zxing_decode) {
      fdl.a(this.a, (fdv)paramMessage.obj);
      return true;
    } 
    if (paramMessage.what == erz.zxing_preview_failed)
      fdl.a(this.a); 
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fdm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */