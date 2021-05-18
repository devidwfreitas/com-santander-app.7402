package org.apache.commons.io;

import java.io.File;

@Deprecated
public class FileCleaner {
  static final FileCleaningTracker theInstance = new FileCleaningTracker();
  
  @Deprecated
  public static void exitWhenFinished() {
    // Byte code:
    //   0: ldc org/apache/commons/io/FileCleaner
    //   2: monitorenter
    //   3: getstatic org/apache/commons/io/FileCleaner.theInstance : Lorg/apache/commons/io/FileCleaningTracker;
    //   6: invokevirtual exitWhenFinished : ()V
    //   9: ldc org/apache/commons/io/FileCleaner
    //   11: monitorexit
    //   12: return
    //   13: astore_0
    //   14: ldc org/apache/commons/io/FileCleaner
    //   16: monitorexit
    //   17: aload_0
    //   18: athrow
    // Exception table:
    //   from	to	target	type
    //   3	9	13	finally
  }
  
  public static FileCleaningTracker getInstance() {
    return theInstance;
  }
  
  @Deprecated
  public static int getTrackCount() {
    return theInstance.getTrackCount();
  }
  
  @Deprecated
  public static void track(File paramFile, Object paramObject) {
    theInstance.track(paramFile, paramObject);
  }
  
  @Deprecated
  public static void track(File paramFile, Object paramObject, FileDeleteStrategy paramFileDeleteStrategy) {
    theInstance.track(paramFile, paramObject, paramFileDeleteStrategy);
  }
  
  @Deprecated
  public static void track(String paramString, Object paramObject) {
    theInstance.track(paramString, paramObject);
  }
  
  @Deprecated
  public static void track(String paramString, Object paramObject, FileDeleteStrategy paramFileDeleteStrategy) {
    theInstance.track(paramString, paramObject, paramFileDeleteStrategy);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\org\apache\commons\io\FileCleaner.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */