package android.support.v4.view;

import android.content.Context;
import android.os.Handler;
import android.view.GestureDetector;
import android.view.MotionEvent;

class GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr2 implements GestureDetectorCompat$GestureDetectorCompatImpl {
  private final GestureDetector mDetector;
  
  public GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr2(Context paramContext, GestureDetector.OnGestureListener paramOnGestureListener, Handler paramHandler) {
    this.mDetector = new GestureDetector(paramContext, paramOnGestureListener, paramHandler);
  }
  
  public boolean isLongpressEnabled() {
    return this.mDetector.isLongpressEnabled();
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent) {
    return this.mDetector.onTouchEvent(paramMotionEvent);
  }
  
  public void setIsLongpressEnabled(boolean paramBoolean) {
    this.mDetector.setIsLongpressEnabled(paramBoolean);
  }
  
  public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener paramOnDoubleTapListener) {
    this.mDetector.setOnDoubleTapListener(paramOnDoubleTapListener);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */