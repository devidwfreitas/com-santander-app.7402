package android.support.v7.util;

class MessageThreadUtil<T> implements ThreadUtil<T> {
  public ThreadUtil$BackgroundCallback<T> getBackgroundProxy(ThreadUtil$BackgroundCallback<T> paramThreadUtil$BackgroundCallback) {
    return new MessageThreadUtil$2(this, paramThreadUtil$BackgroundCallback);
  }
  
  public ThreadUtil$MainThreadCallback<T> getMainThreadProxy(ThreadUtil$MainThreadCallback<T> paramThreadUtil$MainThreadCallback) {
    return new MessageThreadUtil$1(this, paramThreadUtil$MainThreadCallback);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v\\util\MessageThreadUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */