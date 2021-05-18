package android.support.v4.widget;

import android.view.View;

class DrawerLayout$ViewDragCallback extends ViewDragHelper$Callback {
  private final int mAbsGravity;
  
  private ViewDragHelper mDragger;
  
  private final Runnable mPeekRunnable = new DrawerLayout$ViewDragCallback$1(this);
  
  DrawerLayout$ViewDragCallback(int paramInt) {
    this.mAbsGravity = paramInt;
  }
  
  private void closeOtherDrawer() {
    byte b = 3;
    if (this.mAbsGravity == 3)
      b = 5; 
    View view = DrawerLayout.this.findDrawerWithGravity(b);
    if (view != null)
      DrawerLayout.this.closeDrawer(view); 
  }
  
  public int clampViewPositionHorizontal(View paramView, int paramInt1, int paramInt2) {
    if (DrawerLayout.this.checkDrawerViewAbsoluteGravity(paramView, 3))
      return Math.max(-paramView.getWidth(), Math.min(paramInt1, 0)); 
    paramInt2 = DrawerLayout.this.getWidth();
    return Math.max(paramInt2 - paramView.getWidth(), Math.min(paramInt1, paramInt2));
  }
  
  public int clampViewPositionVertical(View paramView, int paramInt1, int paramInt2) {
    return paramView.getTop();
  }
  
  public int getViewHorizontalDragRange(View paramView) {
    return DrawerLayout.this.isDrawerView(paramView) ? paramView.getWidth() : 0;
  }
  
  public void onEdgeDragStarted(int paramInt1, int paramInt2) {
    View view;
    if ((paramInt1 & 0x1) == 1) {
      view = DrawerLayout.this.findDrawerWithGravity(3);
    } else {
      view = DrawerLayout.this.findDrawerWithGravity(5);
    } 
    if (view != null && DrawerLayout.this.getDrawerLockMode(view) == 0)
      this.mDragger.captureChildView(view, paramInt2); 
  }
  
  public boolean onEdgeLock(int paramInt) {
    return false;
  }
  
  public void onEdgeTouched(int paramInt1, int paramInt2) {
    DrawerLayout.this.postDelayed(this.mPeekRunnable, 160L);
  }
  
  public void onViewCaptured(View paramView, int paramInt) {
    ((DrawerLayout$LayoutParams)paramView.getLayoutParams()).isPeeking = false;
    closeOtherDrawer();
  }
  
  public void onViewDragStateChanged(int paramInt) {
    DrawerLayout.this.updateDrawerState(this.mAbsGravity, paramInt, this.mDragger.getCapturedView());
  }
  
  public void onViewPositionChanged(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    float f;
    paramInt2 = paramView.getWidth();
    if (DrawerLayout.this.checkDrawerViewAbsoluteGravity(paramView, 3)) {
      f = (paramInt2 + paramInt1) / paramInt2;
    } else {
      f = (DrawerLayout.this.getWidth() - paramInt1) / paramInt2;
    } 
    DrawerLayout.this.setDrawerViewOffset(paramView, f);
    if (f == 0.0F) {
      paramInt1 = 4;
    } else {
      paramInt1 = 0;
    } 
    paramView.setVisibility(paramInt1);
    DrawerLayout.this.invalidate();
  }
  
  public void onViewReleased(View paramView, float paramFloat1, float paramFloat2) {
    // Byte code:
    //   0: aload_0
    //   1: getfield this$0 : Landroid/support/v4/widget/DrawerLayout;
    //   4: aload_1
    //   5: invokevirtual getDrawerViewOffset : (Landroid/view/View;)F
    //   8: fstore_3
    //   9: aload_1
    //   10: invokevirtual getWidth : ()I
    //   13: istore #6
    //   15: aload_0
    //   16: getfield this$0 : Landroid/support/v4/widget/DrawerLayout;
    //   19: aload_1
    //   20: iconst_3
    //   21: invokevirtual checkDrawerViewAbsoluteGravity : (Landroid/view/View;I)Z
    //   24: ifeq -> 79
    //   27: fload_2
    //   28: fconst_0
    //   29: fcmpl
    //   30: ifgt -> 46
    //   33: fload_2
    //   34: fconst_0
    //   35: fcmpl
    //   36: ifne -> 71
    //   39: fload_3
    //   40: ldc 0.5
    //   42: fcmpl
    //   43: ifle -> 71
    //   46: iconst_0
    //   47: istore #4
    //   49: aload_0
    //   50: getfield mDragger : Landroid/support/v4/widget/ViewDragHelper;
    //   53: iload #4
    //   55: aload_1
    //   56: invokevirtual getTop : ()I
    //   59: invokevirtual settleCapturedViewAt : (II)Z
    //   62: pop
    //   63: aload_0
    //   64: getfield this$0 : Landroid/support/v4/widget/DrawerLayout;
    //   67: invokevirtual invalidate : ()V
    //   70: return
    //   71: iload #6
    //   73: ineg
    //   74: istore #4
    //   76: goto -> 49
    //   79: aload_0
    //   80: getfield this$0 : Landroid/support/v4/widget/DrawerLayout;
    //   83: invokevirtual getWidth : ()I
    //   86: istore #5
    //   88: fload_2
    //   89: fconst_0
    //   90: fcmpg
    //   91: iflt -> 115
    //   94: iload #5
    //   96: istore #4
    //   98: fload_2
    //   99: fconst_0
    //   100: fcmpl
    //   101: ifne -> 49
    //   104: iload #5
    //   106: istore #4
    //   108: fload_3
    //   109: ldc 0.5
    //   111: fcmpl
    //   112: ifle -> 49
    //   115: iload #5
    //   117: iload #6
    //   119: isub
    //   120: istore #4
    //   122: goto -> 49
  }
  
  void peekDrawer() {
    boolean bool;
    View view;
    int i = 0;
    int j = this.mDragger.getEdgeSize();
    if (this.mAbsGravity == 3) {
      bool = true;
    } else {
      bool = false;
    } 
    if (bool) {
      view = DrawerLayout.this.findDrawerWithGravity(3);
      if (view != null)
        i = -view.getWidth(); 
      i += j;
    } else {
      view = DrawerLayout.this.findDrawerWithGravity(5);
      i = DrawerLayout.this.getWidth();
      i -= j;
    } 
    if (view != null && ((bool && view.getLeft() < i) || (!bool && view.getLeft() > i)) && DrawerLayout.this.getDrawerLockMode(view) == 0) {
      DrawerLayout$LayoutParams drawerLayout$LayoutParams = (DrawerLayout$LayoutParams)view.getLayoutParams();
      this.mDragger.smoothSlideViewTo(view, i, view.getTop());
      drawerLayout$LayoutParams.isPeeking = true;
      DrawerLayout.this.invalidate();
      closeOtherDrawer();
      DrawerLayout.this.cancelChildViewTouch();
    } 
  }
  
  public void removeCallbacks() {
    DrawerLayout.this.removeCallbacks(this.mPeekRunnable);
  }
  
  public void setDragger(ViewDragHelper paramViewDragHelper) {
    this.mDragger = paramViewDragHelper;
  }
  
  public boolean tryCaptureView(View paramView, int paramInt) {
    return (DrawerLayout.this.isDrawerView(paramView) && DrawerLayout.this.checkDrawerViewAbsoluteGravity(paramView, this.mAbsGravity) && DrawerLayout.this.getDrawerLockMode(paramView) == 0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\DrawerLayout$ViewDragCallback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */