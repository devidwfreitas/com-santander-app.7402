package org.apache.commons.exec;

public interface ExecuteResultHandler {
  void onProcessComplete(int paramInt);
  
  void onProcessFailed(ExecuteException paramExecuteException);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\exec\ExecuteResultHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */