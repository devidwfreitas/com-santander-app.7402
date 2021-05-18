package com.ca.android.app;

import android.annotation.TargetApi;
import android.widget.ProgressBar;
import com.ca.mdo.SDK;

@TargetApi(8)
public class CaMDOProgressBar {
  public static void setVisibility(ProgressBar paramProgressBar, int paramInt) {
    SDK.getAgent().setVisibilityOnProgressBar(paramProgressBar, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\android\app\CaMDOProgressBar.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */