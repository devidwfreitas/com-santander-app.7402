import com.adjust.sdk.AdjustFactory;

class avl implements Thread.UncaughtExceptionHandler {
  avl(avk paramavk) {}
  
  public void uncaughtException(Thread paramThread, Throwable paramThrowable) {
    AdjustFactory.getLogger().error("Thread %s with error %s", new Object[] { paramThread.getName(), paramThrowable.getMessage() });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\avl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */