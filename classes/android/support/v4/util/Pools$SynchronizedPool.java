package android.support.v4.util;

public class Pools$SynchronizedPool<T> extends Pools$SimplePool<T> {
  private final Object mLock = new Object();
  
  public Pools$SynchronizedPool(int paramInt) {
    super(paramInt);
  }
  
  public T acquire() {
    synchronized (this.mLock) {
      return super.acquire();
    } 
  }
  
  public boolean release(T paramT) {
    synchronized (this.mLock) {
      return super.release(paramT);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v\\util\Pools$SynchronizedPool.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */