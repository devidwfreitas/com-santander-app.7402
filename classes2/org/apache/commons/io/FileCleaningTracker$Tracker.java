package org.apache.commons.io;

import java.io.File;
import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;

final class FileCleaningTracker$Tracker extends PhantomReference<Object> {
  private final FileDeleteStrategy deleteStrategy;
  
  private final String path;
  
  FileCleaningTracker$Tracker(String paramString, FileDeleteStrategy paramFileDeleteStrategy, Object paramObject, ReferenceQueue<? super Object> paramReferenceQueue) {
    super(paramObject, paramReferenceQueue);
    this.path = paramString;
    FileDeleteStrategy fileDeleteStrategy = paramFileDeleteStrategy;
    if (paramFileDeleteStrategy == null)
      fileDeleteStrategy = FileDeleteStrategy.NORMAL; 
    this.deleteStrategy = fileDeleteStrategy;
  }
  
  public boolean delete() {
    return this.deleteStrategy.deleteQuietly(new File(this.path));
  }
  
  public String getPath() {
    return this.path;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\FileCleaningTracker$Tracker.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */