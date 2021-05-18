package android.support.v7.widget;

import android.support.v4.view.ViewCompat;
import android.view.ViewTreeObserver;

class ForwardingListener$2 implements ViewTreeObserver.OnGlobalLayoutListener {
  boolean mIsAttached = ViewCompat.isAttachedToWindow(ForwardingListener.this.mSrc);
  
  public void onGlobalLayout() {
    boolean bool = this.mIsAttached;
    this.mIsAttached = ViewCompat.isAttachedToWindow(ForwardingListener.this.mSrc);
    if (bool && !this.mIsAttached)
      ForwardingListener.access$000(ForwardingListener.this); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ForwardingListener$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */