package android.support.v4.view;

import android.content.Context;
import android.os.Handler;
import android.support.annotation.LayoutRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.UiThread;
import android.view.LayoutInflater;
import android.view.ViewGroup;

public final class AsyncLayoutInflater {
  private static final String TAG = "AsyncLayoutInflater";
  
  Handler mHandler;
  
  private Handler.Callback mHandlerCallback = new AsyncLayoutInflater$1(this);
  
  AsyncLayoutInflater$InflateThread mInflateThread;
  
  LayoutInflater mInflater;
  
  public AsyncLayoutInflater(@NonNull Context paramContext) {
    this.mInflater = new AsyncLayoutInflater$BasicInflater(paramContext);
    this.mHandler = new Handler(this.mHandlerCallback);
    this.mInflateThread = AsyncLayoutInflater$InflateThread.getInstance();
  }
  
  @UiThread
  public void inflate(@LayoutRes int paramInt, @Nullable ViewGroup paramViewGroup, @NonNull AsyncLayoutInflater$OnInflateFinishedListener paramAsyncLayoutInflater$OnInflateFinishedListener) {
    if (paramAsyncLayoutInflater$OnInflateFinishedListener == null)
      throw new NullPointerException("callback argument may not be null!"); 
    AsyncLayoutInflater$InflateRequest asyncLayoutInflater$InflateRequest = this.mInflateThread.obtainRequest();
    asyncLayoutInflater$InflateRequest.inflater = this;
    asyncLayoutInflater$InflateRequest.resid = paramInt;
    asyncLayoutInflater$InflateRequest.parent = paramViewGroup;
    asyncLayoutInflater$InflateRequest.callback = paramAsyncLayoutInflater$OnInflateFinishedListener;
    this.mInflateThread.enqueue(asyncLayoutInflater$InflateRequest);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\AsyncLayoutInflater.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */