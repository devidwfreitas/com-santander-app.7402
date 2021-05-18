package br.com.santander.msgsdk.customView;

import android.support.v4.view.ViewCompat;
import android.support.v4.widget.ViewDragHelper;
import android.view.View;

class SwipeLayout$2 extends ViewDragHelper.Callback {
  private float getSlideOffset() {
    switch (SwipeLayout.access$700(SwipeLayout.this)) {
      default:
        return 0.0F;
      case 1:
        return (SwipeLayout.access$500(SwipeLayout.this).getLeft() - (SwipeLayout.access$800(SwipeLayout.this)).left) / SwipeLayout.access$900(SwipeLayout.this).getWidth();
      case 2:
        return ((SwipeLayout.access$800(SwipeLayout.this)).left - SwipeLayout.access$500(SwipeLayout.this).getLeft()) / SwipeLayout.access$900(SwipeLayout.this).getWidth();
      case 4:
        return (SwipeLayout.access$500(SwipeLayout.this).getTop() - (SwipeLayout.access$800(SwipeLayout.this)).top) / SwipeLayout.access$900(SwipeLayout.this).getHeight();
      case 8:
        break;
    } 
    return ((SwipeLayout.access$800(SwipeLayout.this)).top - SwipeLayout.access$500(SwipeLayout.this).getTop()) / SwipeLayout.access$900(SwipeLayout.this).getHeight();
  }
  
  public int clampViewPositionHorizontal(View paramView, int paramInt1, int paramInt2) {
    switch (SwipeLayout.access$700(SwipeLayout.this)) {
      default:
        return paramView.getLeft();
      case 2:
        return Math.max(Math.min(paramInt1, (SwipeLayout.access$800(SwipeLayout.this)).left), (SwipeLayout.access$800(SwipeLayout.this)).left - SwipeLayout.access$900(SwipeLayout.this).getWidth());
      case 1:
        break;
    } 
    return Math.max(Math.min(paramInt1, (SwipeLayout.access$800(SwipeLayout.this)).left + SwipeLayout.access$900(SwipeLayout.this).getWidth()), (SwipeLayout.access$800(SwipeLayout.this)).left);
  }
  
  public int clampViewPositionVertical(View paramView, int paramInt1, int paramInt2) {
    switch (SwipeLayout.access$700(SwipeLayout.this)) {
      default:
        return paramView.getTop();
      case 4:
        return Math.max(Math.min(paramInt1, (SwipeLayout.access$800(SwipeLayout.this)).top + SwipeLayout.access$900(SwipeLayout.this).getHeight()), (SwipeLayout.access$800(SwipeLayout.this)).top);
      case 8:
        break;
    } 
    return Math.max(Math.min(paramInt1, (SwipeLayout.access$800(SwipeLayout.this)).top), (SwipeLayout.access$800(SwipeLayout.this)).top - SwipeLayout.access$900(SwipeLayout.this).getHeight());
  }
  
  public void onEdgeDragStarted(int paramInt1, int paramInt2) {
    boolean bool = true;
    super.onEdgeDragStarted(paramInt1, paramInt2);
    if (!SwipeLayout.access$400(SwipeLayout.this)) {
      boolean bool1;
      boolean bool2;
      boolean bool3;
      if (SwipeLayout.access$700(SwipeLayout.this) == 2 && paramInt1 == 1) {
        bool1 = true;
      } else {
        bool1 = false;
      } 
      if (SwipeLayout.access$700(SwipeLayout.this) == 1 && paramInt1 == 2) {
        bool2 = true;
      } else {
        bool2 = false;
      } 
      if (SwipeLayout.access$700(SwipeLayout.this) == 8 && paramInt1 == 4) {
        bool3 = true;
      } else {
        bool3 = false;
      } 
      if (SwipeLayout.access$700(SwipeLayout.this) == 4 && paramInt1 == 8) {
        paramInt1 = bool;
      } else {
        paramInt1 = 0;
      } 
      if (bool1 || bool2 || bool3 || paramInt1 != 0) {
        SwipeLayout.access$600(SwipeLayout.this).captureChildView(SwipeLayout.access$500(SwipeLayout.this), paramInt2);
        return;
      } 
    } 
  }
  
  public void onViewDragStateChanged(int paramInt) {
    super.onViewDragStateChanged(paramInt);
    int i = SwipeLayout.access$1900(SwipeLayout.this);
    switch (paramInt) {
      default:
        if (SwipeLayout.access$2000(SwipeLayout.this) != null && !SwipeLayout.access$300(SwipeLayout.this) && i != SwipeLayout.access$1900(SwipeLayout.this))
          SwipeLayout.access$2000(SwipeLayout.this).onDragStateChanged(SwipeLayout.access$1900(SwipeLayout.this)); 
        return;
      case 1:
        SwipeLayout.access$1902(SwipeLayout.this, 4);
      case 0:
        break;
    } 
    if (SwipeLayout.access$700(SwipeLayout.this) == 1 || SwipeLayout.access$700(SwipeLayout.this) == 2) {
      if (SwipeLayout.access$500(SwipeLayout.this).getLeft() == (SwipeLayout.access$800(SwipeLayout.this)).left)
        SwipeLayout.access$1902(SwipeLayout.this, 0); 
      SwipeLayout.access$1902(SwipeLayout.this, 2);
    } 
    if (SwipeLayout.access$500(SwipeLayout.this).getTop() == (SwipeLayout.access$800(SwipeLayout.this)).top)
      SwipeLayout.access$1902(SwipeLayout.this, 0); 
    SwipeLayout.access$1902(SwipeLayout.this, 2);
  }
  
  public void onViewPositionChanged(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    boolean bool = true;
    super.onViewPositionChanged(paramView, paramInt1, paramInt2, paramInt3, paramInt4);
    if (SwipeLayout.access$1400(SwipeLayout.this) == 1)
      if (SwipeLayout.access$700(SwipeLayout.this) == 1 || SwipeLayout.access$700(SwipeLayout.this) == 2) {
        SwipeLayout.access$900(SwipeLayout.this).offsetLeftAndRight(paramInt3);
      } else {
        SwipeLayout.access$900(SwipeLayout.this).offsetTopAndBottom(paramInt4);
      }  
    paramInt1 = bool;
    if (SwipeLayout.access$500(SwipeLayout.this).getLeft() == SwipeLayout.access$1500(SwipeLayout.this))
      if (SwipeLayout.access$500(SwipeLayout.this).getTop() != SwipeLayout.access$1600(SwipeLayout.this)) {
        paramInt1 = bool;
      } else {
        paramInt1 = 0;
      }  
    if (SwipeLayout.access$1700(SwipeLayout.this) != null && paramInt1 != 0)
      if (SwipeLayout.access$500(SwipeLayout.this).getLeft() == (SwipeLayout.access$800(SwipeLayout.this)).left && SwipeLayout.access$500(SwipeLayout.this).getTop() == (SwipeLayout.access$800(SwipeLayout.this)).top) {
        SwipeLayout.access$1700(SwipeLayout.this).onClosed(SwipeLayout.this);
      } else if (SwipeLayout.access$500(SwipeLayout.this).getLeft() == (SwipeLayout.access$1800(SwipeLayout.this)).left && SwipeLayout.access$500(SwipeLayout.this).getTop() == (SwipeLayout.access$1800(SwipeLayout.this)).top) {
        SwipeLayout.access$1700(SwipeLayout.this).onOpened(SwipeLayout.this);
      } else {
        SwipeLayout.access$1700(SwipeLayout.this).onSlide(SwipeLayout.this, getSlideOffset());
      }  
    SwipeLayout.access$1502(SwipeLayout.this, SwipeLayout.access$500(SwipeLayout.this).getLeft());
    SwipeLayout.access$1602(SwipeLayout.this, SwipeLayout.access$500(SwipeLayout.this).getTop());
    ViewCompat.postInvalidateOnAnimation((View)SwipeLayout.this);
  }
  
  public void onViewReleased(View paramView, float paramFloat1, float paramFloat2) {
    boolean bool1;
    boolean bool2;
    boolean bool3;
    boolean bool4 = false;
    if (SwipeLayout.access$1000(SwipeLayout.this, (int)paramFloat1) >= SwipeLayout.access$1100(SwipeLayout.this)) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    if (SwipeLayout.access$1000(SwipeLayout.this, (int)paramFloat1) <= -SwipeLayout.access$1100(SwipeLayout.this)) {
      bool2 = true;
    } else {
      bool2 = false;
    } 
    if (SwipeLayout.access$1000(SwipeLayout.this, (int)paramFloat2) <= -SwipeLayout.access$1100(SwipeLayout.this)) {
      bool3 = true;
    } else {
      bool3 = false;
    } 
    if (SwipeLayout.access$1000(SwipeLayout.this, (int)paramFloat2) >= SwipeLayout.access$1100(SwipeLayout.this))
      bool4 = true; 
    int i = SwipeLayout.access$1200(SwipeLayout.this);
    int j = SwipeLayout.access$1300(SwipeLayout.this);
    switch (SwipeLayout.access$700(SwipeLayout.this)) {
      default:
        return;
      case 2:
        if (bool1) {
          SwipeLayout.this.close(true);
          return;
        } 
        if (bool2) {
          SwipeLayout.this.open(true);
          return;
        } 
        if (SwipeLayout.access$500(SwipeLayout.this).getRight() < i) {
          SwipeLayout.this.open(true);
          return;
        } 
        SwipeLayout.this.close(true);
        return;
      case 1:
        if (bool1) {
          SwipeLayout.this.open(true);
          return;
        } 
        if (bool2) {
          SwipeLayout.this.close(true);
          return;
        } 
        if (SwipeLayout.access$500(SwipeLayout.this).getLeft() < i) {
          SwipeLayout.this.close(true);
          return;
        } 
        SwipeLayout.this.open(true);
        return;
      case 4:
        if (bool3) {
          SwipeLayout.this.close(true);
          return;
        } 
        if (bool4) {
          SwipeLayout.this.open(true);
          return;
        } 
        if (SwipeLayout.access$500(SwipeLayout.this).getTop() < j) {
          SwipeLayout.this.close(true);
          return;
        } 
        SwipeLayout.this.open(true);
        return;
      case 8:
        break;
    } 
    if (bool3) {
      SwipeLayout.this.open(true);
      return;
    } 
    if (bool4) {
      SwipeLayout.this.close(true);
      return;
    } 
    if (SwipeLayout.access$500(SwipeLayout.this).getBottom() < j) {
      SwipeLayout.this.open(true);
      return;
    } 
    SwipeLayout.this.close(true);
  }
  
  public boolean tryCaptureView(View paramView, int paramInt) {
    SwipeLayout.access$302(SwipeLayout.this, false);
    if (SwipeLayout.access$400(SwipeLayout.this))
      return false; 
    SwipeLayout.access$600(SwipeLayout.this).captureChildView(SwipeLayout.access$500(SwipeLayout.this), paramInt);
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\customView\SwipeLayout$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */