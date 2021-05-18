package android.support.v4.os;

import android.os.Bundle;

class ResultReceiver$MyRunnable implements Runnable {
  final int mResultCode;
  
  final Bundle mResultData;
  
  ResultReceiver$MyRunnable(int paramInt, Bundle paramBundle) {
    this.mResultCode = paramInt;
    this.mResultData = paramBundle;
  }
  
  public void run() {
    ResultReceiver.this.onReceiveResult(this.mResultCode, this.mResultData);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\os\ResultReceiver$MyRunnable.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */