package android.support.design.widget;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class SnackbarManager {
  private static final int LONG_DURATION_MS = 2750;
  
  static final int MSG_TIMEOUT = 0;
  
  private static final int SHORT_DURATION_MS = 1500;
  
  private static SnackbarManager sSnackbarManager;
  
  private SnackbarManager$SnackbarRecord mCurrentSnackbar;
  
  private final Handler mHandler = new Handler(Looper.getMainLooper(), new SnackbarManager$1(this));
  
  private final Object mLock = new Object();
  
  private SnackbarManager$SnackbarRecord mNextSnackbar;
  
  private boolean cancelSnackbarLocked(SnackbarManager$SnackbarRecord paramSnackbarManager$SnackbarRecord, int paramInt) {
    SnackbarManager$Callback snackbarManager$Callback = paramSnackbarManager$SnackbarRecord.callback.get();
    if (snackbarManager$Callback != null) {
      this.mHandler.removeCallbacksAndMessages(paramSnackbarManager$SnackbarRecord);
      snackbarManager$Callback.dismiss(paramInt);
      return true;
    } 
    return false;
  }
  
  static SnackbarManager getInstance() {
    if (sSnackbarManager == null)
      sSnackbarManager = new SnackbarManager(); 
    return sSnackbarManager;
  }
  
  private boolean isCurrentSnackbarLocked(SnackbarManager$Callback paramSnackbarManager$Callback) {
    return (this.mCurrentSnackbar != null && this.mCurrentSnackbar.isSnackbar(paramSnackbarManager$Callback));
  }
  
  private boolean isNextSnackbarLocked(SnackbarManager$Callback paramSnackbarManager$Callback) {
    return (this.mNextSnackbar != null && this.mNextSnackbar.isSnackbar(paramSnackbarManager$Callback));
  }
  
  private void scheduleTimeoutLocked(SnackbarManager$SnackbarRecord paramSnackbarManager$SnackbarRecord) {
    if (paramSnackbarManager$SnackbarRecord.duration == -2)
      return; 
    int i = 2750;
    if (paramSnackbarManager$SnackbarRecord.duration > 0) {
      i = paramSnackbarManager$SnackbarRecord.duration;
    } else if (paramSnackbarManager$SnackbarRecord.duration == -1) {
      i = 1500;
    } 
    this.mHandler.removeCallbacksAndMessages(paramSnackbarManager$SnackbarRecord);
    this.mHandler.sendMessageDelayed(Message.obtain(this.mHandler, 0, paramSnackbarManager$SnackbarRecord), i);
  }
  
  private void showNextSnackbarLocked() {
    if (this.mNextSnackbar != null) {
      this.mCurrentSnackbar = this.mNextSnackbar;
      this.mNextSnackbar = null;
      SnackbarManager$Callback snackbarManager$Callback = this.mCurrentSnackbar.callback.get();
      if (snackbarManager$Callback != null) {
        snackbarManager$Callback.show();
        return;
      } 
    } else {
      return;
    } 
    this.mCurrentSnackbar = null;
  }
  
  public void dismiss(SnackbarManager$Callback paramSnackbarManager$Callback, int paramInt) {
    synchronized (this.mLock) {
      if (isCurrentSnackbarLocked(paramSnackbarManager$Callback)) {
        cancelSnackbarLocked(this.mCurrentSnackbar, paramInt);
      } else if (isNextSnackbarLocked(paramSnackbarManager$Callback)) {
        cancelSnackbarLocked(this.mNextSnackbar, paramInt);
      } 
      return;
    } 
  }
  
  void handleTimeout(SnackbarManager$SnackbarRecord paramSnackbarManager$SnackbarRecord) {
    synchronized (this.mLock) {
      if (this.mCurrentSnackbar == paramSnackbarManager$SnackbarRecord || this.mNextSnackbar == paramSnackbarManager$SnackbarRecord)
        cancelSnackbarLocked(paramSnackbarManager$SnackbarRecord, 2); 
      return;
    } 
  }
  
  public boolean isCurrent(SnackbarManager$Callback paramSnackbarManager$Callback) {
    synchronized (this.mLock) {
      return isCurrentSnackbarLocked(paramSnackbarManager$Callback);
    } 
  }
  
  public boolean isCurrentOrNext(SnackbarManager$Callback paramSnackbarManager$Callback) {
    synchronized (this.mLock) {
      if (isCurrentSnackbarLocked(paramSnackbarManager$Callback) || isNextSnackbarLocked(paramSnackbarManager$Callback))
        return true; 
    } 
    boolean bool = false;
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_3} */
    return bool;
  }
  
  public void onDismissed(SnackbarManager$Callback paramSnackbarManager$Callback) {
    synchronized (this.mLock) {
      if (isCurrentSnackbarLocked(paramSnackbarManager$Callback)) {
        this.mCurrentSnackbar = null;
        if (this.mNextSnackbar != null)
          showNextSnackbarLocked(); 
      } 
      return;
    } 
  }
  
  public void onShown(SnackbarManager$Callback paramSnackbarManager$Callback) {
    synchronized (this.mLock) {
      if (isCurrentSnackbarLocked(paramSnackbarManager$Callback))
        scheduleTimeoutLocked(this.mCurrentSnackbar); 
      return;
    } 
  }
  
  public void pauseTimeout(SnackbarManager$Callback paramSnackbarManager$Callback) {
    synchronized (this.mLock) {
      if (isCurrentSnackbarLocked(paramSnackbarManager$Callback) && !this.mCurrentSnackbar.paused) {
        this.mCurrentSnackbar.paused = true;
        this.mHandler.removeCallbacksAndMessages(this.mCurrentSnackbar);
      } 
      return;
    } 
  }
  
  public void restoreTimeoutIfPaused(SnackbarManager$Callback paramSnackbarManager$Callback) {
    synchronized (this.mLock) {
      if (isCurrentSnackbarLocked(paramSnackbarManager$Callback) && this.mCurrentSnackbar.paused) {
        this.mCurrentSnackbar.paused = false;
        scheduleTimeoutLocked(this.mCurrentSnackbar);
      } 
      return;
    } 
  }
  
  public void show(int paramInt, SnackbarManager$Callback paramSnackbarManager$Callback) {
    synchronized (this.mLock) {
      if (isCurrentSnackbarLocked(paramSnackbarManager$Callback)) {
        this.mCurrentSnackbar.duration = paramInt;
        this.mHandler.removeCallbacksAndMessages(this.mCurrentSnackbar);
        scheduleTimeoutLocked(this.mCurrentSnackbar);
        return;
      } 
      if (isNextSnackbarLocked(paramSnackbarManager$Callback)) {
        this.mNextSnackbar.duration = paramInt;
      } else {
        this.mNextSnackbar = new SnackbarManager$SnackbarRecord(paramInt, paramSnackbarManager$Callback);
      } 
      if (this.mCurrentSnackbar != null && cancelSnackbarLocked(this.mCurrentSnackbar, 4))
        return; 
    } 
    this.mCurrentSnackbar = null;
    showNextSnackbarLocked();
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_3} */
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\SnackbarManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */