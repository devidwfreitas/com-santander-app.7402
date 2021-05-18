package android.support.v4.content;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class ModernAsyncTask$InternalHandler extends Handler {
  public ModernAsyncTask$InternalHandler() {
    super(Looper.getMainLooper());
  }
  
  public void handleMessage(Message paramMessage) {
    ModernAsyncTask$AsyncTaskResult modernAsyncTask$AsyncTaskResult = (ModernAsyncTask$AsyncTaskResult)paramMessage.obj;
    switch (paramMessage.what) {
      default:
        return;
      case 1:
        modernAsyncTask$AsyncTaskResult.mTask.finish(modernAsyncTask$AsyncTaskResult.mData[0]);
        return;
      case 2:
        break;
    } 
    modernAsyncTask$AsyncTaskResult.mTask.onProgressUpdate((Object[])modernAsyncTask$AsyncTaskResult.mData);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\content\ModernAsyncTask$InternalHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */