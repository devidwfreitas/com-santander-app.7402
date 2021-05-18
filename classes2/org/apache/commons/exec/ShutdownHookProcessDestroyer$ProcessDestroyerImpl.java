package org.apache.commons.exec;

class ShutdownHookProcessDestroyer$ProcessDestroyerImpl extends Thread {
  private boolean shouldDestroy;
  
  private final ShutdownHookProcessDestroyer this$0;
  
  public ShutdownHookProcessDestroyer$ProcessDestroyerImpl(ShutdownHookProcessDestroyer paramShutdownHookProcessDestroyer) {
    super("ProcessDestroyer Shutdown Hook");
    this.this$0 = paramShutdownHookProcessDestroyer;
    this.shouldDestroy = true;
  }
  
  public void run() {
    if (this.shouldDestroy)
      this.this$0.run(); 
  }
  
  public void setShouldDestroy(boolean paramBoolean) {
    this.shouldDestroy = paramBoolean;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\exec\ShutdownHookProcessDestroyer$ProcessDestroyerImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */