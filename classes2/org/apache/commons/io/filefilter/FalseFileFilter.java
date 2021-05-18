package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;

public class FalseFileFilter implements Serializable, IOFileFilter {
  public static final IOFileFilter FALSE = new FalseFileFilter();
  
  public static final IOFileFilter INSTANCE = FALSE;
  
  public boolean accept(File paramFile) {
    return false;
  }
  
  public boolean accept(File paramFile, String paramString) {
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\filefilter\FalseFileFilter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */