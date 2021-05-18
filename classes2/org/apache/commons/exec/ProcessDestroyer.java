package org.apache.commons.exec;

public interface ProcessDestroyer {
  boolean add(Process paramProcess);
  
  boolean remove(Process paramProcess);
  
  int size();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\exec\ProcessDestroyer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */