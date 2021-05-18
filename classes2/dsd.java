import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

public class dsd {
  private AtomicInteger a = new AtomicInteger();
  
  private final Map<String, Queue<dsa<?>>> b = new HashMap<String, Queue<dsa<?>>>();
  
  private final Set<dsa<?>> c = new HashSet<dsa<?>>();
  
  private final PriorityBlockingQueue<dsa<?>> d = new PriorityBlockingQueue<dsa<?>>();
  
  private final PriorityBlockingQueue<dsa<?>> e = new PriorityBlockingQueue<dsa<?>>();
  
  private final dpr f;
  
  private final drv g;
  
  private final dsh h;
  
  private drw[] i;
  
  private drl j;
  
  private List<Object> k = new ArrayList();
  
  public dsd(dpr paramdpr, drv paramdrv) {
    this(paramdpr, paramdrv, 4);
  }
  
  public dsd(dpr paramdpr, drv paramdrv, int paramInt) {
    this(paramdpr, paramdrv, paramInt, new drs(new Handler(Looper.getMainLooper())));
  }
  
  public dsd(dpr paramdpr, drv paramdrv, int paramInt, dsh paramdsh) {
    this.f = paramdpr;
    this.g = paramdrv;
    this.i = new drw[paramInt];
    this.h = paramdsh;
  }
  
  public <T> dsa<T> a(dsa<T> paramdsa) {
    String str;
    paramdsa.a(this);
    synchronized (this.c) {
      this.c.add(paramdsa);
      paramdsa.a(c());
      paramdsa.b("add-to-queue");
      if (!paramdsa.l()) {
        this.e.add(paramdsa);
        return paramdsa;
      } 
    } 
    synchronized (this.b) {
      str = paramdsa.d();
      if (this.b.containsKey(str)) {
        Queue<dsa<T>> queue2 = (Queue)this.b.get(str);
        Queue<dsa<T>> queue1 = queue2;
        if (queue2 == null)
          queue1 = new LinkedList(); 
        queue1.add(paramdsa);
        this.b.put(str, queue1);
        if (dsm.b)
          dsm.a("Request for cacheKey=%s is in flight, putting on hold.", new Object[] { str }); 
        return paramdsa;
      } 
    } 
    this.b.put(str, null);
    this.d.add(paramdsa);
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_4} */
    return paramdsa;
  }
  
  public void a() {
    b();
    this.j = new drl(this.d, this.e, this.f, this.h);
    this.j.start();
    for (int i = 0; i < this.i.length; i++) {
      drw drw1 = new drw(this.e, this.g, this.f, this.h);
      this.i[i] = drw1;
      drw1.start();
    } 
  }
  
  public void b() {
    if (this.j != null)
      this.j.a(); 
    for (int i = 0; i < this.i.length; i++) {
      if (this.i[i] != null)
        this.i[i].a(); 
    } 
  }
  
  <T> void b(dsa<T> paramdsa) {
    synchronized (this.c) {
      this.c.remove(paramdsa);
      synchronized (this.k) {
        Iterator iterator = this.k.iterator();
        while (iterator.hasNext())
          iterator.next(); 
      } 
    } 
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_2} */
    if (paramdsa.l())
      synchronized (this.b) {
        String str = paramdsa.d();
        Queue<? extends dsa<?>> queue = this.b.remove(str);
        if (queue != null) {
          if (dsm.b)
            dsm.a("Releasing %d waiting requests for cacheKey=%s.", new Object[] { Integer.valueOf(queue.size()), str }); 
          this.d.addAll(queue);
        } 
        return;
      }  
  }
  
  public int c() {
    return this.a.incrementAndGet();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dsd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */