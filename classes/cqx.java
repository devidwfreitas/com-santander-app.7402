import android.os.Bundle;
import java.util.Iterator;

public interface cqx<T> extends cqe, Iterable<T> {
  int a();
  
  T a(int paramInt);
  
  void b();
  
  @Deprecated
  boolean c();
  
  @Deprecated
  void close();
  
  Bundle d();
  
  Iterator<T> e();
  
  Iterator<T> iterator();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cqx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */