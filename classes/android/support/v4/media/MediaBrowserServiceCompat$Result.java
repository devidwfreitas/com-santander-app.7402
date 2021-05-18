package android.support.v4.media;

public class MediaBrowserServiceCompat$Result<T> {
  private Object mDebug;
  
  private boolean mDetachCalled;
  
  private int mFlags;
  
  private boolean mSendResultCalled;
  
  MediaBrowserServiceCompat$Result(Object paramObject) {
    this.mDebug = paramObject;
  }
  
  public void detach() {
    if (this.mDetachCalled)
      throw new IllegalStateException("detach() called when detach() had already been called for: " + this.mDebug); 
    if (this.mSendResultCalled)
      throw new IllegalStateException("detach() called when sendResult() had already been called for: " + this.mDebug); 
    this.mDetachCalled = true;
  }
  
  boolean isDone() {
    return (this.mDetachCalled || this.mSendResultCalled);
  }
  
  void onResultSent(T paramT, int paramInt) {}
  
  public void sendResult(T paramT) {
    if (this.mSendResultCalled)
      throw new IllegalStateException("sendResult() called twice for: " + this.mDebug); 
    this.mSendResultCalled = true;
    onResultSent(paramT, this.mFlags);
  }
  
  void setFlags(int paramInt) {
    this.mFlags = paramInt;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserServiceCompat$Result.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */