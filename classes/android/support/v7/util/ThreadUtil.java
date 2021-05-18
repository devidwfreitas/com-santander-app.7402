package android.support.v7.util;

interface ThreadUtil<T> {
  ThreadUtil$BackgroundCallback<T> getBackgroundProxy(ThreadUtil$BackgroundCallback<T> paramThreadUtil$BackgroundCallback);
  
  ThreadUtil$MainThreadCallback<T> getMainThreadProxy(ThreadUtil$MainThreadCallback<T> paramThreadUtil$MainThreadCallback);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v\\util\ThreadUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */