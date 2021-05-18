package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;

public class DirectoryFileFilter extends AbstractFileFilter implements Serializable {
  public static final IOFileFilter DIRECTORY = new DirectoryFileFilter();
  
  public static final IOFileFilter INSTANCE = DIRECTORY;
  
  public boolean accept(File paramFile) {
    return paramFile.isDirectory();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\filefilter\DirectoryFileFilter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */