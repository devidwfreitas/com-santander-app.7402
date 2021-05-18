package android.support.v4.view;

import android.view.GestureDetector;
import android.view.MotionEvent;

interface GestureDetectorCompat$GestureDetectorCompatImpl {
  boolean isLongpressEnabled();
  
  boolean onTouchEvent(MotionEvent paramMotionEvent);
  
  void setIsLongpressEnabled(boolean paramBoolean);
  
  void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener paramOnDoubleTapListener);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\GestureDetectorCompat$GestureDetectorCompatImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */