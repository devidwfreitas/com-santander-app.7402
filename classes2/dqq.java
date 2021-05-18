import android.database.ContentObserver;
import android.os.Handler;

final class dqq extends ContentObserver {
  dqq(Handler paramHandler) {
    super(paramHandler);
  }
  
  public void onChange(boolean paramBoolean) {
    dqp.a().set(true);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dqq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */