package org.apache.commons.io.input;

public interface TailerListener {
  void fileNotFound();
  
  void fileRotated();
  
  void handle(Exception paramException);
  
  void handle(String paramString);
  
  void init(Tailer paramTailer);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\input\TailerListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */