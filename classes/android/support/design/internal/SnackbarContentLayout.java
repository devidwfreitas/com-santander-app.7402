package android.support.design.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.annotation.RestrictTo;
import android.support.design.R;
import android.support.design.widget.BaseTransientBottomBar;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class SnackbarContentLayout extends LinearLayout implements BaseTransientBottomBar.ContentViewCallback {
  private Button mActionView;
  
  private int mMaxInlineActionWidth;
  
  private int mMaxWidth;
  
  private TextView mMessageView;
  
  public SnackbarContentLayout(Context paramContext) {
    this(paramContext, (AttributeSet)null);
  }
  
  public SnackbarContentLayout(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    TypedArray typedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.SnackbarLayout);
    this.mMaxWidth = typedArray.getDimensionPixelSize(R.styleable.SnackbarLayout_android_maxWidth, -1);
    this.mMaxInlineActionWidth = typedArray.getDimensionPixelSize(R.styleable.SnackbarLayout_maxActionInlineWidth, -1);
    typedArray.recycle();
  }
  
  private static void updateTopBottomPadding(View paramView, int paramInt1, int paramInt2) {
    if (ViewCompat.isPaddingRelative(paramView)) {
      ViewCompat.setPaddingRelative(paramView, ViewCompat.getPaddingStart(paramView), paramInt1, ViewCompat.getPaddingEnd(paramView), paramInt2);
      return;
    } 
    paramView.setPadding(paramView.getPaddingLeft(), paramInt1, paramView.getPaddingRight(), paramInt2);
  }
  
  private boolean updateViewsWithinLayout(int paramInt1, int paramInt2, int paramInt3) {
    boolean bool = false;
    if (paramInt1 != getOrientation()) {
      setOrientation(paramInt1);
      bool = true;
    } 
    if (this.mMessageView.getPaddingTop() != paramInt2 || this.mMessageView.getPaddingBottom() != paramInt3) {
      updateTopBottomPadding((View)this.mMessageView, paramInt2, paramInt3);
      bool = true;
    } 
    return bool;
  }
  
  public void animateContentIn(int paramInt1, int paramInt2) {
    ViewCompat.setAlpha((View)this.mMessageView, 0.0F);
    ViewCompat.animate((View)this.mMessageView).alpha(1.0F).setDuration(paramInt2).setStartDelay(paramInt1).start();
    if (this.mActionView.getVisibility() == 0) {
      ViewCompat.setAlpha((View)this.mActionView, 0.0F);
      ViewCompat.animate((View)this.mActionView).alpha(1.0F).setDuration(paramInt2).setStartDelay(paramInt1).start();
    } 
  }
  
  public void animateContentOut(int paramInt1, int paramInt2) {
    ViewCompat.setAlpha((View)this.mMessageView, 1.0F);
    ViewCompat.animate((View)this.mMessageView).alpha(0.0F).setDuration(paramInt2).setStartDelay(paramInt1).start();
    if (this.mActionView.getVisibility() == 0) {
      ViewCompat.setAlpha((View)this.mActionView, 1.0F);
      ViewCompat.animate((View)this.mActionView).alpha(0.0F).setDuration(paramInt2).setStartDelay(paramInt1).start();
    } 
  }
  
  public Button getActionView() {
    return this.mActionView;
  }
  
  public TextView getMessageView() {
    return this.mMessageView;
  }
  
  protected void onFinishInflate() {
    super.onFinishInflate();
    this.mMessageView = (TextView)findViewById(R.id.snackbar_text);
    this.mActionView = (Button)findViewById(R.id.snackbar_action);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2) {
    // Byte code:
    //   0: aload_0
    //   1: iload_1
    //   2: iload_2
    //   3: invokespecial onMeasure : (II)V
    //   6: iload_1
    //   7: istore_3
    //   8: aload_0
    //   9: getfield mMaxWidth : I
    //   12: ifle -> 44
    //   15: iload_1
    //   16: istore_3
    //   17: aload_0
    //   18: invokevirtual getMeasuredWidth : ()I
    //   21: aload_0
    //   22: getfield mMaxWidth : I
    //   25: if_icmple -> 44
    //   28: aload_0
    //   29: getfield mMaxWidth : I
    //   32: ldc 1073741824
    //   34: invokestatic makeMeasureSpec : (II)I
    //   37: istore_3
    //   38: aload_0
    //   39: iload_3
    //   40: iload_2
    //   41: invokespecial onMeasure : (II)V
    //   44: aload_0
    //   45: invokevirtual getResources : ()Landroid/content/res/Resources;
    //   48: getstatic android/support/design/R$dimen.design_snackbar_padding_vertical_2lines : I
    //   51: invokevirtual getDimensionPixelSize : (I)I
    //   54: istore #4
    //   56: aload_0
    //   57: invokevirtual getResources : ()Landroid/content/res/Resources;
    //   60: getstatic android/support/design/R$dimen.design_snackbar_padding_vertical : I
    //   63: invokevirtual getDimensionPixelSize : (I)I
    //   66: istore #5
    //   68: aload_0
    //   69: getfield mMessageView : Landroid/widget/TextView;
    //   72: invokevirtual getLayout : ()Landroid/text/Layout;
    //   75: invokevirtual getLineCount : ()I
    //   78: iconst_1
    //   79: if_icmple -> 137
    //   82: iconst_1
    //   83: istore_1
    //   84: iload_1
    //   85: ifeq -> 142
    //   88: aload_0
    //   89: getfield mMaxInlineActionWidth : I
    //   92: ifle -> 142
    //   95: aload_0
    //   96: getfield mActionView : Landroid/widget/Button;
    //   99: invokevirtual getMeasuredWidth : ()I
    //   102: aload_0
    //   103: getfield mMaxInlineActionWidth : I
    //   106: if_icmple -> 142
    //   109: aload_0
    //   110: iconst_1
    //   111: iload #4
    //   113: iload #4
    //   115: iload #5
    //   117: isub
    //   118: invokespecial updateViewsWithinLayout : (III)Z
    //   121: ifeq -> 170
    //   124: iconst_1
    //   125: istore_1
    //   126: iload_1
    //   127: ifeq -> 136
    //   130: aload_0
    //   131: iload_3
    //   132: iload_2
    //   133: invokespecial onMeasure : (II)V
    //   136: return
    //   137: iconst_0
    //   138: istore_1
    //   139: goto -> 84
    //   142: iload_1
    //   143: ifeq -> 164
    //   146: iload #4
    //   148: istore_1
    //   149: aload_0
    //   150: iconst_0
    //   151: iload_1
    //   152: iload_1
    //   153: invokespecial updateViewsWithinLayout : (III)Z
    //   156: ifeq -> 170
    //   159: iconst_1
    //   160: istore_1
    //   161: goto -> 126
    //   164: iload #5
    //   166: istore_1
    //   167: goto -> 149
    //   170: iconst_0
    //   171: istore_1
    //   172: goto -> 126
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\internal\SnackbarContentLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */