package android.support.v4.view;

import android.os.Message;
import android.support.v4.util.Pools;
import android.util.Log;
import java.util.concurrent.ArrayBlockingQueue;

class AsyncLayoutInflater$InflateThread extends Thread {
  private static final AsyncLayoutInflater$InflateThread sInstance = new AsyncLayoutInflater$InflateThread();
  
  private ArrayBlockingQueue<AsyncLayoutInflater$InflateRequest> mQueue = new ArrayBlockingQueue<AsyncLayoutInflater$InflateRequest>(10);
  
  private Pools.SynchronizedPool<AsyncLayoutInflater$InflateRequest> mRequestPool = new Pools.SynchronizedPool(10);
  
  static {
    sInstance.start();
  }
  
  public static AsyncLayoutInflater$InflateThread getInstance() {
    return sInstance;
  }
  
  public void enqueue(AsyncLayoutInflater$InflateRequest paramAsyncLayoutInflater$InflateRequest) {
    try {
      this.mQueue.put(paramAsyncLayoutInflater$InflateRequest);
      return;
    } catch (InterruptedException interruptedException) {
      throw new RuntimeException("Failed to enqueue async inflate request", interruptedException);
    } 
  }
  
  public AsyncLayoutInflater$InflateRequest obtainRequest() {
    AsyncLayoutInflater$InflateRequest asyncLayoutInflater$InflateRequest2 = (AsyncLayoutInflater$InflateRequest)this.mRequestPool.acquire();
    AsyncLayoutInflater$InflateRequest asyncLayoutInflater$InflateRequest1 = asyncLayoutInflater$InflateRequest2;
    if (asyncLayoutInflater$InflateRequest2 == null)
      asyncLayoutInflater$InflateRequest1 = new AsyncLayoutInflater$InflateRequest(); 
    return asyncLayoutInflater$InflateRequest1;
  }
  
  public void releaseRequest(AsyncLayoutInflater$InflateRequest paramAsyncLayoutInflater$InflateRequest) {
    paramAsyncLayoutInflater$InflateRequest.callback = null;
    paramAsyncLayoutInflater$InflateRequest.inflater = null;
    paramAsyncLayoutInflater$InflateRequest.parent = null;
    paramAsyncLayoutInflater$InflateRequest.resid = 0;
    paramAsyncLayoutInflater$InflateRequest.view = null;
    this.mRequestPool.release(paramAsyncLayoutInflater$InflateRequest);
  }
  
  public void run() {
    while (true) {
      try {
        AsyncLayoutInflater$InflateRequest asyncLayoutInflater$InflateRequest = this.mQueue.take();
        try {
          asyncLayoutInflater$InflateRequest.view = asyncLayoutInflater$InflateRequest.inflater.mInflater.inflate(asyncLayoutInflater$InflateRequest.resid, asyncLayoutInflater$InflateRequest.parent, false);
        } catch (RuntimeException runtimeException) {
          Log.w("AsyncLayoutInflater", "Failed to inflate resource in the background! Retrying on the UI thread", runtimeException);
        } 
        Message.obtain(asyncLayoutInflater$InflateRequest.inflater.mHandler, 0, asyncLayoutInflater$InflateRequest).sendToTarget();
      } catch (InterruptedException interruptedException) {
        Log.w("AsyncLayoutInflater", interruptedException);
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\AsyncLayoutInflater$InflateThread.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */