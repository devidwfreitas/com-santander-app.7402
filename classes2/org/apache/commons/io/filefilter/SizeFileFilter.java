package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;

public class SizeFileFilter extends AbstractFileFilter implements Serializable {
  private final boolean acceptLarger;
  
  private final long size;
  
  public SizeFileFilter(long paramLong) {
    this(paramLong, true);
  }
  
  public SizeFileFilter(long paramLong, boolean paramBoolean) {
    if (paramLong < 0L)
      throw new IllegalArgumentException("The size must be non-negative"); 
    this.size = paramLong;
    this.acceptLarger = paramBoolean;
  }
  
  public boolean accept(File paramFile) {
    boolean bool;
    if (paramFile.length() < this.size) {
      bool = true;
    } else {
      bool = false;
    } 
    return this.acceptLarger ? (!bool) : bool;
  }
  
  public String toString() {
    if (this.acceptLarger) {
      String str1 = ">=";
      return super.toString() + "(" + str1 + this.size + ")";
    } 
    String str = "<";
    return super.toString() + "(" + str + this.size + ")";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\filefilter\SizeFileFilter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */