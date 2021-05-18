import android.os.Handler;
import android.os.Message;

class fdz implements Handler.Callback {
  fdz(fdy paramfdy) {}
  
  public boolean handleMessage(Message paramMessage) {
    if (paramMessage.what == fdy.a(this.a)) {
      fdy.b(this.a);
      return true;
    } 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fdz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */