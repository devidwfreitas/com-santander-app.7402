package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;

public class TrueFileFilter implements Serializable, IOFileFilter {
  public static final IOFileFilter INSTANCE;
  
  public static final IOFileFilter TRUE = new TrueFileFilter();
  
  static {
    INSTANCE = TRUE;
  }
  
  public boolean accept(File paramFile) {
    return true;
  }
  
  public boolean accept(File paramFile, String paramString) {
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\filefilter\TrueFileFilter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */