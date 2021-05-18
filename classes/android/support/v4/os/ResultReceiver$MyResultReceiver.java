package android.support.v4.os;

import android.os.Bundle;

class ResultReceiver$MyResultReceiver extends IResultReceiver$Stub {
  public void send(int paramInt, Bundle paramBundle) {
    if (ResultReceiver.this.mHandler != null) {
      ResultReceiver.this.mHandler.post(new ResultReceiver$MyRunnable(ResultReceiver.this, paramInt, paramBundle));
      return;
    } 
    ResultReceiver.this.onReceiveResult(paramInt, paramBundle);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\os\ResultReceiver$MyResultReceiver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */