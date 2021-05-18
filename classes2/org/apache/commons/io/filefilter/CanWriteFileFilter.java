package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;

public class CanWriteFileFilter extends AbstractFileFilter implements Serializable {
  public static final IOFileFilter CANNOT_WRITE;
  
  public static final IOFileFilter CAN_WRITE = new CanWriteFileFilter();
  
  static {
    CANNOT_WRITE = new NotFileFilter(CAN_WRITE);
  }
  
  public boolean accept(File paramFile) {
    return paramFile.canWrite();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\filefilter\CanWriteFileFilter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */