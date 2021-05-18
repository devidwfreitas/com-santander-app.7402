import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;
import java.util.Iterator;

public abstract class cqw<T> implements cqx<T> {
  protected final DataHolder a;
  
  protected cqw(DataHolder paramDataHolder) {
    this.a = paramDataHolder;
  }
  
  public int a() {
    return (this.a == null) ? 0 : this.a.f();
  }
  
  public abstract T a(int paramInt);
  
  public void b() {
    if (this.a != null)
      this.a.close(); 
  }
  
  @Deprecated
  public boolean c() {
    return (this.a == null || this.a.g());
  }
  
  @Deprecated
  public final void close() {
    b();
  }
  
  public Bundle d() {
    return this.a.e();
  }
  
  public Iterator<T> e() {
    return new crn<T>(this);
  }
  
  public Iterator<T> iterator() {
    return new cri<T>(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cqw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */