package org.apache.commons.io.comparator;

import java.io.File;
import java.io.Serializable;
import java.util.Comparator;
import java.util.List;
import org.apache.commons.io.IOCase;

public class PathFileComparator extends AbstractFileComparator implements Serializable {
  public static final Comparator<File> PATH_COMPARATOR = new PathFileComparator();
  
  public static final Comparator<File> PATH_INSENSITIVE_COMPARATOR;
  
  public static final Comparator<File> PATH_INSENSITIVE_REVERSE;
  
  public static final Comparator<File> PATH_REVERSE = new ReverseComparator(PATH_COMPARATOR);
  
  public static final Comparator<File> PATH_SYSTEM_COMPARATOR;
  
  public static final Comparator<File> PATH_SYSTEM_REVERSE;
  
  private final IOCase caseSensitivity;
  
  static {
    PATH_INSENSITIVE_COMPARATOR = new PathFileComparator(IOCase.INSENSITIVE);
    PATH_INSENSITIVE_REVERSE = new ReverseComparator(PATH_INSENSITIVE_COMPARATOR);
    PATH_SYSTEM_COMPARATOR = new PathFileComparator(IOCase.SYSTEM);
    PATH_SYSTEM_REVERSE = new ReverseComparator(PATH_SYSTEM_COMPARATOR);
  }
  
  public PathFileComparator() {
    this.caseSensitivity = IOCase.SENSITIVE;
  }
  
  public PathFileComparator(IOCase paramIOCase) {
    IOCase iOCase = paramIOCase;
    if (paramIOCase == null)
      iOCase = IOCase.SENSITIVE; 
    this.caseSensitivity = iOCase;
  }
  
  public int compare(File paramFile1, File paramFile2) {
    return this.caseSensitivity.checkCompareTo(paramFile1.getPath(), paramFile2.getPath());
  }
  
  public String toString() {
    return super.toString() + "[caseSensitivity=" + this.caseSensitivity + "]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\comparator\PathFileComparator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */