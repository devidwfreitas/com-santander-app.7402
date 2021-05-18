import android.os.Bundle;
import com.google.android.gms.gcm.PeriodicTask;
import com.google.android.gms.gcm.Task;

public class czj extends czk {
  private long i = -1L;
  
  private long j = -1L;
  
  public czj a(int paramInt) {
    this.a = paramInt;
    return this;
  }
  
  public czj a(long paramLong) {
    this.i = paramLong;
    return this;
  }
  
  public czj a(Bundle paramBundle) {
    this.h = paramBundle;
    return this;
  }
  
  public czj a(Class<? extends cza> paramClass) {
    this.b = paramClass.getName();
    return this;
  }
  
  public czj a(String paramString) {
    this.c = paramString;
    return this;
  }
  
  public czj a(boolean paramBoolean) {
    this.f = paramBoolean;
    return this;
  }
  
  protected void a() {
    super.a();
    if (this.i == -1L)
      throw new IllegalArgumentException("Must call setPeriod(long) to establish an execution interval for this periodic task."); 
    if (this.i <= 0L) {
      long l = this.i;
      throw new IllegalArgumentException((new StringBuilder(66)).append("Period set cannot be less than or equal to 0: ").append(l).toString());
    } 
    if (this.j == -1L) {
      this.j = (long)((float)this.i * 0.1F);
      return;
    } 
    if (this.j > this.i) {
      this.j = this.i;
      return;
    } 
  }
  
  public PeriodicTask b() {
    a();
    return new PeriodicTask(this, null);
  }
  
  public czj b(long paramLong) {
    this.j = paramLong;
    return this;
  }
  
  public czj b(boolean paramBoolean) {
    this.e = paramBoolean;
    return this;
  }
  
  public czj c(boolean paramBoolean) {
    this.d = paramBoolean;
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\czj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */