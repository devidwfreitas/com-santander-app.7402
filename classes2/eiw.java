import android.content.Intent;
import android.os.ConditionVariable;
import android.util.Log;
import java.io.IOException;

class eiw implements eix {
  private final ConditionVariable a = new ConditionVariable();
  
  private Intent b;
  
  private String c;
  
  private eiw() {}
  
  public Intent a() {
    if (!this.a.block(30000L)) {
      Log.w("InstanceID/Rpc", "No response");
      throw new IOException("TIMEOUT");
    } 
    if (this.c != null)
      throw new IOException(this.c); 
    return this.b;
  }
  
  public void a(Intent paramIntent) {
    this.b = paramIntent;
    this.a.open();
  }
  
  public void a(String paramString) {
    this.c = paramString;
    this.a.open();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eiw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */