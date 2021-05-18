package org.dom4j.tree;

import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.util.Map;
import org.dom4j.Namespace;

public class NamespaceCache {
  private static final String CONCURRENTREADERHASHMAP_CLASS = "EDU.oswego.cs.dl.util.concurrent.ConcurrentReaderHashMap";
  
  protected static Map cache;
  
  protected static Map noPrefixCache;
  
  static {
    try {
      Constructor<?> constructor = Class.forName("java.util.concurrent.ConcurrentHashMap").getConstructor(new Class[] { int.class, float.class, int.class });
      cache = (Map)constructor.newInstance(new Object[] { new Integer(11), new Float(0.75F), new Integer(1) });
      noPrefixCache = (Map)constructor.newInstance(new Object[] { new Integer(11), new Float(0.75F), new Integer(1) });
      return;
    } catch (Throwable throwable) {
      try {
        Class<?> clazz = Class.forName("EDU.oswego.cs.dl.util.concurrent.ConcurrentReaderHashMap");
        cache = (Map)clazz.newInstance();
        noPrefixCache = (Map)clazz.newInstance();
        return;
      } catch (Throwable throwable1) {
        cache = new ConcurrentReaderHashMap();
        noPrefixCache = new ConcurrentReaderHashMap();
        return;
      } 
    } 
  }
  
  protected Namespace createNamespace(String paramString1, String paramString2) {
    return new Namespace(paramString1, paramString2);
  }
  
  public Namespace get(String paramString) {
    WeakReference<Namespace> weakReference = (WeakReference)noPrefixCache.get(paramString);
    Namespace namespace = null;
    if (weakReference != null)
      namespace = weakReference.get(); 
    if (namespace == null)
      synchronized (noPrefixCache) {
        weakReference = (WeakReference<Namespace>)noPrefixCache.get(paramString);
        if (weakReference != null)
          namespace = weakReference.get(); 
        Namespace namespace1 = namespace;
        if (namespace == null) {
          namespace1 = createNamespace("", paramString);
          noPrefixCache.put(paramString, new WeakReference<Namespace>(namespace1));
        } 
        return namespace1;
      }  
    return namespace;
  }
  
  public Namespace get(String paramString1, String paramString2) {
    // Byte code:
    //   0: aload_0
    //   1: aload_2
    //   2: invokevirtual getURICache : (Ljava/lang/String;)Ljava/util/Map;
    //   5: astore #5
    //   7: aload #5
    //   9: aload_1
    //   10: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   15: checkcast java/lang/ref/WeakReference
    //   18: astore #4
    //   20: aconst_null
    //   21: astore_3
    //   22: aload #4
    //   24: ifnull -> 36
    //   27: aload #4
    //   29: invokevirtual get : ()Ljava/lang/Object;
    //   32: checkcast org/dom4j/Namespace
    //   35: astore_3
    //   36: aload_3
    //   37: ifnonnull -> 118
    //   40: aload #5
    //   42: monitorenter
    //   43: aload #5
    //   45: aload_1
    //   46: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   51: checkcast java/lang/ref/WeakReference
    //   54: astore #4
    //   56: aload #4
    //   58: ifnull -> 115
    //   61: aload #4
    //   63: invokevirtual get : ()Ljava/lang/Object;
    //   66: checkcast org/dom4j/Namespace
    //   69: astore_3
    //   70: aload_3
    //   71: astore #4
    //   73: aload_3
    //   74: ifnonnull -> 103
    //   77: aload_0
    //   78: aload_1
    //   79: aload_2
    //   80: invokevirtual createNamespace : (Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;
    //   83: astore #4
    //   85: aload #5
    //   87: aload_1
    //   88: new java/lang/ref/WeakReference
    //   91: dup
    //   92: aload #4
    //   94: invokespecial <init> : (Ljava/lang/Object;)V
    //   97: invokeinterface put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   102: pop
    //   103: aload #5
    //   105: monitorexit
    //   106: aload #4
    //   108: areturn
    //   109: astore_1
    //   110: aload #5
    //   112: monitorexit
    //   113: aload_1
    //   114: athrow
    //   115: goto -> 70
    //   118: aload_3
    //   119: areturn
    // Exception table:
    //   from	to	target	type
    //   43	56	109	finally
    //   61	70	109	finally
    //   77	103	109	finally
    //   103	106	109	finally
    //   110	113	109	finally
  }
  
  protected Map getURICache(String paramString) {
    Map map = (Map)cache.get(paramString);
    if (map == null)
      synchronized (cache) {
        Map map1 = (Map)cache.get(paramString);
        map = map1;
        if (map1 == null) {
          map = new ConcurrentReaderHashMap();
          cache.put(paramString, map);
        } 
        return map;
      }  
    return map;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\tree\NamespaceCache.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */