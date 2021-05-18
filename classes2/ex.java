import java.io.Closeable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public class ex implements Closeable {
  private final Object a = new Object();
  
  private final List<ew> b = new ArrayList<ew>();
  
  private final ScheduledExecutorService c = es.b();
  
  private ScheduledFuture<?> d;
  
  private boolean e;
  
  private boolean f;
  
  private void a(long paramLong, TimeUnit paramTimeUnit) {
    if (paramLong < -1L)
      throw new IllegalArgumentException("Delay must be >= -1"); 
    if (paramLong == 0L) {
      c();
      return;
    } 
    synchronized (this.a) {
      if (this.e)
        return; 
    } 
    f();
    if (paramLong != -1L)
      this.d = this.c.schedule(new ey(this), paramLong, paramTimeUnit); 
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_4} */
  }
  
  private void a(List<ew> paramList) {
    Iterator<ew> iterator = paramList.iterator();
    while (iterator.hasNext())
      ((ew)iterator.next()).a(); 
  }
  
  private void e() {
    if (this.f)
      throw new IllegalStateException("Object already closed"); 
  }
  
  private void f() {
    if (this.d != null) {
      this.d.cancel(true);
      this.d = null;
    } 
  }
  
  ew a(Runnable paramRunnable) {
    synchronized (this.a) {
      e();
      ew ew = new ew(this, paramRunnable);
      if (this.e) {
        ew.a();
        return ew;
      } 
      this.b.add(ew);
      return ew;
    } 
  }
  
  public void a(long paramLong) {
    a(paramLong, TimeUnit.MILLISECONDS);
  }
  
  void a(ew paramew) {
    synchronized (this.a) {
      e();
      this.b.remove(paramew);
      return;
    } 
  }
  
  public boolean a() {
    synchronized (this.a) {
      e();
      return this.e;
    } 
  }
  
  public ev b() {
    synchronized (this.a) {
      e();
      return new ev(this);
    } 
  }
  
  public void c() {
    synchronized (this.a) {
      e();
      if (this.e)
        return; 
      f();
      this.e = true;
      ArrayList<ew> arrayList = new ArrayList<ew>(this.b);
      a(arrayList);
      return;
    } 
  }
  
  public void close() {
    synchronized (this.a) {
      if (this.f)
        return; 
      f();
      Iterator<ew> iterator = this.b.iterator();
      while (iterator.hasNext())
        ((ew)iterator.next()).close(); 
    } 
    this.b.clear();
    this.f = true;
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_1} */
  }
  
  void d() {
    synchronized (this.a) {
      e();
      if (this.e)
        throw new CancellationException(); 
    } 
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_1} */
  }
  
  public String toString() {
    return String.format(Locale.US, "%s@%s[cancellationRequested=%s]", new Object[] { getClass().getName(), Integer.toHexString(hashCode()), Boolean.toString(a()) });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ex.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */