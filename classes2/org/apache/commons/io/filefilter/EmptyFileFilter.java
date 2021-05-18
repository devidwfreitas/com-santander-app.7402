package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;

public class EmptyFileFilter extends AbstractFileFilter implements Serializable {
  public static final IOFileFilter EMPTY = new EmptyFileFilter();
  
  public static final IOFileFilter NOT_EMPTY = new NotFileFilter(EMPTY);
  
  public boolean accept(File paramFile) {
    File[] arrayOfFile;
    null = true;
    boolean bool = false;
    if (paramFile.isDirectory()) {
      arrayOfFile = paramFile.listFiles();
      if (arrayOfFile != null) {
        null = bool;
        return (arrayOfFile.length == 0) ? true : null;
      } 
    } else {
      if (arrayOfFile.length() != 0L)
        null = false; 
      return null;
    } 
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\filefilter\EmptyFileFilter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */