import java.lang.reflect.InvocationTargetException;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.CopyOnWriteArraySet;

public class nfg {
  public static final String a = "default";
  
  private final ConcurrentMap<Class<?>, Set<nfl>> b = new ConcurrentHashMap<Class<?>, Set<nfl>>();
  
  private final ConcurrentMap<Class<?>, nfm> c = new ConcurrentHashMap<Class<?>, nfm>();
  
  private final String d;
  
  private final nfr e;
  
  private final nfn f;
  
  private final ThreadLocal<ConcurrentLinkedQueue<nfj>> g = new nfh(this);
  
  private final ThreadLocal<Boolean> h = new nfi(this);
  
  private final ConcurrentMap<Class<?>, Set<Class<?>>> i = new ConcurrentHashMap<Class<?>, Set<Class<?>>>();
  
  public nfg() {
    this("default");
  }
  
  public nfg(String paramString) {
    this(nfr.b, paramString);
  }
  
  public nfg(nfr paramnfr) {
    this(paramnfr, "default");
  }
  
  public nfg(nfr paramnfr, String paramString) {
    this(paramnfr, paramString, nfn.a);
  }
  
  nfg(nfr paramnfr, String paramString, nfn paramnfn) {
    this.e = paramnfr;
    this.d = paramString;
    this.f = paramnfn;
  }
  
  private static void a(String paramString, InvocationTargetException paramInvocationTargetException) {
    Throwable throwable = paramInvocationTargetException.getCause();
    if (throwable != null)
      throw new RuntimeException(paramString + ": " + throwable.getMessage(), throwable); 
    throw new RuntimeException(paramString + ": " + paramInvocationTargetException.getMessage(), paramInvocationTargetException);
  }
  
  private void a(nfl paramnfl, nfm paramnfm) {
    Object object;
    Object object1 = null;
    try {
      Object object2 = paramnfm.c();
      object = object2;
      if (object == null)
        return; 
    } catch (InvocationTargetException invocationTargetException) {
      a("Producer " + object + " threw an exception.", invocationTargetException);
      object = object1;
      if (object == null)
        return; 
    } 
    b(object, paramnfl);
  }
  
  private Set<Class<?>> d(Class<?> paramClass) {
    LinkedList<Class<?>> linkedList = new LinkedList();
    HashSet<Class<?>> hashSet = new HashSet();
    linkedList.add(paramClass);
    while (!linkedList.isEmpty()) {
      paramClass = linkedList.remove(0);
      hashSet.add(paramClass);
      paramClass = paramClass.getSuperclass();
      if (paramClass != null)
        linkedList.add(paramClass); 
    } 
    return hashSet;
  }
  
  nfm a(Class<?> paramClass) {
    return this.c.get(paramClass);
  }
  
  protected void a() {
    if (((Boolean)this.h.get()).booleanValue())
      return; 
    this.h.set(Boolean.valueOf(true));
    try {
      while (true) {
        nfj nfj = ((ConcurrentLinkedQueue<nfj>)this.g.get()).poll();
        if (nfj == null)
          return; 
        if (nfj.b.a())
          b(nfj.a, nfj.b); 
      } 
    } finally {
      this.h.set(Boolean.valueOf(false));
    } 
  }
  
  public void a(Object paramObject) {
    if (paramObject == null)
      throw new NullPointerException("Event to post must not be null."); 
    this.e.a(this);
    Iterator<Class<?>> iterator = c(paramObject.getClass()).iterator();
    boolean bool;
    for (bool = false; iterator.hasNext(); bool = bool1) {
      Set<nfl> set = b(iterator.next());
      boolean bool1 = bool;
      if (set != null) {
        bool1 = bool;
        if (!set.isEmpty()) {
          bool = true;
          Iterator<nfl> iterator1 = set.iterator();
          while (true) {
            bool1 = bool;
            if (iterator1.hasNext()) {
              a(paramObject, iterator1.next());
              continue;
            } 
            break;
          } 
        } 
      } 
    } 
    if (!bool && !(paramObject instanceof nfk))
      a(new nfk(this, paramObject)); 
    a();
  }
  
  protected void a(Object paramObject, nfl paramnfl) {
    ((ConcurrentLinkedQueue<nfj>)this.g.get()).offer(new nfj(paramObject, paramnfl));
  }
  
  Set<nfl> b(Class<?> paramClass) {
    return this.b.get(paramClass);
  }
  
  public void b(Object<nfl> paramObject) {
    if (paramObject == null)
      throw new NullPointerException("Object to register must not be null."); 
    this.e.a(this);
    Map<Class<?>, nfm> map = this.f.a(paramObject);
    for (Class<?> clazz : map.keySet()) {
      nfm nfm1 = map.get(clazz);
      nfm nfm2 = this.c.putIfAbsent(clazz, nfm1);
      if (nfm2 != null)
        throw new IllegalArgumentException("Producer method for type " + clazz + " found on type " + nfm1.a.getClass() + ", but already registered by type " + nfm2.a.getClass() + "."); 
      Set set = this.b.get(clazz);
      if (set != null && !set.isEmpty()) {
        Iterator<nfl> iterator = set.iterator();
        while (iterator.hasNext())
          a(iterator.next(), nfm1); 
      } 
    } 
    Map<Class<?>, Set<nfl>> map1 = this.f.b(paramObject);
    for (Class<?> clazz : map1.keySet()) {
      Set<nfl> set1;
      Set<nfl> set2 = this.b.get(clazz);
      paramObject = (Object<nfl>)set2;
      if (set2 == null) {
        set2 = new CopyOnWriteArraySet();
        Set set = this.b.putIfAbsent(clazz, set2);
        paramObject = (Object<nfl>)set;
        if (set == null)
          set1 = set2; 
      } 
      if (!set1.addAll(map1.get(clazz)))
        throw new IllegalArgumentException("Object already registered."); 
    } 
    paramObject = (Object<nfl>)map1.entrySet().iterator();
    while (paramObject.hasNext()) {
      Map.Entry entry = (Map.Entry)paramObject.next();
      Class clazz = (Class)entry.getKey();
      nfm nfm = this.c.get(clazz);
      if (nfm != null && nfm.a())
        for (nfl nfl : entry.getValue()) {
          if (nfm.a())
            if (nfl.a())
              a(nfl, nfm);  
        }  
    } 
  }
  
  protected void b(Object paramObject, nfl paramnfl) {
    try {
      paramnfl.a(paramObject);
      return;
    } catch (InvocationTargetException invocationTargetException) {
      a("Could not dispatch event: " + paramObject.getClass() + " to handler " + paramnfl, invocationTargetException);
      return;
    } 
  }
  
  Set<Class<?>> c(Class<?> paramClass) {
    Set<Class<?>> set2 = this.i.get(paramClass);
    Set<Class<?>> set1 = set2;
    if (set2 == null) {
      set2 = d(paramClass);
      Set<Class<?>> set = this.i.putIfAbsent(paramClass, set2);
      set1 = set;
      if (set == null)
        set1 = set2; 
    } 
    return set1;
  }
  
  public void c(Object paramObject) {
    if (paramObject == null)
      throw new NullPointerException("Object to unregister must not be null."); 
    this.e.a(this);
    for (Map.Entry<Class<?>, nfm> entry : this.f.a(paramObject).entrySet()) {
      Class<?> clazz = (Class)entry.getKey();
      nfm nfm1 = a(clazz);
      nfm nfm2 = (nfm)entry.getValue();
      if (nfm2 == null || !nfm2.equals(nfm1))
        throw new IllegalArgumentException("Missing event producer for an annotated method. Is " + paramObject.getClass() + " registered?"); 
      ((nfm)this.c.remove(clazz)).b();
    } 
    for (Map.Entry<Class<?>, Set<nfl>> entry : this.f.b(paramObject).entrySet()) {
      Set<nfl> set = b((Class)entry.getKey());
      Collection<?> collection = (Collection)entry.getValue();
      if (set == null || !set.containsAll(collection))
        throw new IllegalArgumentException("Missing event handler for an annotated method. Is " + paramObject.getClass() + " registered?"); 
      for (nfl nfl : set) {
        if (collection.contains(nfl))
          nfl.b(); 
      } 
      set.removeAll(collection);
    } 
  }
  
  public String toString() {
    return "[Bus \"" + this.d + "\"]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nfg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */