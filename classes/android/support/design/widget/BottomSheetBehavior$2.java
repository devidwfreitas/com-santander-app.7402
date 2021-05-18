package android.support.design.widget;

import android.support.v4.view.ViewCompat;
import android.support.v4.widget.ViewDragHelper;
import android.view.View;

class BottomSheetBehavior$2 extends ViewDragHelper.Callback {
  public int clampViewPositionHorizontal(View paramView, int paramInt1, int paramInt2) {
    return paramView.getLeft();
  }
  
  public int clampViewPositionVertical(View paramView, int paramInt1, int paramInt2) {
    int i = BottomSheetBehavior.this.mMinOffset;
    if (BottomSheetBehavior.this.mHideable) {
      paramInt2 = BottomSheetBehavior.this.mParentHeight;
      return MathUtils.constrain(paramInt1, i, paramInt2);
    } 
    paramInt2 = BottomSheetBehavior.this.mMaxOffset;
    return MathUtils.constrain(paramInt1, i, paramInt2);
  }
  
  public int getViewVerticalDragRange(View paramView) {
    return BottomSheetBehavior.this.mHideable ? (BottomSheetBehavior.this.mParentHeight - BottomSheetBehavior.this.mMinOffset) : (BottomSheetBehavior.this.mMaxOffset - BottomSheetBehavior.this.mMinOffset);
  }
  
  public void onViewDragStateChanged(int paramInt) {
    if (paramInt == 1)
      BottomSheetBehavior.this.setStateInternal(1); 
  }
  
  public void onViewPositionChanged(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    BottomSheetBehavior.this.dispatchOnSlide(paramInt2);
  }
  
  public void onViewReleased(View paramView, float paramFloat1, float paramFloat2) {
    int i;
    byte b = 3;
    if (paramFloat2 < 0.0F) {
      i = BottomSheetBehavior.this.mMinOffset;
    } else if (BottomSheetBehavior.this.mHideable && BottomSheetBehavior.this.shouldHide(paramView, paramFloat2)) {
      i = BottomSheetBehavior.this.mParentHeight;
      b = 5;
    } else if (paramFloat2 == 0.0F) {
      i = paramView.getTop();
      if (Math.abs(i - BottomSheetBehavior.this.mMinOffset) < Math.abs(i - BottomSheetBehavior.this.mMaxOffset)) {
        i = BottomSheetBehavior.this.mMinOffset;
      } else {
        i = BottomSheetBehavior.this.mMaxOffset;
        b = 4;
      } 
    } else {
      i = BottomSheetBehavior.this.mMaxOffset;
      b = 4;
    } 
    if (BottomSheetBehavior.this.mViewDragHelper.settleCapturedViewAt(paramView.getLeft(), i)) {
      BottomSheetBehavior.this.setStateInternal(2);
      ViewCompat.postOnAnimation(paramView, new BottomSheetBehavior$SettleRunnable(BottomSheetBehavior.this, paramView, b));
      return;
    } 
    BottomSheetBehavior.this.setStateInternal(b);
  }
  
  public boolean tryCaptureView(View paramView, int paramInt) {
    // Byte code:
    //   0: aload_0
    //   1: getfield this$0 : Landroid/support/design/widget/BottomSheetBehavior;
    //   4: getfield mState : I
    //   7: iconst_1
    //   8: if_icmpne -> 13
    //   11: iconst_0
    //   12: ireturn
    //   13: aload_0
    //   14: getfield this$0 : Landroid/support/design/widget/BottomSheetBehavior;
    //   17: getfield mTouchingScrollingChild : Z
    //   20: ifne -> 11
    //   23: aload_0
    //   24: getfield this$0 : Landroid/support/design/widget/BottomSheetBehavior;
    //   27: getfield mState : I
    //   30: iconst_3
    //   31: if_icmpne -> 74
    //   34: aload_0
    //   35: getfield this$0 : Landroid/support/design/widget/BottomSheetBehavior;
    //   38: getfield mActivePointerId : I
    //   41: iload_2
    //   42: if_icmpne -> 74
    //   45: aload_0
    //   46: getfield this$0 : Landroid/support/design/widget/BottomSheetBehavior;
    //   49: getfield mNestedScrollingChildRef : Ljava/lang/ref/WeakReference;
    //   52: invokevirtual get : ()Ljava/lang/Object;
    //   55: checkcast android/view/View
    //   58: astore #4
    //   60: aload #4
    //   62: ifnull -> 74
    //   65: aload #4
    //   67: iconst_m1
    //   68: invokestatic canScrollVertically : (Landroid/view/View;I)Z
    //   71: ifne -> 11
    //   74: aload_0
    //   75: getfield this$0 : Landroid/support/design/widget/BottomSheetBehavior;
    //   78: getfield mViewRef : Ljava/lang/ref/WeakReference;
    //   81: ifnull -> 102
    //   84: aload_0
    //   85: getfield this$0 : Landroid/support/design/widget/BottomSheetBehavior;
    //   88: getfield mViewRef : Ljava/lang/ref/WeakReference;
    //   91: invokevirtual get : ()Ljava/lang/Object;
    //   94: aload_1
    //   95: if_acmpne -> 102
    //   98: iconst_1
    //   99: istore_3
    //   100: iload_3
    //   101: ireturn
    //   102: iconst_0
    //   103: istore_3
    //   104: goto -> 100
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\BottomSheetBehavior$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */