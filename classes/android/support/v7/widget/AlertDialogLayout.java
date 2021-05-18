package android.support.v7.widget;

import android.content.Context;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class AlertDialogLayout extends LinearLayoutCompat {
  public AlertDialogLayout(@Nullable Context paramContext) {
    super(paramContext);
  }
  
  public AlertDialogLayout(@Nullable Context paramContext, @Nullable AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
  }
  
  private void forceUniformWidth(int paramInt1, int paramInt2) {
    int j = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
    for (int i = 0; i < paramInt1; i++) {
      View view = getChildAt(i);
      if (view.getVisibility() != 8) {
        LinearLayoutCompat$LayoutParams linearLayoutCompat$LayoutParams = (LinearLayoutCompat$LayoutParams)view.getLayoutParams();
        if (linearLayoutCompat$LayoutParams.width == -1) {
          int k = linearLayoutCompat$LayoutParams.height;
          linearLayoutCompat$LayoutParams.height = view.getMeasuredHeight();
          measureChildWithMargins(view, j, 0, paramInt2, 0);
          linearLayoutCompat$LayoutParams.height = k;
        } 
      } 
    } 
  }
  
  private static int resolveMinimumHeight(View paramView) {
    int i = ViewCompat.getMinimumHeight(paramView);
    if (i > 0)
      return i; 
    if (paramView instanceof ViewGroup) {
      ViewGroup viewGroup = (ViewGroup)paramView;
      if (viewGroup.getChildCount() == 1)
        return resolveMinimumHeight(viewGroup.getChildAt(0)); 
    } 
    return 0;
  }
  
  private void setChildFrame(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    paramView.layout(paramInt1, paramInt2, paramInt1 + paramInt3, paramInt2 + paramInt4);
  }
  
  private boolean tryOnMeasure(int paramInt1, int paramInt2) {
    byte b;
    View view1 = null;
    View view2 = null;
    int i1 = getChildCount();
    int i = 0;
    View view3 = null;
    while (i < i1) {
      View view = getChildAt(i);
      if (view.getVisibility() == 8) {
        view = view2;
        view2 = view1;
        view1 = view;
      } else {
        int i4 = view.getId();
        if (i4 == R.id.topPanel) {
          view1 = view2;
          view2 = view;
        } else if (i4 == R.id.buttonPanel) {
          view2 = view1;
          view1 = view;
        } else if (i4 == R.id.contentPanel || i4 == R.id.customPanel) {
          if (view3 != null)
            return false; 
          View view4 = view1;
          view3 = view;
          view1 = view2;
          view2 = view4;
        } else {
          return false;
        } 
      } 
      i++;
      view = view2;
      view2 = view1;
      view1 = view;
    } 
    int i3 = View.MeasureSpec.getMode(paramInt2);
    int n = View.MeasureSpec.getSize(paramInt2);
    int i2 = View.MeasureSpec.getMode(paramInt1);
    int k = 0;
    i = getPaddingTop();
    i = getPaddingBottom() + i;
    int j = i;
    if (view1 != null) {
      view1.measure(paramInt1, 0);
      j = i + view1.getMeasuredHeight();
      k = ViewCompat.combineMeasuredStates(0, ViewCompat.getMeasuredState(view1));
    } 
    i = 0;
    if (view2 != null) {
      view2.measure(paramInt1, 0);
      i = resolveMinimumHeight(view2);
      m = view2.getMeasuredHeight();
      j += i;
      k = ViewCompat.combineMeasuredStates(k, ViewCompat.getMeasuredState(view2));
      m -= i;
    } else {
      m = 0;
    } 
    if (view3 != null) {
      int i4;
      if (i3 == 0) {
        i4 = 0;
      } else {
        i4 = View.MeasureSpec.makeMeasureSpec(Math.max(0, n - j), i3);
      } 
      view3.measure(paramInt1, i4);
      b = view3.getMeasuredHeight();
      j += b;
      k = ViewCompat.combineMeasuredStates(k, ViewCompat.getMeasuredState(view3));
    } else {
      b = 0;
    } 
    n -= j;
    if (view2 != null) {
      int i5 = Math.min(n, m);
      m = n;
      int i4 = i;
      if (i5 > 0) {
        m = n - i5;
        i4 = i + i5;
      } 
      view2.measure(paramInt1, View.MeasureSpec.makeMeasureSpec(i4, 1073741824));
      i4 = view2.getMeasuredHeight();
      k = ViewCompat.combineMeasuredStates(k, ViewCompat.getMeasuredState(view2));
      i = i4 + j - i;
      n = m;
      j = k;
    } else {
      i = j;
      j = k;
    } 
    if (view3 != null && n > 0) {
      view3.measure(paramInt1, View.MeasureSpec.makeMeasureSpec(n + b, i3));
      k = view3.getMeasuredHeight();
      j = ViewCompat.combineMeasuredStates(j, ViewCompat.getMeasuredState(view3));
      i = i - b + k;
    } 
    int m = 0;
    k = 0;
    while (k < i1) {
      view1 = getChildAt(k);
      int i4 = m;
      if (view1.getVisibility() != 8)
        i4 = Math.max(m, view1.getMeasuredWidth()); 
      k++;
      m = i4;
    } 
    setMeasuredDimension(ViewCompat.resolveSizeAndState(m + getPaddingLeft() + getPaddingRight(), paramInt1, j), ViewCompat.resolveSizeAndState(i, paramInt2, 0));
    if (i2 != 1073741824)
      forceUniformWidth(i1, paramInt2); 
    return true;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual getPaddingLeft : ()I
    //   4: istore #7
    //   6: iload #4
    //   8: iload_2
    //   9: isub
    //   10: istore #8
    //   12: aload_0
    //   13: invokevirtual getPaddingRight : ()I
    //   16: istore #9
    //   18: aload_0
    //   19: invokevirtual getPaddingRight : ()I
    //   22: istore #10
    //   24: aload_0
    //   25: invokevirtual getMeasuredHeight : ()I
    //   28: istore_2
    //   29: aload_0
    //   30: invokevirtual getChildCount : ()I
    //   33: istore #11
    //   35: aload_0
    //   36: invokevirtual getGravity : ()I
    //   39: istore #12
    //   41: iload #12
    //   43: bipush #112
    //   45: iand
    //   46: lookupswitch default -> 72, 16 -> 292, 80 -> 277
    //   72: aload_0
    //   73: invokevirtual getPaddingTop : ()I
    //   76: istore_2
    //   77: aload_0
    //   78: invokevirtual getDividerDrawable : ()Landroid/graphics/drawable/Drawable;
    //   81: astore #15
    //   83: aload #15
    //   85: ifnonnull -> 313
    //   88: iconst_0
    //   89: istore #4
    //   91: iconst_0
    //   92: istore #5
    //   94: iload #5
    //   96: iload #11
    //   98: if_icmpge -> 373
    //   101: aload_0
    //   102: iload #5
    //   104: invokevirtual getChildAt : (I)Landroid/view/View;
    //   107: astore #15
    //   109: iload_2
    //   110: istore_3
    //   111: aload #15
    //   113: ifnull -> 266
    //   116: iload_2
    //   117: istore_3
    //   118: aload #15
    //   120: invokevirtual getVisibility : ()I
    //   123: bipush #8
    //   125: if_icmpeq -> 266
    //   128: aload #15
    //   130: invokevirtual getMeasuredWidth : ()I
    //   133: istore #13
    //   135: aload #15
    //   137: invokevirtual getMeasuredHeight : ()I
    //   140: istore #14
    //   142: aload #15
    //   144: invokevirtual getLayoutParams : ()Landroid/view/ViewGroup$LayoutParams;
    //   147: checkcast android/support/v7/widget/LinearLayoutCompat$LayoutParams
    //   150: astore #16
    //   152: aload #16
    //   154: getfield gravity : I
    //   157: istore #6
    //   159: iload #6
    //   161: istore_3
    //   162: iload #6
    //   164: ifge -> 173
    //   167: iload #12
    //   169: ldc 8388615
    //   171: iand
    //   172: istore_3
    //   173: iload_3
    //   174: aload_0
    //   175: invokestatic getLayoutDirection : (Landroid/view/View;)I
    //   178: invokestatic getAbsoluteGravity : (II)I
    //   181: bipush #7
    //   183: iand
    //   184: lookupswitch default -> 212, 1 -> 323, 5 -> 355
    //   212: iload #7
    //   214: aload #16
    //   216: getfield leftMargin : I
    //   219: iadd
    //   220: istore_3
    //   221: aload_0
    //   222: iload #5
    //   224: invokevirtual hasDividerBeforeChildAt : (I)Z
    //   227: ifeq -> 374
    //   230: iload_2
    //   231: iload #4
    //   233: iadd
    //   234: istore_2
    //   235: aload #16
    //   237: getfield topMargin : I
    //   240: iload_2
    //   241: iadd
    //   242: istore_2
    //   243: aload_0
    //   244: aload #15
    //   246: iload_3
    //   247: iload_2
    //   248: iload #13
    //   250: iload #14
    //   252: invokespecial setChildFrame : (Landroid/view/View;IIII)V
    //   255: iload_2
    //   256: aload #16
    //   258: getfield bottomMargin : I
    //   261: iload #14
    //   263: iadd
    //   264: iadd
    //   265: istore_3
    //   266: iload #5
    //   268: iconst_1
    //   269: iadd
    //   270: istore #5
    //   272: iload_3
    //   273: istore_2
    //   274: goto -> 94
    //   277: aload_0
    //   278: invokevirtual getPaddingTop : ()I
    //   281: iload #5
    //   283: iadd
    //   284: iload_3
    //   285: isub
    //   286: iload_2
    //   287: isub
    //   288: istore_2
    //   289: goto -> 77
    //   292: aload_0
    //   293: invokevirtual getPaddingTop : ()I
    //   296: istore #4
    //   298: iload #5
    //   300: iload_3
    //   301: isub
    //   302: iload_2
    //   303: isub
    //   304: iconst_2
    //   305: idiv
    //   306: iload #4
    //   308: iadd
    //   309: istore_2
    //   310: goto -> 77
    //   313: aload #15
    //   315: invokevirtual getIntrinsicHeight : ()I
    //   318: istore #4
    //   320: goto -> 91
    //   323: iload #8
    //   325: iload #7
    //   327: isub
    //   328: iload #10
    //   330: isub
    //   331: iload #13
    //   333: isub
    //   334: iconst_2
    //   335: idiv
    //   336: iload #7
    //   338: iadd
    //   339: aload #16
    //   341: getfield leftMargin : I
    //   344: iadd
    //   345: aload #16
    //   347: getfield rightMargin : I
    //   350: isub
    //   351: istore_3
    //   352: goto -> 221
    //   355: iload #8
    //   357: iload #9
    //   359: isub
    //   360: iload #13
    //   362: isub
    //   363: aload #16
    //   365: getfield rightMargin : I
    //   368: isub
    //   369: istore_3
    //   370: goto -> 221
    //   373: return
    //   374: goto -> 235
  }
  
  protected void onMeasure(int paramInt1, int paramInt2) {
    if (!tryOnMeasure(paramInt1, paramInt2))
      super.onMeasure(paramInt1, paramInt2); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\AlertDialogLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */