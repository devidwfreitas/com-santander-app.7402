package br.com.santander.msgsdk.customView;

import android.view.GestureDetector;
import android.view.MotionEvent;

class SwipeLayout$1 extends GestureDetector.SimpleOnGestureListener {
  boolean hasDisallowed = false;
  
  public boolean onDown(MotionEvent paramMotionEvent) {
    SwipeLayout.access$002(SwipeLayout.this, false);
    this.hasDisallowed = false;
    return true;
  }
  
  public boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2) {
    SwipeLayout.access$002(SwipeLayout.this, true);
    return false;
  }
  
  public boolean onScroll(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2) {
    SwipeLayout.access$002(SwipeLayout.this, true);
    if (SwipeLayout.this.getParent() != null) {
      boolean bool;
      if (!this.hasDisallowed) {
        boolean bool1;
        if (SwipeLayout.access$100(SwipeLayout.this) >= SwipeLayout.access$200(SwipeLayout.this)) {
          bool1 = true;
        } else {
          bool1 = false;
        } 
        bool = bool1;
        if (bool1) {
          this.hasDisallowed = true;
          bool = bool1;
        } 
      } else {
        bool = true;
      } 
      SwipeLayout.this.getParent().requestDisallowInterceptTouchEvent(bool);
    } 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\customView\SwipeLayout$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */