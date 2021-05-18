import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

final class nff {
  private static final ConcurrentMap<Class<?>, Map<Class<?>, Method>> a = new ConcurrentHashMap<Class<?>, Map<Class<?>, Method>>();
  
  private static final ConcurrentMap<Class<?>, Map<Class<?>, Set<Method>>> b = new ConcurrentHashMap<Class<?>, Map<Class<?>, Set<Method>>>();
  
  static Map<Class<?>, nfm> a(Object paramObject) {
    Class<?> clazz = paramObject.getClass();
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    Map<Object, Object> map2 = (Map)a.get(clazz);
    Map<Object, Object> map1 = map2;
    if (map2 == null) {
      map1 = new HashMap<Object, Object>();
      a(clazz, (Map)map1);
    } 
    if (!map1.isEmpty())
      for (Map.Entry<Object, Object> entry : map1.entrySet()) {
        nfm nfm = new nfm(paramObject, (Method)entry.getValue());
        hashMap.put(entry.getKey(), nfm);
      }  
    return (Map)hashMap;
  }
  
  private static void a(Class<?> paramClass, Map<Class<?>, Method> paramMap) {
    a(paramClass, paramMap, new HashMap<Class<?>, Set<Method>>());
  }
  
  private static void a(Class<?> paramClass, Map<Class<?>, Method> paramMap, Map<Class<?>, Set<Method>> paramMap1) {
    for (Method method : paramClass.getDeclaredMethods()) {
      if (!method.isBridge())
        if (method.isAnnotationPresent((Class)nfq.class)) {
          Class[] arrayOfClass = method.getParameterTypes();
          if (arrayOfClass.length != 1)
            throw new IllegalArgumentException("Method " + method + " has @Subscribe annotation but requires " + arrayOfClass.length + " arguments.  Methods must require a single argument."); 
          Class<?> clazz = arrayOfClass[0];
          if (clazz.isInterface())
            throw new IllegalArgumentException("Method " + method + " has @Subscribe annotation on " + clazz + " which is an interface.  Subscription must be on a concrete class type."); 
          if ((method.getModifiers() & 0x1) == 0)
            throw new IllegalArgumentException("Method " + method + " has @Subscribe annotation on " + clazz + " but is not 'public'."); 
          Set<Method> set2 = paramMap1.get(clazz);
          Set<Method> set1 = set2;
          if (set2 == null) {
            set1 = new HashSet();
            paramMap1.put(clazz, set1);
          } 
          set1.add(method);
        } else if (method.isAnnotationPresent((Class)nfp.class)) {
          Class[] arrayOfClass = method.getParameterTypes();
          if (arrayOfClass.length != 0)
            throw new IllegalArgumentException("Method " + method + "has @Produce annotation but requires " + arrayOfClass.length + " arguments.  Methods must require zero arguments."); 
          if (method.getReturnType() == Void.class)
            throw new IllegalArgumentException("Method " + method + " has a return type of void.  Must declare a non-void type."); 
          Class<?> clazz = method.getReturnType();
          if (clazz.isInterface())
            throw new IllegalArgumentException("Method " + method + " has @Produce annotation on " + clazz + " which is an interface.  Producers must return a concrete class type."); 
          if (clazz.equals(void.class))
            throw new IllegalArgumentException("Method " + method + " has @Produce annotation but has no return type."); 
          if ((method.getModifiers() & 0x1) == 0)
            throw new IllegalArgumentException("Method " + method + " has @Produce annotation on " + clazz + " but is not 'public'."); 
          if (paramMap.containsKey(clazz))
            throw new IllegalArgumentException("Producer for type " + clazz + " has already been registered."); 
          paramMap.put(clazz, method);
        }  
    } 
    a.put(paramClass, paramMap);
    b.put(paramClass, paramMap1);
  }
  
  static Map<Class<?>, Set<nfl>> b(Object paramObject) {
    Class<?> clazz = paramObject.getClass();
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    Map<Object, Object> map2 = (Map)b.get(clazz);
    Map<Object, Object> map1 = map2;
    if (map2 == null) {
      map1 = new HashMap<Object, Object>();
      b(clazz, (Map)map1);
    } 
    if (!map1.isEmpty())
      for (Map.Entry<Object, Object> entry : map1.entrySet()) {
        HashSet<nfl> hashSet = new HashSet();
        Iterator<Method> iterator = ((Set)entry.getValue()).iterator();
        while (iterator.hasNext())
          hashSet.add(new nfl(paramObject, iterator.next())); 
        hashMap.put(entry.getKey(), hashSet);
      }  
    return (Map)hashMap;
  }
  
  private static void b(Class<?> paramClass, Map<Class<?>, Set<Method>> paramMap) {
    a(paramClass, new HashMap<Class<?>, Method>(), paramMap);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nff.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */