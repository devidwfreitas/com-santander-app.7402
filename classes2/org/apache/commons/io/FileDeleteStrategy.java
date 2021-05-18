package org.apache.commons.io;

import java.io.File;
import java.io.IOException;

public class FileDeleteStrategy {
  public static final FileDeleteStrategy FORCE;
  
  public static final FileDeleteStrategy NORMAL = new FileDeleteStrategy("Normal");
  
  private final String name;
  
  static {
    FORCE = new FileDeleteStrategy$ForceFileDeleteStrategy();
  }
  
  protected FileDeleteStrategy(String paramString) {
    this.name = paramString;
  }
  
  public void delete(File paramFile) {
    if (paramFile.exists() && !doDelete(paramFile))
      throw new IOException("Deletion failed: " + paramFile); 
  }
  
  public boolean deleteQuietly(File paramFile) {
    if (paramFile == null || !paramFile.exists())
      return true; 
    try {
      return doDelete(paramFile);
    } catch (IOException iOException) {
      return false;
    } 
  }
  
  protected boolean doDelete(File paramFile) {
    return paramFile.delete();
  }
  
  public String toString() {
    return "FileDeleteStrategy[" + this.name + "]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\FileDeleteStrategy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */