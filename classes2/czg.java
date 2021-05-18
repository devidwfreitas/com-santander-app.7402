import android.os.Bundle;
import com.google.android.gms.gcm.OneoffTask;
import com.google.android.gms.gcm.Task;

public class czg extends czk {
  private long i = -1L;
  
  private long j = -1L;
  
  public czg a(int paramInt) {
    this.a = paramInt;
    return this;
  }
  
  public czg a(long paramLong1, long paramLong2) {
    this.i = paramLong1;
    this.j = paramLong2;
    return this;
  }
  
  public czg a(Bundle paramBundle) {
    this.h = paramBundle;
    return this;
  }
  
  public czg a(Class<? extends cza> paramClass) {
    this.b = paramClass.getName();
    return this;
  }
  
  public czg a(String paramString) {
    this.c = paramString;
    return this;
  }
  
  public czg a(boolean paramBoolean) {
    this.f = paramBoolean;
    return this;
  }
  
  protected void a() {
    super.a();
    if (this.i == -1L || this.j == -1L)
      throw new IllegalArgumentException("Must specify an execution window using setExecutionWindow."); 
    if (this.i >= this.j)
      throw new IllegalArgumentException("Window start must be shorter than window end."); 
  }
  
  public OneoffTask b() {
    a();
    return new OneoffTask(this, null);
  }
  
  public czg b(boolean paramBoolean) {
    this.e = paramBoolean;
    return this;
  }
  
  public czg c(boolean paramBoolean) {
    this.d = paramBoolean;
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\czg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */