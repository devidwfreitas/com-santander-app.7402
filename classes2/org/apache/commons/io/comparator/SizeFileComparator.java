package org.apache.commons.io.comparator;

import java.io.File;
import java.io.Serializable;
import java.util.Comparator;
import java.util.List;
import org.apache.commons.io.FileUtils;

public class SizeFileComparator extends AbstractFileComparator implements Serializable {
  public static final Comparator<File> SIZE_COMPARATOR = new SizeFileComparator();
  
  public static final Comparator<File> SIZE_REVERSE = new ReverseComparator(SIZE_COMPARATOR);
  
  public static final Comparator<File> SIZE_SUMDIR_COMPARATOR = new SizeFileComparator(true);
  
  public static final Comparator<File> SIZE_SUMDIR_REVERSE = new ReverseComparator(SIZE_SUMDIR_COMPARATOR);
  
  private final boolean sumDirectoryContents = false;
  
  public SizeFileComparator() {}
  
  public SizeFileComparator(boolean paramBoolean) {}
  
  public int compare(File paramFile1, File paramFile2) {
    long l1;
    long l2;
    if (paramFile1.isDirectory()) {
      if (this.sumDirectoryContents && paramFile1.exists()) {
        l1 = FileUtils.sizeOfDirectory(paramFile1);
      } else {
        l1 = 0L;
      } 
    } else {
      l1 = paramFile1.length();
    } 
    if (paramFile2.isDirectory()) {
      if (this.sumDirectoryContents && paramFile2.exists()) {
        l2 = FileUtils.sizeOfDirectory(paramFile2);
      } else {
        l2 = 0L;
      } 
    } else {
      l2 = paramFile2.length();
    } 
    l1 -= l2;
    return (l1 < 0L) ? -1 : ((l1 > 0L) ? 1 : 0);
  }
  
  public String toString() {
    return super.toString() + "[sumDirectoryContents=" + this.sumDirectoryContents + "]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\comparator\SizeFileComparator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */