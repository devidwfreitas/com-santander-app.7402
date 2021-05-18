package org.apache.commons.io;

import java.io.File;

class FileDeleteStrategy$ForceFileDeleteStrategy extends FileDeleteStrategy {
  FileDeleteStrategy$ForceFileDeleteStrategy() {
    super("Force");
  }
  
  protected boolean doDelete(File paramFile) {
    FileUtils.forceDelete(paramFile);
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\FileDeleteStrategy$ForceFileDeleteStrategy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */