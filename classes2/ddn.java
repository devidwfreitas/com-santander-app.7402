import android.os.Looper;
import android.os.Message;
import android.support.annotation.NonNull;

public final class ddn<L> {
  private final ddo a;
  
  private volatile L b;
  
  private final ddp<L> c;
  
  ddn(@NonNull Looper paramLooper, @NonNull L paramL, @NonNull String paramString) {
    this.a = new ddo(this, paramLooper);
    this.b = csp.a(paramL, "Listener must not be null");
    this.c = new ddp<L>(paramL, csp.a(paramString));
  }
  
  public void a(ddq<? super L> paramddq) {
    csp.a(paramddq, "Notifier must not be null");
    Message message = this.a.obtainMessage(1, paramddq);
    this.a.sendMessage(message);
  }
  
  public boolean a() {
    return (this.b != null);
  }
  
  public void b() {
    this.b = null;
  }
  
  void b(ddq<? super L> paramddq) {
    L l = this.b;
    if (l == null) {
      paramddq.a();
      return;
    } 
    try {
      paramddq.a(l);
      return;
    } catch (RuntimeException runtimeException) {
      paramddq.a();
      throw runtimeException;
    } 
  }
  
  @NonNull
  public ddp<L> c() {
    return this.c;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ddn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */