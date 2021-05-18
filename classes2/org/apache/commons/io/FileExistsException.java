package org.apache.commons.io;

import java.io.File;
import java.io.IOException;

public class FileExistsException extends IOException {
  private static final long serialVersionUID = 1L;
  
  public FileExistsException() {}
  
  public FileExistsException(File paramFile) {
    super("File " + paramFile + " exists");
  }
  
  public FileExistsException(String paramString) {
    super(paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\FileExistsException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */