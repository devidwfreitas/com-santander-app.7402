package org.apache.commons.exec;

import java.util.Map;

class DefaultExecutor$1 implements Runnable {
  private final DefaultExecutor this$0;
  
  private final CommandLine val$command;
  
  private final Map val$environment;
  
  private final ExecuteResultHandler val$handler;
  
  DefaultExecutor$1(DefaultExecutor paramDefaultExecutor, CommandLine paramCommandLine, Map paramMap, ExecuteResultHandler paramExecuteResultHandler) {
    this.this$0 = paramDefaultExecutor;
    this.val$command = paramCommandLine;
    this.val$environment = paramMap;
    this.val$handler = paramExecuteResultHandler;
  }
  
  public void run() {
    int i = -559038737;
    try {
      int j = DefaultExecutor.access$200(this.this$0, this.val$command, this.val$environment, DefaultExecutor.access$000(this.this$0), DefaultExecutor.access$100(this.this$0));
      i = j;
      this.val$handler.onProcessComplete(j);
      return;
    } catch (ExecuteException executeException) {
      this.val$handler.onProcessFailed(executeException);
      return;
    } catch (Exception exception) {
      this.val$handler.onProcessFailed(new ExecuteException("Execution failed", i, exception));
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\exec\DefaultExecutor$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */