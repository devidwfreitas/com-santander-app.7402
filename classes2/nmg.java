import java.lang.annotation.Annotation;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

@nlv
public final class nmg implements nna {
  private final Class<? extends Annotation> a;
  
  private final Queue<WeakReference<nmf<?>>> b = new ConcurrentLinkedQueue<WeakReference<nmf<?>>>();
  
  public nmg(Class<? extends Annotation> paramClass) {
    this.a = nmd.<Class<? extends Annotation>>a(paramClass);
  }
  
  private void a(nmi paramnmi) {
    Iterator<WeakReference<nmf<?>>> iterator = this.b.iterator();
    while (iterator.hasNext()) {
      nmf<?> nmf = ((WeakReference<nmf>)iterator.next()).get();
      if (nmf == null) {
        iterator.remove();
        continue;
      } 
      paramnmi.execute(nmf);
    } 
  }
  
  public Class<? extends Annotation> a() {
    return this.a;
  }
  
  public void a(nmf<?> paramnmf) {
    this.b.add(new WeakReference<nmf<?>>(paramnmf));
  }
  
  public void b() {
    a(nmi.RELEASE);
  }
  
  public void c() {
    a(nmi.RESTORE);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nmg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */