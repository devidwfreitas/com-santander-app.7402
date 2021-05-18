package com.ca.mdo;

import android.annotation.TargetApi;
import android.widget.ProgressBar;

@TargetApi(8)
class CaMDOProgressBarImpl {
  public static void setVisibility(ProgressBar paramProgressBar, int paramInt) {
    CALog.d("Logged here......in progress bar");
    paramProgressBar.setVisibility(paramInt);
    String str = paramProgressBar.getId() + ":" + paramProgressBar.hashCode();
    if (paramInt == 8 || paramInt == 4) {
      long l1 = System.currentTimeMillis();
      long l2 = Util.getSharedPreferences().getLong(str + ":startms", -1L);
      if (l2 != -1L)
        CAMobileDevOps.progressBarEvent("end", str, l1 - l2, l1); 
      Util.getSharedPreferencesEditor().remove(str + ":startms");
      return;
    } 
    long l = System.currentTimeMillis();
    CAMobileDevOps.progressBarEvent("start", str, 0L, l);
    Util.getSharedPreferencesEditor().putLong(str + ":startms", l).commit();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\mdo\CaMDOProgressBarImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */