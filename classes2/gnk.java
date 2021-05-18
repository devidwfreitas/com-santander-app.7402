import android.os.Handler;
import android.os.Message;

class gnk extends Handler {
  private gnk() {}
  
  public void handleMessage(Message paramMessage) {
    gnj gnj = (gnj)paramMessage.obj;
    switch (paramMessage.what) {
      default:
        return;
      case 1:
        gne.c(gnj.a, gnj.b[0]);
        return;
      case 2:
        break;
    } 
    gnj.a.b(gnj.b);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gnk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */