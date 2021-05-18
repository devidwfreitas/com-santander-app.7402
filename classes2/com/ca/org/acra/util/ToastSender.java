package com.ca.org.acra.util;

import android.content.Context;
import android.util.Log;
import android.widget.Toast;
import com.ca.org.acra.ACRA;

public final class ToastSender {
  public static void sendToast(Context paramContext, int paramInt1, int paramInt2) {
    try {
      Toast.makeText(paramContext, paramInt1, paramInt2).show();
      return;
    } catch (RuntimeException runtimeException) {
      Log.e(ACRA.LOG_TAG, "Could not send crash Toast", runtimeException);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\org\acr\\util\ToastSender.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */