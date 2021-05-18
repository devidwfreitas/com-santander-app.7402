package org.apache.commons.io.comparator;

import java.io.File;
import java.io.Serializable;
import java.util.Comparator;
import java.util.List;

public class LastModifiedFileComparator extends AbstractFileComparator implements Serializable {
  public static final Comparator<File> LASTMODIFIED_COMPARATOR = new LastModifiedFileComparator();
  
  public static final Comparator<File> LASTMODIFIED_REVERSE = new ReverseComparator(LASTMODIFIED_COMPARATOR);
  
  public int compare(File paramFile1, File paramFile2) {
    long l = paramFile1.lastModified() - paramFile2.lastModified();
    return (l < 0L) ? -1 : ((l > 0L) ? 1 : 0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\comparator\LastModifiedFileComparator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */