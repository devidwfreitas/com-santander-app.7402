package android.support.v7.util;

import android.support.annotation.WorkerThread;

public abstract class AsyncListUtil$DataCallback<T> {
  @WorkerThread
  public abstract void fillData(T[] paramArrayOfT, int paramInt1, int paramInt2);
  
  @WorkerThread
  public int getMaxCachedTiles() {
    return 10;
  }
  
  @WorkerThread
  public void recycleData(T[] paramArrayOfT, int paramInt) {}
  
  @WorkerThread
  public abstract int refreshData();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v\\util\AsyncListUtil$DataCallback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */