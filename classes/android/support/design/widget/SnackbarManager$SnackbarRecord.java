package android.support.design.widget;

import java.lang.ref.WeakReference;

class SnackbarManager$SnackbarRecord {
  final WeakReference<SnackbarManager$Callback> callback;
  
  int duration;
  
  boolean paused;
  
  SnackbarManager$SnackbarRecord(int paramInt, SnackbarManager$Callback paramSnackbarManager$Callback) {
    this.callback = new WeakReference<SnackbarManager$Callback>(paramSnackbarManager$Callback);
    this.duration = paramInt;
  }
  
  boolean isSnackbar(SnackbarManager$Callback paramSnackbarManager$Callback) {
    return (paramSnackbarManager$Callback != null && this.callback.get() == paramSnackbarManager$Callback);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\SnackbarManager$SnackbarRecord.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */