package android.support.v7.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.RestrictTo;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;

public class LinearLayoutCompat extends ViewGroup {
  public static final int HORIZONTAL = 0;
  
  private static final int INDEX_BOTTOM = 2;
  
  private static final int INDEX_CENTER_VERTICAL = 0;
  
  private static final int INDEX_FILL = 3;
  
  private static final int INDEX_TOP = 1;
  
  public static final int SHOW_DIVIDER_BEGINNING = 1;
  
  public static final int SHOW_DIVIDER_END = 4;
  
  public static final int SHOW_DIVIDER_MIDDLE = 2;
  
  public static final int SHOW_DIVIDER_NONE = 0;
  
  public static final int VERTICAL = 1;
  
  private static final int VERTICAL_GRAVITY_COUNT = 4;
  
  private boolean mBaselineAligned = true;
  
  private int mBaselineAlignedChildIndex = -1;
  
  private int mBaselineChildTop = 0;
  
  private Drawable mDivider;
  
  private int mDividerHeight;
  
  private int mDividerPadding;
  
  private int mDividerWidth;
  
  private int mGravity = 8388659;
  
  private int[] mMaxAscent;
  
  private int[] mMaxDescent;
  
  private int mOrientation;
  
  private int mShowDividers;
  
  private int mTotalLength;
  
  private boolean mUseLargestChild;
  
  private float mWeightSum;
  
  public LinearLayoutCompat(Context paramContext) {
    this(paramContext, (AttributeSet)null);
  }
  
  public LinearLayoutCompat(Context paramContext, AttributeSet paramAttributeSet) {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public LinearLayoutCompat(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    TintTypedArray tintTypedArray = TintTypedArray.obtainStyledAttributes(paramContext, paramAttributeSet, R.styleable.LinearLayoutCompat, paramInt, 0);
    paramInt = tintTypedArray.getInt(R.styleable.LinearLayoutCompat_android_orientation, -1);
    if (paramInt >= 0)
      setOrientation(paramInt); 
    paramInt = tintTypedArray.getInt(R.styleable.LinearLayoutCompat_android_gravity, -1);
    if (paramInt >= 0)
      setGravity(paramInt); 
    boolean bool = tintTypedArray.getBoolean(R.styleable.LinearLayoutCompat_android_baselineAligned, true);
    if (!bool)
      setBaselineAligned(bool); 
    this.mWeightSum = tintTypedArray.getFloat(R.styleable.LinearLayoutCompat_android_weightSum, -1.0F);
    this.mBaselineAlignedChildIndex = tintTypedArray.getInt(R.styleable.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
    this.mUseLargestChild = tintTypedArray.getBoolean(R.styleable.LinearLayoutCompat_measureWithLargestChild, false);
    setDividerDrawable(tintTypedArray.getDrawable(R.styleable.LinearLayoutCompat_divider));
    this.mShowDividers = tintTypedArray.getInt(R.styleable.LinearLayoutCompat_showDividers, 0);
    this.mDividerPadding = tintTypedArray.getDimensionPixelSize(R.styleable.LinearLayoutCompat_dividerPadding, 0);
    tintTypedArray.recycle();
  }
  
  private void forceUniformHeight(int paramInt1, int paramInt2) {
    int j = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
    for (int i = 0; i < paramInt1; i++) {
      View view = getVirtualChildAt(i);
      if (view.getVisibility() != 8) {
        LinearLayoutCompat$LayoutParams linearLayoutCompat$LayoutParams = (LinearLayoutCompat$LayoutParams)view.getLayoutParams();
        if (linearLayoutCompat$LayoutParams.height == -1) {
          int k = linearLayoutCompat$LayoutParams.width;
          linearLayoutCompat$LayoutParams.width = view.getMeasuredWidth();
          measureChildWithMargins(view, paramInt2, 0, j, 0);
          linearLayoutCompat$LayoutParams.width = k;
        } 
      } 
    } 
  }
  
  private void forceUniformWidth(int paramInt1, int paramInt2) {
    int j = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
    for (int i = 0; i < paramInt1; i++) {
      View view = getVirtualChildAt(i);
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
  
  private void setChildFrame(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    paramView.layout(paramInt1, paramInt2, paramInt1 + paramInt3, paramInt2 + paramInt4);
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams) {
    return paramLayoutParams instanceof LinearLayoutCompat$LayoutParams;
  }
  
  void drawDividersHorizontal(Canvas paramCanvas) {
    int j = getVirtualChildCount();
    boolean bool = ViewUtils.isLayoutRtl((View)this);
    int i;
    for (i = 0; i < j; i++) {
      View view = getVirtualChildAt(i);
      if (view != null && view.getVisibility() != 8 && hasDividerBeforeChildAt(i)) {
        int k;
        LinearLayoutCompat$LayoutParams linearLayoutCompat$LayoutParams = (LinearLayoutCompat$LayoutParams)view.getLayoutParams();
        if (bool) {
          k = view.getRight();
          k = linearLayoutCompat$LayoutParams.rightMargin + k;
        } else {
          k = view.getLeft() - linearLayoutCompat$LayoutParams.leftMargin - this.mDividerWidth;
        } 
        drawVerticalDivider(paramCanvas, k);
      } 
    } 
    if (hasDividerBeforeChildAt(j)) {
      View view = getVirtualChildAt(j - 1);
      if (view == null) {
        if (bool) {
          i = getPaddingLeft();
        } else {
          i = getWidth() - getPaddingRight() - this.mDividerWidth;
        } 
      } else {
        LinearLayoutCompat$LayoutParams linearLayoutCompat$LayoutParams = (LinearLayoutCompat$LayoutParams)view.getLayoutParams();
        if (bool) {
          i = view.getLeft() - linearLayoutCompat$LayoutParams.leftMargin - this.mDividerWidth;
        } else {
          i = view.getRight();
          i = linearLayoutCompat$LayoutParams.rightMargin + i;
        } 
      } 
      drawVerticalDivider(paramCanvas, i);
    } 
  }
  
  void drawDividersVertical(Canvas paramCanvas) {
    int j = getVirtualChildCount();
    int i;
    for (i = 0; i < j; i++) {
      View view = getVirtualChildAt(i);
      if (view != null && view.getVisibility() != 8 && hasDividerBeforeChildAt(i)) {
        LinearLayoutCompat$LayoutParams linearLayoutCompat$LayoutParams = (LinearLayoutCompat$LayoutParams)view.getLayoutParams();
        drawHorizontalDivider(paramCanvas, view.getTop() - linearLayoutCompat$LayoutParams.topMargin - this.mDividerHeight);
      } 
    } 
    if (hasDividerBeforeChildAt(j)) {
      View view = getVirtualChildAt(j - 1);
      if (view == null) {
        i = getHeight() - getPaddingBottom() - this.mDividerHeight;
      } else {
        LinearLayoutCompat$LayoutParams linearLayoutCompat$LayoutParams = (LinearLayoutCompat$LayoutParams)view.getLayoutParams();
        i = view.getBottom();
        i = linearLayoutCompat$LayoutParams.bottomMargin + i;
      } 
      drawHorizontalDivider(paramCanvas, i);
    } 
  }
  
  void drawHorizontalDivider(Canvas paramCanvas, int paramInt) {
    this.mDivider.setBounds(getPaddingLeft() + this.mDividerPadding, paramInt, getWidth() - getPaddingRight() - this.mDividerPadding, this.mDividerHeight + paramInt);
    this.mDivider.draw(paramCanvas);
  }
  
  void drawVerticalDivider(Canvas paramCanvas, int paramInt) {
    this.mDivider.setBounds(paramInt, getPaddingTop() + this.mDividerPadding, this.mDividerWidth + paramInt, getHeight() - getPaddingBottom() - this.mDividerPadding);
    this.mDivider.draw(paramCanvas);
  }
  
  protected LinearLayoutCompat$LayoutParams generateDefaultLayoutParams() {
    return (this.mOrientation == 0) ? new LinearLayoutCompat$LayoutParams(-2, -2) : ((this.mOrientation == 1) ? new LinearLayoutCompat$LayoutParams(-1, -2) : null);
  }
  
  public LinearLayoutCompat$LayoutParams generateLayoutParams(AttributeSet paramAttributeSet) {
    return new LinearLayoutCompat$LayoutParams(getContext(), paramAttributeSet);
  }
  
  protected LinearLayoutCompat$LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams) {
    return new LinearLayoutCompat$LayoutParams(paramLayoutParams);
  }
  
  public int getBaseline() {
    int i = -1;
    if (this.mBaselineAlignedChildIndex < 0)
      return super.getBaseline(); 
    if (getChildCount() <= this.mBaselineAlignedChildIndex)
      throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."); 
    View view = getChildAt(this.mBaselineAlignedChildIndex);
    int j = view.getBaseline();
    if (j == -1) {
      if (this.mBaselineAlignedChildIndex != 0)
        throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline."); 
      return i;
    } 
    i = this.mBaselineChildTop;
    if (this.mOrientation == 1) {
      int k = this.mGravity & 0x70;
      if (k != 48) {
        switch (k) {
          default:
            return ((LinearLayoutCompat$LayoutParams)view.getLayoutParams()).topMargin + i + j;
          case 80:
            i = getBottom() - getTop() - getPaddingBottom() - this.mTotalLength;
          case 16:
            break;
        } 
        i += (getBottom() - getTop() - getPaddingTop() - getPaddingBottom() - this.mTotalLength) / 2;
      } 
    } 
  }
  
  public int getBaselineAlignedChildIndex() {
    return this.mBaselineAlignedChildIndex;
  }
  
  int getChildrenSkipCount(View paramView, int paramInt) {
    return 0;
  }
  
  public Drawable getDividerDrawable() {
    return this.mDivider;
  }
  
  public int getDividerPadding() {
    return this.mDividerPadding;
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public int getDividerWidth() {
    return this.mDividerWidth;
  }
  
  public int getGravity() {
    return this.mGravity;
  }
  
  int getLocationOffset(View paramView) {
    return 0;
  }
  
  int getNextLocationOffset(View paramView) {
    return 0;
  }
  
  public int getOrientation() {
    return this.mOrientation;
  }
  
  public int getShowDividers() {
    return this.mShowDividers;
  }
  
  View getVirtualChildAt(int paramInt) {
    return getChildAt(paramInt);
  }
  
  int getVirtualChildCount() {
    return getChildCount();
  }
  
  public float getWeightSum() {
    return this.mWeightSum;
  }
  
  protected boolean hasDividerBeforeChildAt(int paramInt) {
    if (paramInt == 0)
      return !((this.mShowDividers & 0x1) == 0); 
    if (paramInt == getChildCount())
      return !((this.mShowDividers & 0x4) == 0); 
    if ((this.mShowDividers & 0x2) != 0) {
      while (--paramInt >= 0) {
        if (getChildAt(paramInt).getVisibility() == 8) {
          paramInt--;
          continue;
        } 
        return true;
      } 
    } else {
      return false;
    } 
    return false;
  }
  
  public boolean isBaselineAligned() {
    return this.mBaselineAligned;
  }
  
  public boolean isMeasureWithLargestChildEnabled() {
    return this.mUseLargestChild;
  }
  
  void layoutHorizontal(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic isLayoutRtl : (Landroid/view/View;)Z
    //   4: istore #17
    //   6: aload_0
    //   7: invokevirtual getPaddingTop : ()I
    //   10: istore #7
    //   12: iload #4
    //   14: iload_2
    //   15: isub
    //   16: istore #9
    //   18: aload_0
    //   19: invokevirtual getPaddingBottom : ()I
    //   22: istore #10
    //   24: aload_0
    //   25: invokevirtual getPaddingBottom : ()I
    //   28: istore #11
    //   30: aload_0
    //   31: invokevirtual getVirtualChildCount : ()I
    //   34: istore #12
    //   36: aload_0
    //   37: getfield mGravity : I
    //   40: istore_2
    //   41: aload_0
    //   42: getfield mGravity : I
    //   45: istore #13
    //   47: aload_0
    //   48: getfield mBaselineAligned : Z
    //   51: istore #18
    //   53: aload_0
    //   54: getfield mMaxAscent : [I
    //   57: astore #19
    //   59: aload_0
    //   60: getfield mMaxDescent : [I
    //   63: astore #20
    //   65: iload_2
    //   66: ldc_w 8388615
    //   69: iand
    //   70: aload_0
    //   71: invokestatic getLayoutDirection : (Landroid/view/View;)I
    //   74: invokestatic getAbsoluteGravity : (II)I
    //   77: lookupswitch default -> 104, 1 -> 190, 5 -> 173
    //   104: aload_0
    //   105: invokevirtual getPaddingLeft : ()I
    //   108: istore_1
    //   109: iload #17
    //   111: ifeq -> 529
    //   114: iconst_m1
    //   115: istore #4
    //   117: iload #12
    //   119: iconst_1
    //   120: isub
    //   121: istore #5
    //   123: iconst_0
    //   124: istore_2
    //   125: iload_1
    //   126: istore_3
    //   127: iload_2
    //   128: iload #12
    //   130: if_icmpge -> 514
    //   133: iload #5
    //   135: iload #4
    //   137: iload_2
    //   138: imul
    //   139: iadd
    //   140: istore #14
    //   142: aload_0
    //   143: iload #14
    //   145: invokevirtual getVirtualChildAt : (I)Landroid/view/View;
    //   148: astore #21
    //   150: aload #21
    //   152: ifnonnull -> 209
    //   155: iload_3
    //   156: aload_0
    //   157: iload #14
    //   159: invokevirtual measureNullChild : (I)I
    //   162: iadd
    //   163: istore_3
    //   164: iload_2
    //   165: istore_1
    //   166: iload_1
    //   167: iconst_1
    //   168: iadd
    //   169: istore_2
    //   170: goto -> 127
    //   173: aload_0
    //   174: invokevirtual getPaddingLeft : ()I
    //   177: iload_3
    //   178: iadd
    //   179: iload_1
    //   180: isub
    //   181: aload_0
    //   182: getfield mTotalLength : I
    //   185: isub
    //   186: istore_1
    //   187: goto -> 109
    //   190: aload_0
    //   191: invokevirtual getPaddingLeft : ()I
    //   194: iload_3
    //   195: iload_1
    //   196: isub
    //   197: aload_0
    //   198: getfield mTotalLength : I
    //   201: isub
    //   202: iconst_2
    //   203: idiv
    //   204: iadd
    //   205: istore_1
    //   206: goto -> 109
    //   209: aload #21
    //   211: invokevirtual getVisibility : ()I
    //   214: bipush #8
    //   216: if_icmpeq -> 524
    //   219: aload #21
    //   221: invokevirtual getMeasuredWidth : ()I
    //   224: istore #15
    //   226: aload #21
    //   228: invokevirtual getMeasuredHeight : ()I
    //   231: istore #16
    //   233: aload #21
    //   235: invokevirtual getLayoutParams : ()Landroid/view/ViewGroup$LayoutParams;
    //   238: checkcast android/support/v7/widget/LinearLayoutCompat$LayoutParams
    //   241: astore #22
    //   243: iload #18
    //   245: ifeq -> 518
    //   248: aload #22
    //   250: getfield height : I
    //   253: iconst_m1
    //   254: if_icmpeq -> 518
    //   257: aload #21
    //   259: invokevirtual getBaseline : ()I
    //   262: istore #6
    //   264: aload #22
    //   266: getfield gravity : I
    //   269: istore #8
    //   271: iload #8
    //   273: istore_1
    //   274: iload #8
    //   276: ifge -> 285
    //   279: iload #13
    //   281: bipush #112
    //   283: iand
    //   284: istore_1
    //   285: iload_1
    //   286: bipush #112
    //   288: iand
    //   289: lookupswitch default -> 324, 16 -> 435, 48 -> 402, 80 -> 467
    //   324: iload #7
    //   326: istore_1
    //   327: aload_0
    //   328: iload #14
    //   330: invokevirtual hasDividerBeforeChildAt : (I)Z
    //   333: ifeq -> 515
    //   336: aload_0
    //   337: getfield mDividerWidth : I
    //   340: iload_3
    //   341: iadd
    //   342: istore_3
    //   343: iload_3
    //   344: aload #22
    //   346: getfield leftMargin : I
    //   349: iadd
    //   350: istore_3
    //   351: aload_0
    //   352: aload #21
    //   354: iload_3
    //   355: aload_0
    //   356: aload #21
    //   358: invokevirtual getLocationOffset : (Landroid/view/View;)I
    //   361: iadd
    //   362: iload_1
    //   363: iload #15
    //   365: iload #16
    //   367: invokespecial setChildFrame : (Landroid/view/View;IIII)V
    //   370: iload_3
    //   371: aload #22
    //   373: getfield rightMargin : I
    //   376: iload #15
    //   378: iadd
    //   379: aload_0
    //   380: aload #21
    //   382: invokevirtual getNextLocationOffset : (Landroid/view/View;)I
    //   385: iadd
    //   386: iadd
    //   387: istore_3
    //   388: aload_0
    //   389: aload #21
    //   391: iload #14
    //   393: invokevirtual getChildrenSkipCount : (Landroid/view/View;I)I
    //   396: iload_2
    //   397: iadd
    //   398: istore_1
    //   399: goto -> 166
    //   402: iload #7
    //   404: aload #22
    //   406: getfield topMargin : I
    //   409: iadd
    //   410: istore #8
    //   412: iload #8
    //   414: istore_1
    //   415: iload #6
    //   417: iconst_m1
    //   418: if_icmpeq -> 327
    //   421: iload #8
    //   423: aload #19
    //   425: iconst_1
    //   426: iaload
    //   427: iload #6
    //   429: isub
    //   430: iadd
    //   431: istore_1
    //   432: goto -> 327
    //   435: iload #9
    //   437: iload #7
    //   439: isub
    //   440: iload #11
    //   442: isub
    //   443: iload #16
    //   445: isub
    //   446: iconst_2
    //   447: idiv
    //   448: iload #7
    //   450: iadd
    //   451: aload #22
    //   453: getfield topMargin : I
    //   456: iadd
    //   457: aload #22
    //   459: getfield bottomMargin : I
    //   462: isub
    //   463: istore_1
    //   464: goto -> 327
    //   467: iload #9
    //   469: iload #10
    //   471: isub
    //   472: iload #16
    //   474: isub
    //   475: aload #22
    //   477: getfield bottomMargin : I
    //   480: isub
    //   481: istore #8
    //   483: iload #8
    //   485: istore_1
    //   486: iload #6
    //   488: iconst_m1
    //   489: if_icmpeq -> 327
    //   492: aload #21
    //   494: invokevirtual getMeasuredHeight : ()I
    //   497: istore_1
    //   498: iload #8
    //   500: aload #20
    //   502: iconst_2
    //   503: iaload
    //   504: iload_1
    //   505: iload #6
    //   507: isub
    //   508: isub
    //   509: isub
    //   510: istore_1
    //   511: goto -> 327
    //   514: return
    //   515: goto -> 343
    //   518: iconst_m1
    //   519: istore #6
    //   521: goto -> 264
    //   524: iload_2
    //   525: istore_1
    //   526: goto -> 166
    //   529: iconst_1
    //   530: istore #4
    //   532: iconst_0
    //   533: istore #5
    //   535: goto -> 123
  }
  
  void layoutVertical(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual getPaddingLeft : ()I
    //   4: istore #5
    //   6: iload_3
    //   7: iload_1
    //   8: isub
    //   9: istore #6
    //   11: aload_0
    //   12: invokevirtual getPaddingRight : ()I
    //   15: istore #7
    //   17: aload_0
    //   18: invokevirtual getPaddingRight : ()I
    //   21: istore #8
    //   23: aload_0
    //   24: invokevirtual getVirtualChildCount : ()I
    //   27: istore #9
    //   29: aload_0
    //   30: getfield mGravity : I
    //   33: istore_1
    //   34: aload_0
    //   35: getfield mGravity : I
    //   38: istore #10
    //   40: iload_1
    //   41: bipush #112
    //   43: iand
    //   44: lookupswitch default -> 72, 16 -> 134, 80 -> 116
    //   72: aload_0
    //   73: invokevirtual getPaddingTop : ()I
    //   76: istore_1
    //   77: iconst_0
    //   78: istore_3
    //   79: iload_1
    //   80: istore_2
    //   81: iload_3
    //   82: istore_1
    //   83: iload_1
    //   84: iload #9
    //   86: if_icmpge -> 380
    //   89: aload_0
    //   90: iload_1
    //   91: invokevirtual getVirtualChildAt : (I)Landroid/view/View;
    //   94: astore #13
    //   96: aload #13
    //   98: ifnonnull -> 154
    //   101: iload_2
    //   102: aload_0
    //   103: iload_1
    //   104: invokevirtual measureNullChild : (I)I
    //   107: iadd
    //   108: istore_2
    //   109: iload_1
    //   110: iconst_1
    //   111: iadd
    //   112: istore_1
    //   113: goto -> 83
    //   116: aload_0
    //   117: invokevirtual getPaddingTop : ()I
    //   120: iload #4
    //   122: iadd
    //   123: iload_2
    //   124: isub
    //   125: aload_0
    //   126: getfield mTotalLength : I
    //   129: isub
    //   130: istore_1
    //   131: goto -> 77
    //   134: aload_0
    //   135: invokevirtual getPaddingTop : ()I
    //   138: iload #4
    //   140: iload_2
    //   141: isub
    //   142: aload_0
    //   143: getfield mTotalLength : I
    //   146: isub
    //   147: iconst_2
    //   148: idiv
    //   149: iadd
    //   150: istore_1
    //   151: goto -> 77
    //   154: aload #13
    //   156: invokevirtual getVisibility : ()I
    //   159: bipush #8
    //   161: if_icmpeq -> 384
    //   164: aload #13
    //   166: invokevirtual getMeasuredWidth : ()I
    //   169: istore #11
    //   171: aload #13
    //   173: invokevirtual getMeasuredHeight : ()I
    //   176: istore #12
    //   178: aload #13
    //   180: invokevirtual getLayoutParams : ()Landroid/view/ViewGroup$LayoutParams;
    //   183: checkcast android/support/v7/widget/LinearLayoutCompat$LayoutParams
    //   186: astore #14
    //   188: aload #14
    //   190: getfield gravity : I
    //   193: istore #4
    //   195: iload #4
    //   197: istore_3
    //   198: iload #4
    //   200: ifge -> 210
    //   203: iload #10
    //   205: ldc_w 8388615
    //   208: iand
    //   209: istore_3
    //   210: iload_3
    //   211: aload_0
    //   212: invokestatic getLayoutDirection : (Landroid/view/View;)I
    //   215: invokestatic getAbsoluteGravity : (II)I
    //   218: bipush #7
    //   220: iand
    //   221: lookupswitch default -> 248, 1 -> 330, 5 -> 362
    //   248: iload #5
    //   250: aload #14
    //   252: getfield leftMargin : I
    //   255: iadd
    //   256: istore_3
    //   257: aload_0
    //   258: iload_1
    //   259: invokevirtual hasDividerBeforeChildAt : (I)Z
    //   262: ifeq -> 381
    //   265: aload_0
    //   266: getfield mDividerHeight : I
    //   269: iload_2
    //   270: iadd
    //   271: istore_2
    //   272: iload_2
    //   273: aload #14
    //   275: getfield topMargin : I
    //   278: iadd
    //   279: istore_2
    //   280: aload_0
    //   281: aload #13
    //   283: iload_3
    //   284: iload_2
    //   285: aload_0
    //   286: aload #13
    //   288: invokevirtual getLocationOffset : (Landroid/view/View;)I
    //   291: iadd
    //   292: iload #11
    //   294: iload #12
    //   296: invokespecial setChildFrame : (Landroid/view/View;IIII)V
    //   299: iload_2
    //   300: aload #14
    //   302: getfield bottomMargin : I
    //   305: iload #12
    //   307: iadd
    //   308: aload_0
    //   309: aload #13
    //   311: invokevirtual getNextLocationOffset : (Landroid/view/View;)I
    //   314: iadd
    //   315: iadd
    //   316: istore_2
    //   317: aload_0
    //   318: aload #13
    //   320: iload_1
    //   321: invokevirtual getChildrenSkipCount : (Landroid/view/View;I)I
    //   324: iload_1
    //   325: iadd
    //   326: istore_1
    //   327: goto -> 109
    //   330: iload #6
    //   332: iload #5
    //   334: isub
    //   335: iload #8
    //   337: isub
    //   338: iload #11
    //   340: isub
    //   341: iconst_2
    //   342: idiv
    //   343: iload #5
    //   345: iadd
    //   346: aload #14
    //   348: getfield leftMargin : I
    //   351: iadd
    //   352: aload #14
    //   354: getfield rightMargin : I
    //   357: isub
    //   358: istore_3
    //   359: goto -> 257
    //   362: iload #6
    //   364: iload #7
    //   366: isub
    //   367: iload #11
    //   369: isub
    //   370: aload #14
    //   372: getfield rightMargin : I
    //   375: isub
    //   376: istore_3
    //   377: goto -> 257
    //   380: return
    //   381: goto -> 272
    //   384: goto -> 109
  }
  
  void measureChildBeforeLayout(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5) {
    measureChildWithMargins(paramView, paramInt2, paramInt3, paramInt4, paramInt5);
  }
  
  void measureHorizontal(int paramInt1, int paramInt2) {
    boolean bool;
    this.mTotalLength = 0;
    int k = 0;
    int j = 0;
    int i1 = 0;
    int i3 = 0;
    int i = 1;
    float f = 0.0F;
    int i5 = getVirtualChildCount();
    int i7 = View.MeasureSpec.getMode(paramInt1);
    int i6 = View.MeasureSpec.getMode(paramInt2);
    int i2 = 0;
    int n = 0;
    if (this.mMaxAscent == null || this.mMaxDescent == null) {
      this.mMaxAscent = new int[4];
      this.mMaxDescent = new int[4];
    } 
    int[] arrayOfInt1 = this.mMaxAscent;
    int[] arrayOfInt2 = this.mMaxDescent;
    arrayOfInt1[3] = -1;
    arrayOfInt1[2] = -1;
    arrayOfInt1[1] = -1;
    arrayOfInt1[0] = -1;
    arrayOfInt2[3] = -1;
    arrayOfInt2[2] = -1;
    arrayOfInt2[1] = -1;
    arrayOfInt2[0] = -1;
    boolean bool1 = this.mBaselineAligned;
    boolean bool2 = this.mUseLargestChild;
    if (i7 == 1073741824) {
      bool = true;
    } else {
      bool = false;
    } 
    int m = Integer.MIN_VALUE;
    int i4 = 0;
    while (true) {
      if (i4 < i5) {
        View view = getVirtualChildAt(i4);
        if (view == null) {
          this.mTotalLength += measureNullChild(i4);
          int i9 = m;
          int i10 = n;
          n = k;
          m = j;
          k = i;
          j = i10;
          i = i9;
        } else if (view.getVisibility() == 8) {
          int i11 = i4 + getChildrenSkipCount(view, i4);
          i4 = m;
          int i10 = n;
          m = i;
          n = j;
          int i9 = k;
          i = i4;
          j = i10;
          i4 = i11;
          k = m;
          m = n;
          n = i9;
        } else {
          int i10;
          if (hasDividerBeforeChildAt(i4))
            this.mTotalLength += this.mDividerWidth; 
          LinearLayoutCompat$LayoutParams linearLayoutCompat$LayoutParams = (LinearLayoutCompat$LayoutParams)view.getLayoutParams();
          f += linearLayoutCompat$LayoutParams.weight;
          if (i7 == 1073741824 && linearLayoutCompat$LayoutParams.width == 0 && linearLayoutCompat$LayoutParams.weight > 0.0F) {
            if (bool) {
              this.mTotalLength += linearLayoutCompat$LayoutParams.leftMargin + linearLayoutCompat$LayoutParams.rightMargin;
            } else {
              i9 = this.mTotalLength;
              this.mTotalLength = Math.max(i9, linearLayoutCompat$LayoutParams.leftMargin + i9 + linearLayoutCompat$LayoutParams.rightMargin);
            } 
            if (bool1) {
              i9 = View.MeasureSpec.makeMeasureSpec(0, 0);
              view.measure(i9, i9);
              i10 = n;
              i9 = m;
            } else {
              i10 = 1;
              i9 = m;
            } 
          } else {
            i10 = Integer.MIN_VALUE;
            i9 = i10;
            if (linearLayoutCompat$LayoutParams.width == 0) {
              i9 = i10;
              if (linearLayoutCompat$LayoutParams.weight > 0.0F) {
                i9 = 0;
                linearLayoutCompat$LayoutParams.width = -2;
              } 
            } 
            if (f == 0.0F) {
              i10 = this.mTotalLength;
            } else {
              i10 = 0;
            } 
            measureChildBeforeLayout(view, i4, paramInt1, i10, paramInt2, 0);
            if (i9 != Integer.MIN_VALUE)
              linearLayoutCompat$LayoutParams.width = i9; 
            int i14 = view.getMeasuredWidth();
            if (bool) {
              this.mTotalLength += linearLayoutCompat$LayoutParams.leftMargin + i14 + linearLayoutCompat$LayoutParams.rightMargin + getNextLocationOffset(view);
            } else {
              i9 = this.mTotalLength;
              this.mTotalLength = Math.max(i9, i9 + i14 + linearLayoutCompat$LayoutParams.leftMargin + linearLayoutCompat$LayoutParams.rightMargin + getNextLocationOffset(view));
            } 
            i9 = m;
            i10 = n;
            if (bool2) {
              i9 = Math.max(i14, m);
              i10 = n;
            } 
          } 
          n = 0;
          if (i6 != 1073741824 && linearLayoutCompat$LayoutParams.height == -1) {
            m = 1;
            n = 1;
          } else {
            m = i2;
          } 
          i2 = linearLayoutCompat$LayoutParams.topMargin;
          i2 = linearLayoutCompat$LayoutParams.bottomMargin + i2;
          int i11 = view.getMeasuredHeight() + i2;
          int i12 = ViewUtils.combineMeasuredStates(j, ViewCompat.getMeasuredState(view));
          if (bool1) {
            int i14 = view.getBaseline();
            if (i14 != -1) {
              if (linearLayoutCompat$LayoutParams.gravity < 0) {
                j = this.mGravity;
              } else {
                j = linearLayoutCompat$LayoutParams.gravity;
              } 
              j = ((j & 0x70) >> 4 & 0xFFFFFFFE) >> 1;
              arrayOfInt1[j] = Math.max(arrayOfInt1[j], i14);
              arrayOfInt2[j] = Math.max(arrayOfInt2[j], i11 - i14);
            } 
          } 
          int i13 = Math.max(k, i11);
          if (i != 0 && linearLayoutCompat$LayoutParams.height == -1) {
            k = 1;
          } else {
            k = 0;
          } 
          if (linearLayoutCompat$LayoutParams.weight > 0.0F) {
            if (n == 0)
              i2 = i11; 
            j = Math.max(i3, i2);
            i = i1;
          } else {
            if (n == 0)
              i2 = i11; 
            i = Math.max(i1, i2);
            j = i3;
          } 
          i4 += getChildrenSkipCount(view, i4);
          i3 = j;
          i1 = i;
          n = i13;
          i = i9;
          int i9 = i12;
          i2 = m;
          j = i10;
          m = i9;
        } 
        continue;
      } 
      if (this.mTotalLength > 0 && hasDividerBeforeChildAt(i5))
        this.mTotalLength += this.mDividerWidth; 
      if (arrayOfInt1[1] != -1 || arrayOfInt1[0] != -1 || arrayOfInt1[2] != -1 || arrayOfInt1[3] != -1) {
        i4 = Math.max(k, Math.max(arrayOfInt1[3], Math.max(arrayOfInt1[0], Math.max(arrayOfInt1[1], arrayOfInt1[2]))) + Math.max(arrayOfInt2[3], Math.max(arrayOfInt2[0], Math.max(arrayOfInt2[1], arrayOfInt2[2]))));
      } else {
        i4 = k;
      } 
      if (bool2 && (i7 == Integer.MIN_VALUE || i7 == 0)) {
        this.mTotalLength = 0;
        for (k = 0; k < i5; k++) {
          View view = getVirtualChildAt(k);
          if (view == null) {
            this.mTotalLength += measureNullChild(k);
          } else if (view.getVisibility() == 8) {
            k = getChildrenSkipCount(view, k) + k;
          } else {
            LinearLayoutCompat$LayoutParams linearLayoutCompat$LayoutParams = (LinearLayoutCompat$LayoutParams)view.getLayoutParams();
            if (bool) {
              int i9 = this.mTotalLength;
              int i10 = linearLayoutCompat$LayoutParams.leftMargin;
              this.mTotalLength = linearLayoutCompat$LayoutParams.rightMargin + i10 + m + getNextLocationOffset(view) + i9;
            } else {
              int i9 = this.mTotalLength;
              int i10 = linearLayoutCompat$LayoutParams.leftMargin;
              this.mTotalLength = Math.max(i9, linearLayoutCompat$LayoutParams.rightMargin + i9 + m + i10 + getNextLocationOffset(view));
            } 
          } 
        } 
      } 
      this.mTotalLength += getPaddingLeft() + getPaddingRight();
      int i8 = ViewCompat.resolveSizeAndState(Math.max(this.mTotalLength, getSuggestedMinimumWidth()), paramInt1, 0);
      k = (0xFFFFFF & i8) - this.mTotalLength;
      if (n != 0 || (k != 0 && f > 0.0F)) {
        if (this.mWeightSum > 0.0F)
          f = this.mWeightSum; 
        arrayOfInt1[3] = -1;
        arrayOfInt1[2] = -1;
        arrayOfInt1[1] = -1;
        arrayOfInt1[0] = -1;
        arrayOfInt2[3] = -1;
        arrayOfInt2[2] = -1;
        arrayOfInt2[1] = -1;
        arrayOfInt2[0] = -1;
        this.mTotalLength = 0;
        i4 = 0;
        i3 = i1;
        n = j;
        m = k;
        k = -1;
        i1 = i4;
        j = i3;
        while (true) {
          i3 = i1 + 1;
          i1 = m;
          m = i;
          i = j;
          j = k;
          k = i1;
          i1 = i3;
        } 
        break;
      } 
      n = Math.max(i1, i3);
      if (bool2 && i7 != 1073741824)
        for (k = 0; k < i5; k++) {
          View view = getVirtualChildAt(k);
          if (view != null && view.getVisibility() != 8 && ((LinearLayoutCompat$LayoutParams)view.getLayoutParams()).weight > 0.0F)
            view.measure(View.MeasureSpec.makeMeasureSpec(m, 1073741824), View.MeasureSpec.makeMeasureSpec(view.getMeasuredHeight(), 1073741824)); 
        }  
      k = n;
      m = i4;
      n = i;
      i = j;
      continue;
      i4++;
      i8 = m;
      i9 = n;
      m = i;
      n = j;
      i = k;
      j = i8;
      k = i9;
    } 
  }
  
  int measureNullChild(int paramInt) {
    return 0;
  }
  
  void measureVertical(int paramInt1, int paramInt2) {
    this.mTotalLength = 0;
    int j = 0;
    int i = 0;
    int i1 = 0;
    int i4 = 0;
    int k = 1;
    float f = 0.0F;
    int i5 = getVirtualChildCount();
    int i6 = View.MeasureSpec.getMode(paramInt1);
    int i7 = View.MeasureSpec.getMode(paramInt2);
    int i3 = 0;
    int n = 0;
    int i8 = this.mBaselineAlignedChildIndex;
    boolean bool = this.mUseLargestChild;
    int m = Integer.MIN_VALUE;
    int i2 = 0;
    while (true) {
      if (i2 < i5) {
        View view = getVirtualChildAt(i2);
        if (view == null) {
          this.mTotalLength += measureNullChild(i2);
          int i12 = m;
          int i13 = n;
          n = j;
          m = i;
          j = i13;
          i = i12;
        } else if (view.getVisibility() == 8) {
          int i13 = i2 + getChildrenSkipCount(view, i2);
          i2 = m;
          int i12 = n;
          m = i;
          n = j;
          i = i2;
          j = i12;
          i2 = i13;
        } else {
          int i13;
          if (hasDividerBeforeChildAt(i2))
            this.mTotalLength += this.mDividerHeight; 
          LinearLayoutCompat$LayoutParams linearLayoutCompat$LayoutParams = (LinearLayoutCompat$LayoutParams)view.getLayoutParams();
          f += linearLayoutCompat$LayoutParams.weight;
          if (i7 == 1073741824 && linearLayoutCompat$LayoutParams.height == 0 && linearLayoutCompat$LayoutParams.weight > 0.0F) {
            n = this.mTotalLength;
            this.mTotalLength = Math.max(n, linearLayoutCompat$LayoutParams.topMargin + n + linearLayoutCompat$LayoutParams.bottomMargin);
            i13 = 1;
            i12 = m;
          } else {
            i13 = Integer.MIN_VALUE;
            i12 = i13;
            if (linearLayoutCompat$LayoutParams.height == 0) {
              i12 = i13;
              if (linearLayoutCompat$LayoutParams.weight > 0.0F) {
                i12 = 0;
                linearLayoutCompat$LayoutParams.height = -2;
              } 
            } 
            if (f == 0.0F) {
              i13 = this.mTotalLength;
            } else {
              i13 = 0;
            } 
            measureChildBeforeLayout(view, i2, paramInt1, 0, paramInt2, i13);
            if (i12 != Integer.MIN_VALUE)
              linearLayoutCompat$LayoutParams.height = i12; 
            int i17 = view.getMeasuredHeight();
            i12 = this.mTotalLength;
            this.mTotalLength = Math.max(i12, i12 + i17 + linearLayoutCompat$LayoutParams.topMargin + linearLayoutCompat$LayoutParams.bottomMargin + getNextLocationOffset(view));
            i12 = m;
            i13 = n;
            if (bool) {
              i12 = Math.max(i17, m);
              i13 = n;
            } 
          } 
          if (i8 >= 0 && i8 == i2 + 1)
            this.mBaselineChildTop = this.mTotalLength; 
          if (i2 < i8 && linearLayoutCompat$LayoutParams.weight > 0.0F)
            throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex."); 
          n = 0;
          if (i6 != 1073741824 && linearLayoutCompat$LayoutParams.width == -1) {
            m = 1;
            n = 1;
          } else {
            m = i3;
          } 
          i3 = linearLayoutCompat$LayoutParams.leftMargin;
          i3 = linearLayoutCompat$LayoutParams.rightMargin + i3;
          int i14 = view.getMeasuredWidth() + i3;
          int i16 = Math.max(j, i14);
          int i15 = ViewUtils.combineMeasuredStates(i, ViewCompat.getMeasuredState(view));
          if (k && linearLayoutCompat$LayoutParams.width == -1) {
            k = 1;
          } else {
            k = 0;
          } 
          if (linearLayoutCompat$LayoutParams.weight > 0.0F) {
            if (n == 0)
              i3 = i14; 
            j = Math.max(i4, i3);
            i = i1;
          } else {
            if (n == 0)
              i3 = i14; 
            i = Math.max(i1, i3);
            j = i4;
          } 
          i2 += getChildrenSkipCount(view, i2);
          i4 = j;
          i1 = i;
          n = i16;
          i = i12;
          int i12 = i15;
          i3 = m;
          j = i13;
          m = i12;
        } 
        i2++;
        int i10 = m;
        int i11 = n;
        m = i;
        n = j;
        i = i10;
        j = i11;
        continue;
      } 
      if (this.mTotalLength > 0 && hasDividerBeforeChildAt(i5))
        this.mTotalLength += this.mDividerHeight; 
      if (bool && (i7 == Integer.MIN_VALUE || i7 == 0)) {
        this.mTotalLength = 0;
        for (i2 = 0; i2 < i5; i2++) {
          View view = getVirtualChildAt(i2);
          if (view == null) {
            this.mTotalLength += measureNullChild(i2);
          } else if (view.getVisibility() == 8) {
            i2 = getChildrenSkipCount(view, i2) + i2;
          } else {
            LinearLayoutCompat$LayoutParams linearLayoutCompat$LayoutParams = (LinearLayoutCompat$LayoutParams)view.getLayoutParams();
            int i10 = this.mTotalLength;
            int i11 = linearLayoutCompat$LayoutParams.topMargin;
            this.mTotalLength = Math.max(i10, linearLayoutCompat$LayoutParams.bottomMargin + i10 + m + i11 + getNextLocationOffset(view));
          } 
        } 
      } 
      this.mTotalLength += getPaddingTop() + getPaddingBottom();
      int i9 = ViewCompat.resolveSizeAndState(Math.max(this.mTotalLength, getSuggestedMinimumHeight()), paramInt2, 0);
      i2 = (0xFFFFFF & i9) - this.mTotalLength;
      if (n != 0 || (i2 != 0 && f > 0.0F)) {
        if (this.mWeightSum > 0.0F)
          f = this.mWeightSum; 
        this.mTotalLength = 0;
        m = 0;
        n = k;
        k = i1;
        i1 = i2;
        i2 = m;
        m = j;
        j = n;
        n = i1;
        while (true) {
          if (i2 < i5) {
            View view = getVirtualChildAt(i2);
            if (view.getVisibility() == 8) {
              i1 = k;
              k = m;
              m = i1;
            } else {
              LinearLayoutCompat$LayoutParams linearLayoutCompat$LayoutParams = (LinearLayoutCompat$LayoutParams)view.getLayoutParams();
              float f1 = linearLayoutCompat$LayoutParams.weight;
              if (f1 > 0.0F) {
                i4 = (int)(n * f1 / f);
                int i11 = getChildMeasureSpec(paramInt1, getPaddingLeft() + getPaddingRight() + linearLayoutCompat$LayoutParams.leftMargin + linearLayoutCompat$LayoutParams.rightMargin, linearLayoutCompat$LayoutParams.width);
                if (linearLayoutCompat$LayoutParams.height != 0 || i7 != 1073741824) {
                  int i12 = i4 + view.getMeasuredHeight();
                  i1 = i12;
                  if (i12 < 0)
                    i1 = 0; 
                  view.measure(i11, View.MeasureSpec.makeMeasureSpec(i1, 1073741824));
                } else {
                  if (i4 > 0) {
                    i1 = i4;
                  } else {
                    i1 = 0;
                  } 
                  view.measure(i11, View.MeasureSpec.makeMeasureSpec(i1, 1073741824));
                } 
                i = ViewUtils.combineMeasuredStates(i, ViewCompat.getMeasuredState(view) & 0xFFFFFF00);
                i1 = n - i4;
                n = i;
                f -= f1;
                i = i1;
              } else {
                i1 = i;
                i = n;
                n = i1;
              } 
              i4 = linearLayoutCompat$LayoutParams.leftMargin + linearLayoutCompat$LayoutParams.rightMargin;
              int i10 = view.getMeasuredWidth() + i4;
              i1 = Math.max(m, i10);
              if (i6 != 1073741824 && linearLayoutCompat$LayoutParams.width == -1) {
                m = 1;
              } else {
                m = 0;
              } 
              if (m != 0) {
                m = i4;
              } else {
                m = i10;
              } 
              m = Math.max(k, m);
              if (j != 0 && linearLayoutCompat$LayoutParams.width == -1) {
                j = 1;
              } else {
                j = 0;
              } 
              k = this.mTotalLength;
              i4 = view.getMeasuredHeight();
              i10 = linearLayoutCompat$LayoutParams.topMargin;
              this.mTotalLength = Math.max(k, linearLayoutCompat$LayoutParams.bottomMargin + i4 + k + i10 + getNextLocationOffset(view));
              k = i1;
              i1 = i;
              i = n;
              n = i1;
            } 
            i2++;
            i1 = k;
            k = m;
            m = i1;
            continue;
          } 
          this.mTotalLength += getPaddingTop() + getPaddingBottom();
          n = j;
          j = k;
          k = n;
          if (k != 0 || i6 == 1073741824)
            j = m; 
          setMeasuredDimension(ViewCompat.resolveSizeAndState(Math.max(j + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), paramInt1, i), i9);
          if (i3 != 0)
            forceUniformWidth(i5, paramInt2); 
          return;
        } 
        break;
      } 
      i1 = Math.max(i1, i4);
      if (bool && i7 != 1073741824)
        for (n = 0; n < i5; n++) {
          View view = getVirtualChildAt(n);
          if (view != null && view.getVisibility() != 8 && ((LinearLayoutCompat$LayoutParams)view.getLayoutParams()).weight > 0.0F)
            view.measure(View.MeasureSpec.makeMeasureSpec(view.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(m, 1073741824)); 
        }  
      m = i1;
      n = j;
      j = m;
      m = n;
      continue;
    } 
  }
  
  protected void onDraw(Canvas paramCanvas) {
    if (this.mDivider == null)
      return; 
    if (this.mOrientation == 1) {
      drawDividersVertical(paramCanvas);
      return;
    } 
    drawDividersHorizontal(paramCanvas);
  }
  
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent) {
    if (Build.VERSION.SDK_INT >= 14) {
      super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
      paramAccessibilityEvent.setClassName(LinearLayoutCompat.class.getName());
    } 
  }
  
  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo) {
    if (Build.VERSION.SDK_INT >= 14) {
      super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
      paramAccessibilityNodeInfo.setClassName(LinearLayoutCompat.class.getName());
    } 
  }
  
  public void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    if (this.mOrientation == 1) {
      layoutVertical(paramInt1, paramInt2, paramInt3, paramInt4);
      return;
    } 
    layoutHorizontal(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2) {
    if (this.mOrientation == 1) {
      measureVertical(paramInt1, paramInt2);
      return;
    } 
    measureHorizontal(paramInt1, paramInt2);
  }
  
  public void setBaselineAligned(boolean paramBoolean) {
    this.mBaselineAligned = paramBoolean;
  }
  
  public void setBaselineAlignedChildIndex(int paramInt) {
    if (paramInt < 0 || paramInt >= getChildCount())
      throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")"); 
    this.mBaselineAlignedChildIndex = paramInt;
  }
  
  public void setDividerDrawable(Drawable paramDrawable) {
    boolean bool = false;
    if (paramDrawable == this.mDivider)
      return; 
    this.mDivider = paramDrawable;
    if (paramDrawable != null) {
      this.mDividerWidth = paramDrawable.getIntrinsicWidth();
      this.mDividerHeight = paramDrawable.getIntrinsicHeight();
    } else {
      this.mDividerWidth = 0;
      this.mDividerHeight = 0;
    } 
    if (paramDrawable == null)
      bool = true; 
    setWillNotDraw(bool);
    requestLayout();
  }
  
  public void setDividerPadding(int paramInt) {
    this.mDividerPadding = paramInt;
  }
  
  public void setGravity(int paramInt) {
    if (this.mGravity != paramInt) {
      if ((0x800007 & paramInt) == 0)
        paramInt = 0x800003 | paramInt; 
      int i = paramInt;
      if ((paramInt & 0x70) == 0)
        i = paramInt | 0x30; 
      this.mGravity = i;
      requestLayout();
    } 
  }
  
  public void setHorizontalGravity(int paramInt) {
    paramInt &= 0x800007;
    if ((this.mGravity & 0x800007) != paramInt) {
      this.mGravity = paramInt | this.mGravity & 0xFF7FFFF8;
      requestLayout();
    } 
  }
  
  public void setMeasureWithLargestChildEnabled(boolean paramBoolean) {
    this.mUseLargestChild = paramBoolean;
  }
  
  public void setOrientation(int paramInt) {
    if (this.mOrientation != paramInt) {
      this.mOrientation = paramInt;
      requestLayout();
    } 
  }
  
  public void setShowDividers(int paramInt) {
    if (paramInt != this.mShowDividers)
      requestLayout(); 
    this.mShowDividers = paramInt;
  }
  
  public void setVerticalGravity(int paramInt) {
    paramInt &= 0x70;
    if ((this.mGravity & 0x70) != paramInt) {
      this.mGravity = paramInt | this.mGravity & 0xFFFFFF8F;
      requestLayout();
    } 
  }
  
  public void setWeightSum(float paramFloat) {
    this.mWeightSum = Math.max(0.0F, paramFloat);
  }
  
  public boolean shouldDelayChildPressedState() {
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\LinearLayoutCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */