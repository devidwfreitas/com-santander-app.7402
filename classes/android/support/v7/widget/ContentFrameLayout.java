package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.support.annotation.RestrictTo;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.widget.FrameLayout;

public class ContentFrameLayout extends FrameLayout {
  private ContentFrameLayout$OnAttachListener mAttachListener;
  
  private final Rect mDecorPadding = new Rect();
  
  private TypedValue mFixedHeightMajor;
  
  private TypedValue mFixedHeightMinor;
  
  private TypedValue mFixedWidthMajor;
  
  private TypedValue mFixedWidthMinor;
  
  private TypedValue mMinWidthMajor;
  
  private TypedValue mMinWidthMinor;
  
  public ContentFrameLayout(Context paramContext) {
    this(paramContext, (AttributeSet)null);
  }
  
  public ContentFrameLayout(Context paramContext, AttributeSet paramAttributeSet) {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ContentFrameLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public void dispatchFitSystemWindows(Rect paramRect) {
    fitSystemWindows(paramRect);
  }
  
  public TypedValue getFixedHeightMajor() {
    if (this.mFixedHeightMajor == null)
      this.mFixedHeightMajor = new TypedValue(); 
    return this.mFixedHeightMajor;
  }
  
  public TypedValue getFixedHeightMinor() {
    if (this.mFixedHeightMinor == null)
      this.mFixedHeightMinor = new TypedValue(); 
    return this.mFixedHeightMinor;
  }
  
  public TypedValue getFixedWidthMajor() {
    if (this.mFixedWidthMajor == null)
      this.mFixedWidthMajor = new TypedValue(); 
    return this.mFixedWidthMajor;
  }
  
  public TypedValue getFixedWidthMinor() {
    if (this.mFixedWidthMinor == null)
      this.mFixedWidthMinor = new TypedValue(); 
    return this.mFixedWidthMinor;
  }
  
  public TypedValue getMinWidthMajor() {
    if (this.mMinWidthMajor == null)
      this.mMinWidthMajor = new TypedValue(); 
    return this.mMinWidthMajor;
  }
  
  public TypedValue getMinWidthMinor() {
    if (this.mMinWidthMinor == null)
      this.mMinWidthMinor = new TypedValue(); 
    return this.mMinWidthMinor;
  }
  
  protected void onAttachedToWindow() {
    super.onAttachedToWindow();
    if (this.mAttachListener != null)
      this.mAttachListener.onAttachedFromWindow(); 
  }
  
  protected void onDetachedFromWindow() {
    super.onDetachedFromWindow();
    if (this.mAttachListener != null)
      this.mAttachListener.onDetachedFromWindow(); 
  }
  
  protected void onMeasure(int paramInt1, int paramInt2) {
    // Byte code:
    //   0: iconst_0
    //   1: istore #7
    //   3: aload_0
    //   4: invokevirtual getContext : ()Landroid/content/Context;
    //   7: invokevirtual getResources : ()Landroid/content/res/Resources;
    //   10: invokevirtual getDisplayMetrics : ()Landroid/util/DisplayMetrics;
    //   13: astore #11
    //   15: aload #11
    //   17: getfield widthPixels : I
    //   20: aload #11
    //   22: getfield heightPixels : I
    //   25: if_icmpge -> 347
    //   28: iconst_1
    //   29: istore #4
    //   31: iload_1
    //   32: invokestatic getMode : (I)I
    //   35: istore #8
    //   37: iload_2
    //   38: invokestatic getMode : (I)I
    //   41: istore #9
    //   43: iload #8
    //   45: ldc -2147483648
    //   47: if_icmpne -> 495
    //   50: iload #4
    //   52: ifeq -> 353
    //   55: aload_0
    //   56: getfield mFixedWidthMinor : Landroid/util/TypedValue;
    //   59: astore #10
    //   61: aload #10
    //   63: ifnull -> 495
    //   66: aload #10
    //   68: getfield type : I
    //   71: ifeq -> 495
    //   74: aload #10
    //   76: getfield type : I
    //   79: iconst_5
    //   80: if_icmpne -> 362
    //   83: aload #10
    //   85: aload #11
    //   87: invokevirtual getDimension : (Landroid/util/DisplayMetrics;)F
    //   90: f2i
    //   91: istore_3
    //   92: iload_3
    //   93: ifle -> 495
    //   96: iload_3
    //   97: aload_0
    //   98: getfield mDecorPadding : Landroid/graphics/Rect;
    //   101: getfield left : I
    //   104: aload_0
    //   105: getfield mDecorPadding : Landroid/graphics/Rect;
    //   108: getfield right : I
    //   111: iadd
    //   112: isub
    //   113: iload_1
    //   114: invokestatic getSize : (I)I
    //   117: invokestatic min : (II)I
    //   120: ldc 1073741824
    //   122: invokestatic makeMeasureSpec : (II)I
    //   125: istore #6
    //   127: iconst_1
    //   128: istore #5
    //   130: iload_2
    //   131: istore_3
    //   132: iload #9
    //   134: ldc -2147483648
    //   136: if_icmpne -> 221
    //   139: iload #4
    //   141: ifeq -> 394
    //   144: aload_0
    //   145: getfield mFixedHeightMajor : Landroid/util/TypedValue;
    //   148: astore #10
    //   150: iload_2
    //   151: istore_3
    //   152: aload #10
    //   154: ifnull -> 221
    //   157: iload_2
    //   158: istore_3
    //   159: aload #10
    //   161: getfield type : I
    //   164: ifeq -> 221
    //   167: aload #10
    //   169: getfield type : I
    //   172: iconst_5
    //   173: if_icmpne -> 403
    //   176: aload #10
    //   178: aload #11
    //   180: invokevirtual getDimension : (Landroid/util/DisplayMetrics;)F
    //   183: f2i
    //   184: istore_1
    //   185: iload_2
    //   186: istore_3
    //   187: iload_1
    //   188: ifle -> 221
    //   191: iload_1
    //   192: aload_0
    //   193: getfield mDecorPadding : Landroid/graphics/Rect;
    //   196: getfield top : I
    //   199: aload_0
    //   200: getfield mDecorPadding : Landroid/graphics/Rect;
    //   203: getfield bottom : I
    //   206: iadd
    //   207: isub
    //   208: iload_2
    //   209: invokestatic getSize : (I)I
    //   212: invokestatic min : (II)I
    //   215: ldc 1073741824
    //   217: invokestatic makeMeasureSpec : (II)I
    //   220: istore_3
    //   221: aload_0
    //   222: iload #6
    //   224: iload_3
    //   225: invokespecial onMeasure : (II)V
    //   228: aload_0
    //   229: invokevirtual getMeasuredWidth : ()I
    //   232: istore #9
    //   234: iload #9
    //   236: ldc 1073741824
    //   238: invokestatic makeMeasureSpec : (II)I
    //   241: istore #6
    //   243: iload #5
    //   245: ifne -> 476
    //   248: iload #8
    //   250: ldc -2147483648
    //   252: if_icmpne -> 476
    //   255: iload #4
    //   257: ifeq -> 435
    //   260: aload_0
    //   261: getfield mMinWidthMinor : Landroid/util/TypedValue;
    //   264: astore #10
    //   266: aload #10
    //   268: ifnull -> 476
    //   271: aload #10
    //   273: getfield type : I
    //   276: ifeq -> 476
    //   279: aload #10
    //   281: getfield type : I
    //   284: iconst_5
    //   285: if_icmpne -> 444
    //   288: aload #10
    //   290: aload #11
    //   292: invokevirtual getDimension : (Landroid/util/DisplayMetrics;)F
    //   295: f2i
    //   296: istore_1
    //   297: iload_1
    //   298: istore_2
    //   299: iload_1
    //   300: ifle -> 321
    //   303: iload_1
    //   304: aload_0
    //   305: getfield mDecorPadding : Landroid/graphics/Rect;
    //   308: getfield left : I
    //   311: aload_0
    //   312: getfield mDecorPadding : Landroid/graphics/Rect;
    //   315: getfield right : I
    //   318: iadd
    //   319: isub
    //   320: istore_2
    //   321: iload #9
    //   323: iload_2
    //   324: if_icmpge -> 476
    //   327: iload_2
    //   328: ldc 1073741824
    //   330: invokestatic makeMeasureSpec : (II)I
    //   333: istore_1
    //   334: iconst_1
    //   335: istore_2
    //   336: iload_2
    //   337: ifeq -> 346
    //   340: aload_0
    //   341: iload_1
    //   342: iload_3
    //   343: invokespecial onMeasure : (II)V
    //   346: return
    //   347: iconst_0
    //   348: istore #4
    //   350: goto -> 31
    //   353: aload_0
    //   354: getfield mFixedWidthMajor : Landroid/util/TypedValue;
    //   357: astore #10
    //   359: goto -> 61
    //   362: aload #10
    //   364: getfield type : I
    //   367: bipush #6
    //   369: if_icmpne -> 504
    //   372: aload #10
    //   374: aload #11
    //   376: getfield widthPixels : I
    //   379: i2f
    //   380: aload #11
    //   382: getfield widthPixels : I
    //   385: i2f
    //   386: invokevirtual getFraction : (FF)F
    //   389: f2i
    //   390: istore_3
    //   391: goto -> 92
    //   394: aload_0
    //   395: getfield mFixedHeightMinor : Landroid/util/TypedValue;
    //   398: astore #10
    //   400: goto -> 150
    //   403: aload #10
    //   405: getfield type : I
    //   408: bipush #6
    //   410: if_icmpne -> 490
    //   413: aload #10
    //   415: aload #11
    //   417: getfield heightPixels : I
    //   420: i2f
    //   421: aload #11
    //   423: getfield heightPixels : I
    //   426: i2f
    //   427: invokevirtual getFraction : (FF)F
    //   430: f2i
    //   431: istore_1
    //   432: goto -> 185
    //   435: aload_0
    //   436: getfield mMinWidthMajor : Landroid/util/TypedValue;
    //   439: astore #10
    //   441: goto -> 266
    //   444: aload #10
    //   446: getfield type : I
    //   449: bipush #6
    //   451: if_icmpne -> 485
    //   454: aload #10
    //   456: aload #11
    //   458: getfield widthPixels : I
    //   461: i2f
    //   462: aload #11
    //   464: getfield widthPixels : I
    //   467: i2f
    //   468: invokevirtual getFraction : (FF)F
    //   471: f2i
    //   472: istore_1
    //   473: goto -> 297
    //   476: iload #6
    //   478: istore_1
    //   479: iload #7
    //   481: istore_2
    //   482: goto -> 336
    //   485: iconst_0
    //   486: istore_1
    //   487: goto -> 297
    //   490: iconst_0
    //   491: istore_1
    //   492: goto -> 185
    //   495: iconst_0
    //   496: istore #5
    //   498: iload_1
    //   499: istore #6
    //   501: goto -> 130
    //   504: iconst_0
    //   505: istore_3
    //   506: goto -> 92
  }
  
  public void setAttachListener(ContentFrameLayout$OnAttachListener paramContentFrameLayout$OnAttachListener) {
    this.mAttachListener = paramContentFrameLayout$OnAttachListener;
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public void setDecorPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    this.mDecorPadding.set(paramInt1, paramInt2, paramInt3, paramInt4);
    if (ViewCompat.isLaidOut((View)this))
      requestLayout(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ContentFrameLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */