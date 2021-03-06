package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;
import java.util.Date;
import org.apache.commons.io.FileUtils;

public class AgeFileFilter extends AbstractFileFilter implements Serializable {
  private final boolean acceptOlder;
  
  private final long cutoff;
  
  public AgeFileFilter(long paramLong) {
    this(paramLong, true);
  }
  
  public AgeFileFilter(long paramLong, boolean paramBoolean) {
    this.acceptOlder = paramBoolean;
    this.cutoff = paramLong;
  }
  
  public AgeFileFilter(File paramFile) {
    this(paramFile, true);
  }
  
  public AgeFileFilter(File paramFile, boolean paramBoolean) {
    this(paramFile.lastModified(), paramBoolean);
  }
  
  public AgeFileFilter(Date paramDate) {
    this(paramDate, true);
  }
  
  public AgeFileFilter(Date paramDate, boolean paramBoolean) {
    this(paramDate.getTime(), paramBoolean);
  }
  
  public boolean accept(File paramFile) {
    boolean bool2 = FileUtils.isFileNewer(paramFile, this.cutoff);
    boolean bool1 = bool2;
    if (this.acceptOlder) {
      if (!bool2)
        return true; 
    } else {
      return bool1;
    } 
    return false;
  }
  
  public String toString() {
    if (this.acceptOlder) {
      String str1 = "<=";
      return super.toString() + "(" + str1 + this.cutoff + ")";
    } 
    String str = ">";
    return super.toString() + "(" + str + this.cutoff + ")";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\filefilter\AgeFileFilter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */