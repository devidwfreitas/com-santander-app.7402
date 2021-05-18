package android.support.v4.util;

public class Pools$SimplePool<T> implements Pools$Pool<T> {
  private final Object[] mPool;
  
  private int mPoolSize;
  
  public Pools$SimplePool(int paramInt) {
    if (paramInt <= 0)
      throw new IllegalArgumentException("The max pool size must be > 0"); 
    this.mPool = new Object[paramInt];
  }
  
  private boolean isInPool(T paramT) {
    boolean bool = false;
    for (int i = 0;; i++) {
      boolean bool1 = bool;
      if (i < this.mPoolSize) {
        if (this.mPool[i] == paramT)
          return true; 
      } else {
        return bool1;
      } 
    } 
  }
  
  public T acquire() {
    if (this.mPoolSize > 0) {
      int i = this.mPoolSize - 1;
      Object object = this.mPool[i];
      this.mPool[i] = null;
      this.mPoolSize--;
      return (T)object;
    } 
    return null;
  }
  
  public boolean release(T paramT) {
    if (isInPool(paramT))
      throw new IllegalStateException("Already in the pool!"); 
    if (this.mPoolSize < this.mPool.length) {
      this.mPool[this.mPoolSize] = paramT;
      this.mPoolSize++;
      return true;
    } 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v\\util\Pools$SimplePool.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */