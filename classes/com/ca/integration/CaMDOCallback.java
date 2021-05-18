package com.ca.integration;

import android.annotation.TargetApi;
import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import android.util.Log;
import java.io.Serializable;

@TargetApi(3)
public abstract class CaMDOCallback extends ResultReceiver {
  public static final String ERROR_CODE = "error_code";
  
  public static final String EXTRA_EXCEPTION = "camdo_exception";
  
  public static final int STATUS_ERROR = 0;
  
  public static final int STATUS_SUCCESS = 1;
  
  public static final String TAG = "CaMDOCallback";
  
  public static final String UPLOAD_EVENT_COUNT = "upload_event_count";
  
  public CaMDOCallback(Handler paramHandler) {
    super(paramHandler);
  }
  
  public abstract void onError(int paramInt, Exception paramException);
  
  protected void onReceiveResult(int paramInt, Bundle paramBundle) {
    if (paramInt == 0) {
      if (paramBundle != null) {
        Serializable serializable = paramBundle.getSerializable("camdo_exception");
        paramInt = paramBundle.getInt("error_code");
        if (serializable != null)
          try {
            onError(paramInt, (Exception)serializable);
            return;
          } catch (Exception exception) {
            Log.w("CaMDOCallback", "Error in callback " + exception);
            return;
          }  
      } 
      return;
    } 
    if (paramInt == 1) {
      onSuccess((Bundle)exception);
      return;
    } 
  }
  
  public abstract void onSuccess(Bundle paramBundle);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\ca\integration\CaMDOCallback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */