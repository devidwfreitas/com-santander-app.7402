package org.apache.commons.io;

import java.io.File;
import java.lang.ref.ReferenceQueue;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;

public class FileCleaningTracker {
  final List<String> deleteFailures = Collections.synchronizedList(new ArrayList<String>());
  
  volatile boolean exitWhenFinished = false;
  
  ReferenceQueue<Object> q = new ReferenceQueue();
  
  Thread reaper;
  
  final Collection<FileCleaningTracker$Tracker> trackers = Collections.synchronizedSet(new HashSet<FileCleaningTracker$Tracker>());
  
  private void addTracker(String paramString, Object paramObject, FileDeleteStrategy paramFileDeleteStrategy) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield exitWhenFinished : Z
    //   6: ifeq -> 24
    //   9: new java/lang/IllegalStateException
    //   12: dup
    //   13: ldc 'No new trackers can be added once exitWhenFinished() is called'
    //   15: invokespecial <init> : (Ljava/lang/String;)V
    //   18: athrow
    //   19: astore_1
    //   20: aload_0
    //   21: monitorexit
    //   22: aload_1
    //   23: athrow
    //   24: aload_0
    //   25: getfield reaper : Ljava/lang/Thread;
    //   28: ifnonnull -> 50
    //   31: aload_0
    //   32: new org/apache/commons/io/FileCleaningTracker$Reaper
    //   35: dup
    //   36: aload_0
    //   37: invokespecial <init> : (Lorg/apache/commons/io/FileCleaningTracker;)V
    //   40: putfield reaper : Ljava/lang/Thread;
    //   43: aload_0
    //   44: getfield reaper : Ljava/lang/Thread;
    //   47: invokevirtual start : ()V
    //   50: aload_0
    //   51: getfield trackers : Ljava/util/Collection;
    //   54: new org/apache/commons/io/FileCleaningTracker$Tracker
    //   57: dup
    //   58: aload_1
    //   59: aload_3
    //   60: aload_2
    //   61: aload_0
    //   62: getfield q : Ljava/lang/ref/ReferenceQueue;
    //   65: invokespecial <init> : (Ljava/lang/String;Lorg/apache/commons/io/FileDeleteStrategy;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    //   68: invokeinterface add : (Ljava/lang/Object;)Z
    //   73: pop
    //   74: aload_0
    //   75: monitorexit
    //   76: return
    // Exception table:
    //   from	to	target	type
    //   2	19	19	finally
    //   24	50	19	finally
    //   50	74	19	finally
  }
  
  public void exitWhenFinished() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: iconst_1
    //   4: putfield exitWhenFinished : Z
    //   7: aload_0
    //   8: getfield reaper : Ljava/lang/Thread;
    //   11: ifnull -> 30
    //   14: aload_0
    //   15: getfield reaper : Ljava/lang/Thread;
    //   18: astore_1
    //   19: aload_1
    //   20: monitorenter
    //   21: aload_0
    //   22: getfield reaper : Ljava/lang/Thread;
    //   25: invokevirtual interrupt : ()V
    //   28: aload_1
    //   29: monitorexit
    //   30: aload_0
    //   31: monitorexit
    //   32: return
    //   33: astore_2
    //   34: aload_1
    //   35: monitorexit
    //   36: aload_2
    //   37: athrow
    //   38: astore_1
    //   39: aload_0
    //   40: monitorexit
    //   41: aload_1
    //   42: athrow
    // Exception table:
    //   from	to	target	type
    //   2	21	38	finally
    //   21	30	33	finally
    //   34	36	33	finally
    //   36	38	38	finally
  }
  
  public List<String> getDeleteFailures() {
    return this.deleteFailures;
  }
  
  public int getTrackCount() {
    return this.trackers.size();
  }
  
  public void track(File paramFile, Object paramObject) {
    track(paramFile, paramObject, (FileDeleteStrategy)null);
  }
  
  public void track(File paramFile, Object paramObject, FileDeleteStrategy paramFileDeleteStrategy) {
    if (paramFile == null)
      throw new NullPointerException("The file must not be null"); 
    addTracker(paramFile.getPath(), paramObject, paramFileDeleteStrategy);
  }
  
  public void track(String paramString, Object paramObject) {
    track(paramString, paramObject, (FileDeleteStrategy)null);
  }
  
  public void track(String paramString, Object paramObject, FileDeleteStrategy paramFileDeleteStrategy) {
    if (paramString == null)
      throw new NullPointerException("The path must not be null"); 
    addTracker(paramString, paramObject, paramFileDeleteStrategy);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\FileCleaningTracker.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */