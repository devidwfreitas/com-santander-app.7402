package org.apache.commons.io.monitor;

import java.io.File;

public interface FileAlterationListener {
  void onDirectoryChange(File paramFile);
  
  void onDirectoryCreate(File paramFile);
  
  void onDirectoryDelete(File paramFile);
  
  void onFileChange(File paramFile);
  
  void onFileCreate(File paramFile);
  
  void onFileDelete(File paramFile);
  
  void onStart(FileAlterationObserver paramFileAlterationObserver);
  
  void onStop(FileAlterationObserver paramFileAlterationObserver);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\monitor\FileAlterationListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */