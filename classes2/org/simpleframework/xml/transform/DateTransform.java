package org.simpleframework.xml.transform;

import java.util.Date;

class DateTransform<T extends Date> implements Transform<T> {
  private final DateFactory<T> factory;
  
  public DateTransform(Class<T> paramClass) {
    this.factory = new DateFactory<T>(paramClass);
  }
  
  public T read(String paramString) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: invokestatic getDate : (Ljava/lang/String;)Ljava/util/Date;
    //   6: invokevirtual getTime : ()J
    //   9: lstore_2
    //   10: aload_0
    //   11: getfield factory : Lorg/simpleframework/xml/transform/DateFactory;
    //   14: iconst_1
    //   15: anewarray java/lang/Object
    //   18: dup
    //   19: iconst_0
    //   20: lload_2
    //   21: invokestatic valueOf : (J)Ljava/lang/Long;
    //   24: aastore
    //   25: invokevirtual getInstance : ([Ljava/lang/Object;)Ljava/util/Date;
    //   28: astore_1
    //   29: aload_0
    //   30: monitorexit
    //   31: aload_1
    //   32: areturn
    //   33: astore_1
    //   34: aload_0
    //   35: monitorexit
    //   36: aload_1
    //   37: athrow
    // Exception table:
    //   from	to	target	type
    //   2	29	33	finally
  }
  
  public String write(T paramT) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: invokestatic getText : (Ljava/util/Date;)Ljava/lang/String;
    //   6: astore_1
    //   7: aload_0
    //   8: monitorexit
    //   9: aload_1
    //   10: areturn
    //   11: astore_1
    //   12: aload_0
    //   13: monitorexit
    //   14: aload_1
    //   15: athrow
    // Exception table:
    //   from	to	target	type
    //   2	7	11	finally
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\transform\DateTransform.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */