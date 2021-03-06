package org.apache.commons.io.comparator;

import java.io.File;
import java.io.Serializable;
import java.util.Comparator;

class ReverseComparator extends AbstractFileComparator implements Serializable {
  private final Comparator<File> delegate;
  
  public ReverseComparator(Comparator<File> paramComparator) {
    if (paramComparator == null)
      throw new IllegalArgumentException("Delegate comparator is missing"); 
    this.delegate = paramComparator;
  }
  
  public int compare(File paramFile1, File paramFile2) {
    return this.delegate.compare(paramFile2, paramFile1);
  }
  
  public String toString() {
    return super.toString() + "[" + this.delegate.toString() + "]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\comparator\ReverseComparator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */