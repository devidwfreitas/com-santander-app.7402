package android.support.v4.widget;

import android.view.View;

class SlidingPaneLayout$DragHelperCallback extends ViewDragHelper$Callback {
  public int clampViewPositionHorizontal(View paramView, int paramInt1, int paramInt2) {
    SlidingPaneLayout$LayoutParams slidingPaneLayout$LayoutParams = (SlidingPaneLayout$LayoutParams)SlidingPaneLayout.this.mSlideableView.getLayoutParams();
    if (SlidingPaneLayout.this.isLayoutRtlSupport()) {
      paramInt2 = SlidingPaneLayout.this.getWidth();
      int j = SlidingPaneLayout.this.getPaddingRight();
      paramInt2 -= slidingPaneLayout$LayoutParams.rightMargin + j + SlidingPaneLayout.this.mSlideableView.getWidth();
      j = SlidingPaneLayout.this.mSlideRange;
      return Math.max(Math.min(paramInt1, paramInt2), paramInt2 - j);
    } 
    paramInt2 = SlidingPaneLayout.this.getPaddingLeft();
    paramInt2 = slidingPaneLayout$LayoutParams.leftMargin + paramInt2;
    int i = SlidingPaneLayout.this.mSlideRange;
    return Math.min(Math.max(paramInt1, paramInt2), i + paramInt2);
  }
  
  public int clampViewPositionVertical(View paramView, int paramInt1, int paramInt2) {
    return paramView.getTop();
  }
  
  public int getViewHorizontalDragRange(View paramView) {
    return SlidingPaneLayout.this.mSlideRange;
  }
  
  public void onEdgeDragStarted(int paramInt1, int paramInt2) {
    SlidingPaneLayout.this.mDragHelper.captureChildView(SlidingPaneLayout.this.mSlideableView, paramInt2);
  }
  
  public void onViewCaptured(View paramView, int paramInt) {
    SlidingPaneLayout.this.setAllChildrenVisible();
  }
  
  public void onViewDragStateChanged(int paramInt) {
    if (SlidingPaneLayout.this.mDragHelper.getViewDragState() == 0) {
      if (SlidingPaneLayout.this.mSlideOffset == 0.0F) {
        SlidingPaneLayout.this.updateObscuredViewsVisibility(SlidingPaneLayout.this.mSlideableView);
        SlidingPaneLayout.this.dispatchOnPanelClosed(SlidingPaneLayout.this.mSlideableView);
        SlidingPaneLayout.this.mPreservedOpenState = false;
        return;
      } 
    } else {
      return;
    } 
    SlidingPaneLayout.this.dispatchOnPanelOpened(SlidingPaneLayout.this.mSlideableView);
    SlidingPaneLayout.this.mPreservedOpenState = true;
  }
  
  public void onViewPositionChanged(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    SlidingPaneLayout.this.onPanelDragged(paramInt1);
    SlidingPaneLayout.this.invalidate();
  }
  
  public void onViewReleased(View paramView, float paramFloat1, float paramFloat2) {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual getLayoutParams : ()Landroid/view/ViewGroup$LayoutParams;
    //   4: checkcast android/support/v4/widget/SlidingPaneLayout$LayoutParams
    //   7: astore #6
    //   9: aload_0
    //   10: getfield this$0 : Landroid/support/v4/widget/SlidingPaneLayout;
    //   13: invokevirtual isLayoutRtlSupport : ()Z
    //   16: ifeq -> 135
    //   19: aload_0
    //   20: getfield this$0 : Landroid/support/v4/widget/SlidingPaneLayout;
    //   23: invokevirtual getPaddingRight : ()I
    //   26: istore #4
    //   28: aload #6
    //   30: getfield rightMargin : I
    //   33: iload #4
    //   35: iadd
    //   36: istore #5
    //   38: fload_2
    //   39: fconst_0
    //   40: fcmpg
    //   41: iflt -> 71
    //   44: iload #5
    //   46: istore #4
    //   48: fload_2
    //   49: fconst_0
    //   50: fcmpl
    //   51: ifne -> 83
    //   54: iload #5
    //   56: istore #4
    //   58: aload_0
    //   59: getfield this$0 : Landroid/support/v4/widget/SlidingPaneLayout;
    //   62: getfield mSlideOffset : F
    //   65: ldc 0.5
    //   67: fcmpl
    //   68: ifle -> 83
    //   71: iload #5
    //   73: aload_0
    //   74: getfield this$0 : Landroid/support/v4/widget/SlidingPaneLayout;
    //   77: getfield mSlideRange : I
    //   80: iadd
    //   81: istore #4
    //   83: aload_0
    //   84: getfield this$0 : Landroid/support/v4/widget/SlidingPaneLayout;
    //   87: getfield mSlideableView : Landroid/view/View;
    //   90: invokevirtual getWidth : ()I
    //   93: istore #5
    //   95: aload_0
    //   96: getfield this$0 : Landroid/support/v4/widget/SlidingPaneLayout;
    //   99: invokevirtual getWidth : ()I
    //   102: iload #4
    //   104: isub
    //   105: iload #5
    //   107: isub
    //   108: istore #4
    //   110: aload_0
    //   111: getfield this$0 : Landroid/support/v4/widget/SlidingPaneLayout;
    //   114: getfield mDragHelper : Landroid/support/v4/widget/ViewDragHelper;
    //   117: iload #4
    //   119: aload_1
    //   120: invokevirtual getTop : ()I
    //   123: invokevirtual settleCapturedViewAt : (II)Z
    //   126: pop
    //   127: aload_0
    //   128: getfield this$0 : Landroid/support/v4/widget/SlidingPaneLayout;
    //   131: invokevirtual invalidate : ()V
    //   134: return
    //   135: aload_0
    //   136: getfield this$0 : Landroid/support/v4/widget/SlidingPaneLayout;
    //   139: invokevirtual getPaddingLeft : ()I
    //   142: istore #4
    //   144: aload #6
    //   146: getfield leftMargin : I
    //   149: iload #4
    //   151: iadd
    //   152: istore #5
    //   154: fload_2
    //   155: fconst_0
    //   156: fcmpl
    //   157: ifgt -> 187
    //   160: iload #5
    //   162: istore #4
    //   164: fload_2
    //   165: fconst_0
    //   166: fcmpl
    //   167: ifne -> 110
    //   170: iload #5
    //   172: istore #4
    //   174: aload_0
    //   175: getfield this$0 : Landroid/support/v4/widget/SlidingPaneLayout;
    //   178: getfield mSlideOffset : F
    //   181: ldc 0.5
    //   183: fcmpl
    //   184: ifle -> 110
    //   187: iload #5
    //   189: aload_0
    //   190: getfield this$0 : Landroid/support/v4/widget/SlidingPaneLayout;
    //   193: getfield mSlideRange : I
    //   196: iadd
    //   197: istore #4
    //   199: goto -> 110
  }
  
  public boolean tryCaptureView(View paramView, int paramInt) {
    return SlidingPaneLayout.this.mIsUnableToDrag ? false : ((SlidingPaneLayout$LayoutParams)paramView.getLayoutParams()).slideable;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\SlidingPaneLayout$DragHelperCallback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */