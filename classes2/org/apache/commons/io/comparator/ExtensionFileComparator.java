package org.apache.commons.io.comparator;

import java.io.File;
import java.io.Serializable;
import java.util.Comparator;
import java.util.List;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOCase;

public class ExtensionFileComparator extends AbstractFileComparator implements Serializable {
  public static final Comparator<File> EXTENSION_COMPARATOR = new ExtensionFileComparator();
  
  public static final Comparator<File> EXTENSION_INSENSITIVE_COMPARATOR;
  
  public static final Comparator<File> EXTENSION_INSENSITIVE_REVERSE;
  
  public static final Comparator<File> EXTENSION_REVERSE = new ReverseComparator(EXTENSION_COMPARATOR);
  
  public static final Comparator<File> EXTENSION_SYSTEM_COMPARATOR;
  
  public static final Comparator<File> EXTENSION_SYSTEM_REVERSE;
  
  private final IOCase caseSensitivity;
  
  static {
    EXTENSION_INSENSITIVE_COMPARATOR = new ExtensionFileComparator(IOCase.INSENSITIVE);
    EXTENSION_INSENSITIVE_REVERSE = new ReverseComparator(EXTENSION_INSENSITIVE_COMPARATOR);
    EXTENSION_SYSTEM_COMPARATOR = new ExtensionFileComparator(IOCase.SYSTEM);
    EXTENSION_SYSTEM_REVERSE = new ReverseComparator(EXTENSION_SYSTEM_COMPARATOR);
  }
  
  public ExtensionFileComparator() {
    this.caseSensitivity = IOCase.SENSITIVE;
  }
  
  public ExtensionFileComparator(IOCase paramIOCase) {
    IOCase iOCase = paramIOCase;
    if (paramIOCase == null)
      iOCase = IOCase.SENSITIVE; 
    this.caseSensitivity = iOCase;
  }
  
  public int compare(File paramFile1, File paramFile2) {
    String str1 = FilenameUtils.getExtension(paramFile1.getName());
    String str2 = FilenameUtils.getExtension(paramFile2.getName());
    return this.caseSensitivity.checkCompareTo(str1, str2);
  }
  
  public String toString() {
    return super.toString() + "[caseSensitivity=" + this.caseSensitivity + "]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\comparator\ExtensionFileComparator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */