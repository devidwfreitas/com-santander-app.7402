package android.support.v4.view;

import android.os.Handler;
import android.os.Message;

class AsyncLayoutInflater$1 implements Handler.Callback {
  public boolean handleMessage(Message paramMessage) {
    AsyncLayoutInflater$InflateRequest asyncLayoutInflater$InflateRequest = (AsyncLayoutInflater$InflateRequest)paramMessage.obj;
    if (asyncLayoutInflater$InflateRequest.view == null)
      asyncLayoutInflater$InflateRequest.view = AsyncLayoutInflater.this.mInflater.inflate(asyncLayoutInflater$InflateRequest.resid, asyncLayoutInflater$InflateRequest.parent, false); 
    asyncLayoutInflater$InflateRequest.callback.onInflateFinished(asyncLayoutInflater$InflateRequest.view, asyncLayoutInflater$InflateRequest.resid, asyncLayoutInflater$InflateRequest.parent);
    AsyncLayoutInflater.this.mInflateThread.releaseRequest(asyncLayoutInflater$InflateRequest);
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\AsyncLayoutInflater$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */