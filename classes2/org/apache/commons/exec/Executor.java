package org.apache.commons.exec;

import java.io.File;
import java.util.Map;

public interface Executor {
  public static final int INVALID_EXITVALUE = -559038737;
  
  int execute(CommandLine paramCommandLine);
  
  int execute(CommandLine paramCommandLine, Map paramMap);
  
  void execute(CommandLine paramCommandLine, Map paramMap, ExecuteResultHandler paramExecuteResultHandler);
  
  void execute(CommandLine paramCommandLine, ExecuteResultHandler paramExecuteResultHandler);
  
  ProcessDestroyer getProcessDestroyer();
  
  ExecuteStreamHandler getStreamHandler();
  
  ExecuteWatchdog getWatchdog();
  
  File getWorkingDirectory();
  
  boolean isFailure(int paramInt);
  
  void setExitValue(int paramInt);
  
  void setExitValues(int[] paramArrayOfint);
  
  void setProcessDestroyer(ProcessDestroyer paramProcessDestroyer);
  
  void setStreamHandler(ExecuteStreamHandler paramExecuteStreamHandler);
  
  void setWatchdog(ExecuteWatchdog paramExecuteWatchdog);
  
  void setWorkingDirectory(File paramFile);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\exec\Executor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */