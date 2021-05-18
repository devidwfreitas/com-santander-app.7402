package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.FileFilter;
import java.io.FilenameFilter;
import java.io.Serializable;

public class DelegateFileFilter extends AbstractFileFilter implements Serializable {
  private final FileFilter fileFilter;
  
  private final FilenameFilter filenameFilter;
  
  public DelegateFileFilter(FileFilter paramFileFilter) {
    if (paramFileFilter == null)
      throw new IllegalArgumentException("The FileFilter must not be null"); 
    this.fileFilter = paramFileFilter;
    this.filenameFilter = null;
  }
  
  public DelegateFileFilter(FilenameFilter paramFilenameFilter) {
    if (paramFilenameFilter == null)
      throw new IllegalArgumentException("The FilenameFilter must not be null"); 
    this.filenameFilter = paramFilenameFilter;
    this.fileFilter = null;
  }
  
  public boolean accept(File paramFile) {
    return (this.fileFilter != null) ? this.fileFilter.accept(paramFile) : super.accept(paramFile);
  }
  
  public boolean accept(File paramFile, String paramString) {
    return (this.filenameFilter != null) ? this.filenameFilter.accept(paramFile, paramString) : super.accept(paramFile, paramString);
  }
  
  public String toString() {
    if (this.fileFilter != null) {
      String str1 = this.fileFilter.toString();
      return super.toString() + "(" + str1 + ")";
    } 
    String str = this.filenameFilter.toString();
    return super.toString() + "(" + str + ")";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\filefilter\DelegateFileFilter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */