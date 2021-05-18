package org.simpleframework.xml.util;

import java.util.WeakHashMap;

class WeakCache$Segment extends WeakHashMap<Object, T> {
  private WeakCache$Segment() {}
  
  public void cache(Object paramObject, T paramT) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_1
    //   4: aload_2
    //   5: invokevirtual put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   8: pop
    //   9: aload_0
    //   10: monitorexit
    //   11: return
    //   12: astore_1
    //   13: aload_0
    //   14: monitorexit
    //   15: aload_1
    //   16: athrow
    // Exception table:
    //   from	to	target	type
    //   2	9	12	finally
  }
  
  public boolean contains(Object paramObject) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_1
    //   4: invokevirtual containsKey : (Ljava/lang/Object;)Z
    //   7: istore_2
    //   8: aload_0
    //   9: monitorexit
    //   10: iload_2
    //   11: ireturn
    //   12: astore_1
    //   13: aload_0
    //   14: monitorexit
    //   15: aload_1
    //   16: athrow
    // Exception table:
    //   from	to	target	type
    //   2	8	12	finally
  }
  
  public T fetch(Object paramObject) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_1
    //   4: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   7: astore_1
    //   8: aload_0
    //   9: monitorexit
    //   10: aload_1
    //   11: areturn
    //   12: astore_1
    //   13: aload_0
    //   14: monitorexit
    //   15: aload_1
    //   16: athrow
    // Exception table:
    //   from	to	target	type
    //   2	8	12	finally
  }
  
  public T take(Object paramObject) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_1
    //   4: invokevirtual remove : (Ljava/lang/Object;)Ljava/lang/Object;
    //   7: astore_1
    //   8: aload_0
    //   9: monitorexit
    //   10: aload_1
    //   11: areturn
    //   12: astore_1
    //   13: aload_0
    //   14: monitorexit
    //   15: aload_1
    //   16: athrow
    // Exception table:
    //   from	to	target	type
    //   2	8	12	finally
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xm\\util\WeakCache$Segment.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */