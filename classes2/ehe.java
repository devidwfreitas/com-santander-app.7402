import android.support.annotation.NonNull;
import java.util.concurrent.ExecutionException;

final class ehe implements ehd {
  private final Object a = new Object();
  
  private final int b;
  
  private final ehr<Void> c;
  
  private int d;
  
  private int e;
  
  private Exception f;
  
  public ehe(int paramInt, ehr<Void> paramehr) {
    this.b = paramInt;
    this.c = paramehr;
  }
  
  private void a() {
    if (this.d + this.e == this.b) {
      if (this.f == null) {
        this.c.a((Void)null);
        return;
      } 
    } else {
      return;
    } 
    ehr<Void> ehr1 = this.c;
    int i = this.e;
    int j = this.b;
    ehr1.a(new ExecutionException((new StringBuilder(54)).append(i).append(" out of ").append(j).append(" underlying tasks failed").toString(), this.f));
  }
  
  public void a(@NonNull Exception paramException) {
    synchronized (this.a) {
      this.e++;
      this.f = paramException;
      a();
      return;
    } 
  }
  
  public void a(Object paramObject) {
    synchronized (this.a) {
      this.d++;
      a();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ehe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */