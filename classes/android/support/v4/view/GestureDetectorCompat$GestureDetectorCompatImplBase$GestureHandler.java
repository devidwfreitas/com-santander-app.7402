package android.support.v4.view;

import android.os.Handler;
import android.os.Message;

class GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler extends Handler {
  GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler() {}
  
  GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler(Handler paramHandler) {
    super(paramHandler.getLooper());
  }
  
  public void handleMessage(Message paramMessage) {
    switch (paramMessage.what) {
      default:
        throw new RuntimeException("Unknown message " + paramMessage);
      case 1:
        GestureDetectorCompat$GestureDetectorCompatImplBase.this.mListener.onShowPress(GestureDetectorCompat$GestureDetectorCompatImplBase.this.mCurrentDownEvent);
        return;
      case 2:
        GestureDetectorCompat$GestureDetectorCompatImplBase.this.dispatchLongPress();
        return;
      case 3:
        break;
    } 
    if (GestureDetectorCompat$GestureDetectorCompatImplBase.this.mDoubleTapListener != null) {
      if (!GestureDetectorCompat$GestureDetectorCompatImplBase.this.mStillDown) {
        GestureDetectorCompat$GestureDetectorCompatImplBase.this.mDoubleTapListener.onSingleTapConfirmed(GestureDetectorCompat$GestureDetectorCompatImplBase.this.mCurrentDownEvent);
        return;
      } 
      GestureDetectorCompat$GestureDetectorCompatImplBase.this.mDeferConfirmSingleTap = true;
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */