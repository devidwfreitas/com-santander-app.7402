package org.apache.commons.io.comparator;

import java.io.File;
import java.io.Serializable;
import java.util.Comparator;
import java.util.List;

public class DirectoryFileComparator extends AbstractFileComparator implements Serializable {
  public static final Comparator<File> DIRECTORY_COMPARATOR = new DirectoryFileComparator();
  
  public static final Comparator<File> DIRECTORY_REVERSE = new ReverseComparator(DIRECTORY_COMPARATOR);
  
  private int getType(File paramFile) {
    return paramFile.isDirectory() ? 1 : 2;
  }
  
  public int compare(File paramFile1, File paramFile2) {
    return getType(paramFile1) - getType(paramFile2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\comparator\DirectoryFileComparator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */