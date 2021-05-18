package android.support.v7.widget;

import android.view.ViewParent;

class ForwardingListener$DisallowIntercept implements Runnable {
  public void run() {
    ViewParent viewParent = ForwardingListener.this.mSrc.getParent();
    if (viewParent != null)
      viewParent.requestDisallowInterceptTouchEvent(true); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ForwardingListener$DisallowIntercept.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */