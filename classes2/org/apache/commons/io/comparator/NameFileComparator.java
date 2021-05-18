package org.apache.commons.io.comparator;

import java.io.File;
import java.io.Serializable;
import java.util.Comparator;
import java.util.List;
import org.apache.commons.io.IOCase;

public class NameFileComparator extends AbstractFileComparator implements Serializable {
  public static final Comparator<File> NAME_COMPARATOR = new NameFileComparator();
  
  public static final Comparator<File> NAME_INSENSITIVE_COMPARATOR;
  
  public static final Comparator<File> NAME_INSENSITIVE_REVERSE;
  
  public static final Comparator<File> NAME_REVERSE = new ReverseComparator(NAME_COMPARATOR);
  
  public static final Comparator<File> NAME_SYSTEM_COMPARATOR;
  
  public static final Comparator<File> NAME_SYSTEM_REVERSE;
  
  private final IOCase caseSensitivity;
  
  static {
    NAME_INSENSITIVE_COMPARATOR = new NameFileComparator(IOCase.INSENSITIVE);
    NAME_INSENSITIVE_REVERSE = new ReverseComparator(NAME_INSENSITIVE_COMPARATOR);
    NAME_SYSTEM_COMPARATOR = new NameFileComparator(IOCase.SYSTEM);
    NAME_SYSTEM_REVERSE = new ReverseComparator(NAME_SYSTEM_COMPARATOR);
  }
  
  public NameFileComparator() {
    this.caseSensitivity = IOCase.SENSITIVE;
  }
  
  public NameFileComparator(IOCase paramIOCase) {
    IOCase iOCase = paramIOCase;
    if (paramIOCase == null)
      iOCase = IOCase.SENSITIVE; 
    this.caseSensitivity = iOCase;
  }
  
  public int compare(File paramFile1, File paramFile2) {
    return this.caseSensitivity.checkCompareTo(paramFile1.getName(), paramFile2.getName());
  }
  
  public String toString() {
    return super.toString() + "[caseSensitivity=" + this.caseSensitivity + "]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\comparator\NameFileComparator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */