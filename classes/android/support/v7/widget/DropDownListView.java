package android.support.v7.widget;

import android.content.Context;
import android.os.Build;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.widget.ListViewAutoScrollHelper;
import android.support.v7.appcompat.R;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;

class DropDownListView extends ListViewCompat {
  private ViewPropertyAnimatorCompat mClickAnimation;
  
  private boolean mDrawsInPressedState;
  
  private boolean mHijackFocus;
  
  private boolean mListSelectionHidden;
  
  private ListViewAutoScrollHelper mScrollHelper;
  
  public DropDownListView(Context paramContext, boolean paramBoolean) {
    super(paramContext, (AttributeSet)null, R.attr.dropDownListViewStyle);
    this.mHijackFocus = paramBoolean;
    setCacheColorHint(0);
  }
  
  private void clearPressedItem() {
    this.mDrawsInPressedState = false;
    setPressed(false);
    drawableStateChanged();
    View view = getChildAt(this.mMotionPosition - getFirstVisiblePosition());
    if (view != null)
      view.setPressed(false); 
    if (this.mClickAnimation != null) {
      this.mClickAnimation.cancel();
      this.mClickAnimation = null;
    } 
  }
  
  private void clickPressedItem(View paramView, int paramInt) {
    performItemClick(paramView, paramInt, getItemIdAtPosition(paramInt));
  }
  
  private void setPressedItem(View paramView, int paramInt, float paramFloat1, float paramFloat2) {
    this.mDrawsInPressedState = true;
    if (Build.VERSION.SDK_INT >= 21)
      drawableHotspotChanged(paramFloat1, paramFloat2); 
    if (!isPressed())
      setPressed(true); 
    layoutChildren();
    if (this.mMotionPosition != -1) {
      View view = getChildAt(this.mMotionPosition - getFirstVisiblePosition());
      if (view != null && view != paramView && view.isPressed())
        view.setPressed(false); 
    } 
    this.mMotionPosition = paramInt;
    float f1 = paramView.getLeft();
    float f2 = paramView.getTop();
    if (Build.VERSION.SDK_INT >= 21)
      paramView.drawableHotspotChanged(paramFloat1 - f1, paramFloat2 - f2); 
    if (!paramView.isPressed())
      paramView.setPressed(true); 
    positionSelectorLikeTouchCompat(paramInt, paramView, paramFloat1, paramFloat2);
    setSelectorEnabled(false);
    refreshDrawableState();
  }
  
  public boolean hasFocus() {
    return (this.mHijackFocus || super.hasFocus());
  }
  
  public boolean hasWindowFocus() {
    return (this.mHijackFocus || super.hasWindowFocus());
  }
  
  public boolean isFocused() {
    return (this.mHijackFocus || super.isFocused());
  }
  
  public boolean isInTouchMode() {
    return ((this.mHijackFocus && this.mListSelectionHidden) || super.isInTouchMode());
  }
  
  public boolean onForwardedEvent(MotionEvent paramMotionEvent, int paramInt) {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic getActionMasked : (Landroid/view/MotionEvent;)I
    //   4: istore_3
    //   5: iload_3
    //   6: tableswitch default -> 32, 1 -> 104, 2 -> 225, 3 -> 96
    //   32: iconst_0
    //   33: istore_2
    //   34: iconst_1
    //   35: istore #6
    //   37: iload #6
    //   39: ifeq -> 46
    //   42: iload_2
    //   43: ifeq -> 50
    //   46: aload_0
    //   47: invokespecial clearPressedItem : ()V
    //   50: iload #6
    //   52: ifeq -> 206
    //   55: aload_0
    //   56: getfield mScrollHelper : Landroid/support/v4/widget/ListViewAutoScrollHelper;
    //   59: ifnonnull -> 74
    //   62: aload_0
    //   63: new android/support/v4/widget/ListViewAutoScrollHelper
    //   66: dup
    //   67: aload_0
    //   68: invokespecial <init> : (Landroid/widget/ListView;)V
    //   71: putfield mScrollHelper : Landroid/support/v4/widget/ListViewAutoScrollHelper;
    //   74: aload_0
    //   75: getfield mScrollHelper : Landroid/support/v4/widget/ListViewAutoScrollHelper;
    //   78: iconst_1
    //   79: invokevirtual setEnabled : (Z)Landroid/support/v4/widget/AutoScrollHelper;
    //   82: pop
    //   83: aload_0
    //   84: getfield mScrollHelper : Landroid/support/v4/widget/ListViewAutoScrollHelper;
    //   87: aload_0
    //   88: aload_1
    //   89: invokevirtual onTouch : (Landroid/view/View;Landroid/view/MotionEvent;)Z
    //   92: pop
    //   93: iload #6
    //   95: ireturn
    //   96: iconst_0
    //   97: istore_2
    //   98: iconst_0
    //   99: istore #6
    //   101: goto -> 37
    //   104: iconst_0
    //   105: istore #6
    //   107: aload_1
    //   108: iload_2
    //   109: invokevirtual findPointerIndex : (I)I
    //   112: istore #4
    //   114: iload #4
    //   116: ifge -> 127
    //   119: iconst_0
    //   120: istore_2
    //   121: iconst_0
    //   122: istore #6
    //   124: goto -> 37
    //   127: aload_1
    //   128: iload #4
    //   130: invokevirtual getX : (I)F
    //   133: f2i
    //   134: istore_2
    //   135: aload_1
    //   136: iload #4
    //   138: invokevirtual getY : (I)F
    //   141: f2i
    //   142: istore #4
    //   144: aload_0
    //   145: iload_2
    //   146: iload #4
    //   148: invokevirtual pointToPosition : (II)I
    //   151: istore #5
    //   153: iload #5
    //   155: iconst_m1
    //   156: if_icmpne -> 164
    //   159: iconst_1
    //   160: istore_2
    //   161: goto -> 37
    //   164: aload_0
    //   165: iload #5
    //   167: aload_0
    //   168: invokevirtual getFirstVisiblePosition : ()I
    //   171: isub
    //   172: invokevirtual getChildAt : (I)Landroid/view/View;
    //   175: astore #7
    //   177: aload_0
    //   178: aload #7
    //   180: iload #5
    //   182: iload_2
    //   183: i2f
    //   184: iload #4
    //   186: i2f
    //   187: invokespecial setPressedItem : (Landroid/view/View;IFF)V
    //   190: iload_3
    //   191: iconst_1
    //   192: if_icmpne -> 32
    //   195: aload_0
    //   196: aload #7
    //   198: iload #5
    //   200: invokespecial clickPressedItem : (Landroid/view/View;I)V
    //   203: goto -> 32
    //   206: aload_0
    //   207: getfield mScrollHelper : Landroid/support/v4/widget/ListViewAutoScrollHelper;
    //   210: ifnull -> 93
    //   213: aload_0
    //   214: getfield mScrollHelper : Landroid/support/v4/widget/ListViewAutoScrollHelper;
    //   217: iconst_0
    //   218: invokevirtual setEnabled : (Z)Landroid/support/v4/widget/AutoScrollHelper;
    //   221: pop
    //   222: iload #6
    //   224: ireturn
    //   225: iconst_1
    //   226: istore #6
    //   228: goto -> 107
  }
  
  void setListSelectionHidden(boolean paramBoolean) {
    this.mListSelectionHidden = paramBoolean;
  }
  
  protected boolean touchModeDrawsInPressedStateCompat() {
    return (this.mDrawsInPressedState || super.touchModeDrawsInPressedStateCompat());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\DropDownListView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */