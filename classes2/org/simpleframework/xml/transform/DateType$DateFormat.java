package org.simpleframework.xml.transform;

import java.text.SimpleDateFormat;
import java.util.Date;

class DateType$DateFormat {
  private SimpleDateFormat format;
  
  public DateType$DateFormat(String paramString) {
    this.format = new SimpleDateFormat(paramString);
  }
  
  public Date getDate(String paramString) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield format : Ljava/text/SimpleDateFormat;
    //   6: aload_1
    //   7: invokevirtual parse : (Ljava/lang/String;)Ljava/util/Date;
    //   10: astore_1
    //   11: aload_0
    //   12: monitorexit
    //   13: aload_1
    //   14: areturn
    //   15: astore_1
    //   16: aload_0
    //   17: monitorexit
    //   18: aload_1
    //   19: athrow
    // Exception table:
    //   from	to	target	type
    //   2	11	15	finally
  }
  
  public String getText(Date paramDate) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield format : Ljava/text/SimpleDateFormat;
    //   6: aload_1
    //   7: invokevirtual format : (Ljava/util/Date;)Ljava/lang/String;
    //   10: astore_1
    //   11: aload_0
    //   12: monitorexit
    //   13: aload_1
    //   14: areturn
    //   15: astore_1
    //   16: aload_0
    //   17: monitorexit
    //   18: aload_1
    //   19: athrow
    // Exception table:
    //   from	to	target	type
    //   2	11	15	finally
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\transform\DateType$DateFormat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */