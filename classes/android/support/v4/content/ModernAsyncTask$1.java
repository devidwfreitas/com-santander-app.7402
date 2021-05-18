package android.support.v4.content;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

final class ModernAsyncTask$1 implements ThreadFactory {
  private final AtomicInteger mCount = new AtomicInteger(1);
  
  public Thread newThread(Runnable paramRunnable) {
    return new Thread(paramRunnable, "ModernAsyncTask #" + this.mCount.getAndIncrement());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\content\ModernAsyncTask$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */