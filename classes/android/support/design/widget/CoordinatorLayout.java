package android.support.design.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.annotation.ColorInt;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.support.design.R;
import android.support.v4.content.ContextCompat;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.util.Pools;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.NestedScrollingParent;
import android.support.v4.view.NestedScrollingParentHelper;
import android.support.v4.view.OnApplyWindowInsetsListener;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.WindowInsetsCompat;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CoordinatorLayout extends ViewGroup implements NestedScrollingParent {
  static final Class<?>[] CONSTRUCTOR_PARAMS;
  
  static final int EVENT_NESTED_SCROLL = 1;
  
  static final int EVENT_PRE_DRAW = 0;
  
  static final int EVENT_VIEW_REMOVED = 2;
  
  static final String TAG = "CoordinatorLayout";
  
  static final Comparator<View> TOP_SORTED_CHILDREN_COMPARATOR;
  
  private static final int TYPE_ON_INTERCEPT = 0;
  
  private static final int TYPE_ON_TOUCH = 1;
  
  static final String WIDGET_PACKAGE_NAME;
  
  static final ThreadLocal<Map<String, Constructor<CoordinatorLayout$Behavior>>> sConstructors;
  
  private static final Pools.Pool<Rect> sRectPool;
  
  private OnApplyWindowInsetsListener mApplyWindowInsetsListener;
  
  private View mBehaviorTouchView;
  
  private final DirectedAcyclicGraph<View> mChildDag = new DirectedAcyclicGraph<View>();
  
  private final List<View> mDependencySortedChildren = new ArrayList<View>();
  
  private boolean mDisallowInterceptReset;
  
  private boolean mDrawStatusBarBackground;
  
  private boolean mIsAttachedToWindow;
  
  private int[] mKeylines;
  
  private WindowInsetsCompat mLastInsets;
  
  private boolean mNeedsPreDrawListener;
  
  private View mNestedScrollingDirectChild;
  
  private final NestedScrollingParentHelper mNestedScrollingParentHelper = new NestedScrollingParentHelper(this);
  
  private View mNestedScrollingTarget;
  
  ViewGroup.OnHierarchyChangeListener mOnHierarchyChangeListener;
  
  private CoordinatorLayout$OnPreDrawListener mOnPreDrawListener;
  
  private Paint mScrimPaint;
  
  private Drawable mStatusBarBackground;
  
  private final List<View> mTempDependenciesList = new ArrayList<View>();
  
  private final int[] mTempIntPair = new int[2];
  
  private final List<View> mTempList1 = new ArrayList<View>();
  
  static {
    Package package_ = CoordinatorLayout.class.getPackage();
    if (package_ != null) {
      String str = package_.getName();
    } else {
      package_ = null;
    } 
    WIDGET_PACKAGE_NAME = (String)package_;
    if (Build.VERSION.SDK_INT >= 21) {
      TOP_SORTED_CHILDREN_COMPARATOR = new CoordinatorLayout$ViewElevationComparator();
    } else {
      TOP_SORTED_CHILDREN_COMPARATOR = null;
    } 
    CONSTRUCTOR_PARAMS = new Class[] { Context.class, AttributeSet.class };
    sConstructors = new ThreadLocal<Map<String, Constructor<CoordinatorLayout$Behavior>>>();
    sRectPool = (Pools.Pool<Rect>)new Pools.SynchronizedPool(12);
  }
  
  public CoordinatorLayout(Context paramContext) {
    this(paramContext, (AttributeSet)null);
  }
  
  public CoordinatorLayout(Context paramContext, AttributeSet paramAttributeSet) {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public CoordinatorLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    ThemeUtils.checkAppCompatTheme(paramContext);
    TypedArray typedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.CoordinatorLayout, paramInt, R.style.Widget_Design_CoordinatorLayout);
    paramInt = typedArray.getResourceId(R.styleable.CoordinatorLayout_keylines, 0);
    if (paramInt != 0) {
      Resources resources = paramContext.getResources();
      this.mKeylines = resources.getIntArray(paramInt);
      float f = (resources.getDisplayMetrics()).density;
      int i = this.mKeylines.length;
      for (paramInt = bool; paramInt < i; paramInt++) {
        int[] arrayOfInt = this.mKeylines;
        arrayOfInt[paramInt] = (int)(arrayOfInt[paramInt] * f);
      } 
    } 
    this.mStatusBarBackground = typedArray.getDrawable(R.styleable.CoordinatorLayout_statusBarBackground);
    typedArray.recycle();
    setupForInsets();
    super.setOnHierarchyChangeListener(new CoordinatorLayout$HierarchyChangeListener(this));
  }
  
  @NonNull
  private static Rect acquireTempRect() {
    Rect rect2 = (Rect)sRectPool.acquire();
    Rect rect1 = rect2;
    if (rect2 == null)
      rect1 = new Rect(); 
    return rect1;
  }
  
  private void constrainChildRect(CoordinatorLayout$LayoutParams paramCoordinatorLayout$LayoutParams, Rect paramRect, int paramInt1, int paramInt2) {
    int j = getWidth();
    int i = getHeight();
    j = Math.max(getPaddingLeft() + paramCoordinatorLayout$LayoutParams.leftMargin, Math.min(paramRect.left, j - getPaddingRight() - paramInt1 - paramCoordinatorLayout$LayoutParams.rightMargin));
    i = Math.max(getPaddingTop() + paramCoordinatorLayout$LayoutParams.topMargin, Math.min(paramRect.top, i - getPaddingBottom() - paramInt2 - paramCoordinatorLayout$LayoutParams.bottomMargin));
    paramRect.set(j, i, j + paramInt1, i + paramInt2);
  }
  
  private WindowInsetsCompat dispatchApplyWindowInsetsToBehaviors(WindowInsetsCompat paramWindowInsetsCompat) {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual isConsumed : ()Z
    //   4: ifeq -> 9
    //   7: aload_1
    //   8: areturn
    //   9: aload_0
    //   10: invokevirtual getChildCount : ()I
    //   13: istore_3
    //   14: iconst_0
    //   15: istore_2
    //   16: iload_2
    //   17: iload_3
    //   18: if_icmpge -> 86
    //   21: aload_0
    //   22: iload_2
    //   23: invokevirtual getChildAt : (I)Landroid/view/View;
    //   26: astore #4
    //   28: aload #4
    //   30: invokestatic getFitsSystemWindows : (Landroid/view/View;)Z
    //   33: ifeq -> 79
    //   36: aload #4
    //   38: invokevirtual getLayoutParams : ()Landroid/view/ViewGroup$LayoutParams;
    //   41: checkcast android/support/design/widget/CoordinatorLayout$LayoutParams
    //   44: invokevirtual getBehavior : ()Landroid/support/design/widget/CoordinatorLayout$Behavior;
    //   47: astore #5
    //   49: aload #5
    //   51: ifnull -> 79
    //   54: aload #5
    //   56: aload_0
    //   57: aload #4
    //   59: aload_1
    //   60: invokevirtual onApplyWindowInsets : (Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    //   63: astore #4
    //   65: aload #4
    //   67: astore_1
    //   68: aload #4
    //   70: invokevirtual isConsumed : ()Z
    //   73: ifeq -> 79
    //   76: aload #4
    //   78: areturn
    //   79: iload_2
    //   80: iconst_1
    //   81: iadd
    //   82: istore_2
    //   83: goto -> 16
    //   86: aload_1
    //   87: astore #4
    //   89: goto -> 76
  }
  
  private void getDesiredAnchoredChildRectWithoutConstraints(View paramView, int paramInt1, Rect paramRect1, Rect paramRect2, CoordinatorLayout$LayoutParams paramCoordinatorLayout$LayoutParams, int paramInt2, int paramInt3) {
    // Byte code:
    //   0: aload #5
    //   2: getfield gravity : I
    //   5: invokestatic resolveAnchoredChildGravity : (I)I
    //   8: iload_2
    //   9: invokestatic getAbsoluteGravity : (II)I
    //   12: istore #10
    //   14: aload #5
    //   16: getfield anchorGravity : I
    //   19: invokestatic resolveGravity : (I)I
    //   22: iload_2
    //   23: invokestatic getAbsoluteGravity : (II)I
    //   26: istore #8
    //   28: iload #8
    //   30: bipush #7
    //   32: iand
    //   33: lookupswitch default -> 60, 1 -> 208, 5 -> 200
    //   60: aload_3
    //   61: getfield left : I
    //   64: istore_2
    //   65: iload #8
    //   67: bipush #112
    //   69: iand
    //   70: lookupswitch default -> 96, 16 -> 234, 80 -> 225
    //   96: aload_3
    //   97: getfield top : I
    //   100: istore #8
    //   102: iload_2
    //   103: istore #9
    //   105: iload #10
    //   107: bipush #7
    //   109: iand
    //   110: lookupswitch default -> 136, 1 -> 250, 5 -> 142
    //   136: iload_2
    //   137: iload #6
    //   139: isub
    //   140: istore #9
    //   142: iload #8
    //   144: istore_2
    //   145: iload #10
    //   147: bipush #112
    //   149: iand
    //   150: lookupswitch default -> 176, 16 -> 261, 80 -> 182
    //   176: iload #8
    //   178: iload #7
    //   180: isub
    //   181: istore_2
    //   182: aload #4
    //   184: iload #9
    //   186: iload_2
    //   187: iload #9
    //   189: iload #6
    //   191: iadd
    //   192: iload_2
    //   193: iload #7
    //   195: iadd
    //   196: invokevirtual set : (IIII)V
    //   199: return
    //   200: aload_3
    //   201: getfield right : I
    //   204: istore_2
    //   205: goto -> 65
    //   208: aload_3
    //   209: getfield left : I
    //   212: istore_2
    //   213: aload_3
    //   214: invokevirtual width : ()I
    //   217: iconst_2
    //   218: idiv
    //   219: iload_2
    //   220: iadd
    //   221: istore_2
    //   222: goto -> 65
    //   225: aload_3
    //   226: getfield bottom : I
    //   229: istore #8
    //   231: goto -> 102
    //   234: aload_3
    //   235: getfield top : I
    //   238: aload_3
    //   239: invokevirtual height : ()I
    //   242: iconst_2
    //   243: idiv
    //   244: iadd
    //   245: istore #8
    //   247: goto -> 102
    //   250: iload_2
    //   251: iload #6
    //   253: iconst_2
    //   254: idiv
    //   255: isub
    //   256: istore #9
    //   258: goto -> 142
    //   261: iload #8
    //   263: iload #7
    //   265: iconst_2
    //   266: idiv
    //   267: isub
    //   268: istore_2
    //   269: goto -> 182
  }
  
  private int getKeyline(int paramInt) {
    if (this.mKeylines == null) {
      Log.e("CoordinatorLayout", "No keylines defined for " + this + " - attempted index lookup " + paramInt);
      return 0;
    } 
    if (paramInt < 0 || paramInt >= this.mKeylines.length) {
      Log.e("CoordinatorLayout", "Keyline index " + paramInt + " out of range for " + this);
      return 0;
    } 
    return this.mKeylines[paramInt];
  }
  
  private void getTopSortedChildren(List<View> paramList) {
    paramList.clear();
    boolean bool = isChildrenDrawingOrderEnabled();
    int j = getChildCount();
    for (int i = j - 1; i >= 0; i--) {
      int k;
      if (bool) {
        k = getChildDrawingOrder(j, i);
      } else {
        k = i;
      } 
      paramList.add(getChildAt(k));
    } 
    if (TOP_SORTED_CHILDREN_COMPARATOR != null)
      Collections.sort(paramList, TOP_SORTED_CHILDREN_COMPARATOR); 
  }
  
  private boolean hasDependencies(View paramView) {
    return this.mChildDag.hasOutgoingEdges(paramView);
  }
  
  private void layoutChild(View paramView, int paramInt) {
    CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams)paramView.getLayoutParams();
    Rect rect1 = acquireTempRect();
    rect1.set(getPaddingLeft() + coordinatorLayout$LayoutParams.leftMargin, getPaddingTop() + coordinatorLayout$LayoutParams.topMargin, getWidth() - getPaddingRight() - coordinatorLayout$LayoutParams.rightMargin, getHeight() - getPaddingBottom() - coordinatorLayout$LayoutParams.bottomMargin);
    if (this.mLastInsets != null && ViewCompat.getFitsSystemWindows((View)this) && !ViewCompat.getFitsSystemWindows(paramView)) {
      rect1.left += this.mLastInsets.getSystemWindowInsetLeft();
      rect1.top += this.mLastInsets.getSystemWindowInsetTop();
      rect1.right -= this.mLastInsets.getSystemWindowInsetRight();
      rect1.bottom -= this.mLastInsets.getSystemWindowInsetBottom();
    } 
    Rect rect2 = acquireTempRect();
    GravityCompat.apply(resolveGravity(coordinatorLayout$LayoutParams.gravity), paramView.getMeasuredWidth(), paramView.getMeasuredHeight(), rect1, rect2, paramInt);
    paramView.layout(rect2.left, rect2.top, rect2.right, rect2.bottom);
    releaseTempRect(rect1);
    releaseTempRect(rect2);
  }
  
  private void layoutChildWithAnchor(View paramView1, View paramView2, int paramInt) {
    CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams)paramView1.getLayoutParams();
    Rect rect1 = acquireTempRect();
    Rect rect2 = acquireTempRect();
    try {
      getDescendantRect(paramView2, rect1);
      getDesiredAnchoredChildRect(paramView1, paramInt, rect1, rect2);
      paramView1.layout(rect2.left, rect2.top, rect2.right, rect2.bottom);
      return;
    } finally {
      releaseTempRect(rect1);
      releaseTempRect(rect2);
    } 
  }
  
  private void layoutChildWithKeyline(View paramView, int paramInt1, int paramInt2) {
    CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams)paramView.getLayoutParams();
    int i1 = GravityCompat.getAbsoluteGravity(resolveKeylineGravity(coordinatorLayout$LayoutParams.gravity), paramInt2);
    int n = getWidth();
    int m = getHeight();
    int j = paramView.getMeasuredWidth();
    int k = paramView.getMeasuredHeight();
    int i = paramInt1;
    if (paramInt2 == 1)
      i = n - paramInt1; 
    paramInt1 = getKeyline(i) - j;
    paramInt2 = 0;
    switch (i1 & 0x7) {
      default:
        switch (i1 & 0x70) {
          default:
            paramInt1 = Math.max(getPaddingLeft() + coordinatorLayout$LayoutParams.leftMargin, Math.min(paramInt1, n - getPaddingRight() - j - coordinatorLayout$LayoutParams.rightMargin));
            paramInt2 = Math.max(getPaddingTop() + coordinatorLayout$LayoutParams.topMargin, Math.min(paramInt2, m - getPaddingBottom() - k - coordinatorLayout$LayoutParams.bottomMargin));
            paramView.layout(paramInt1, paramInt2, paramInt1 + j, paramInt2 + k);
            return;
          case 80:
            paramInt2 = 0 + k;
          case 16:
            break;
        } 
        break;
      case 5:
        paramInt1 += j;
      case 1:
        paramInt1 += j / 2;
    } 
    paramInt2 = 0 + k / 2;
  }
  
  private void offsetChildByInset(View paramView, Rect paramRect, int paramInt) {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic isLaidOut : (Landroid/view/View;)Z
    //   4: ifne -> 8
    //   7: return
    //   8: aload_1
    //   9: invokevirtual getWidth : ()I
    //   12: ifle -> 7
    //   15: aload_1
    //   16: invokevirtual getHeight : ()I
    //   19: ifle -> 7
    //   22: aload_1
    //   23: invokevirtual getLayoutParams : ()Landroid/view/ViewGroup$LayoutParams;
    //   26: checkcast android/support/design/widget/CoordinatorLayout$LayoutParams
    //   29: astore #7
    //   31: aload #7
    //   33: invokevirtual getBehavior : ()Landroid/support/design/widget/CoordinatorLayout$Behavior;
    //   36: astore #8
    //   38: invokestatic acquireTempRect : ()Landroid/graphics/Rect;
    //   41: astore #9
    //   43: invokestatic acquireTempRect : ()Landroid/graphics/Rect;
    //   46: astore #10
    //   48: aload #10
    //   50: aload_1
    //   51: invokevirtual getLeft : ()I
    //   54: aload_1
    //   55: invokevirtual getTop : ()I
    //   58: aload_1
    //   59: invokevirtual getRight : ()I
    //   62: aload_1
    //   63: invokevirtual getBottom : ()I
    //   66: invokevirtual set : (IIII)V
    //   69: aload #8
    //   71: ifnull -> 142
    //   74: aload #8
    //   76: aload_0
    //   77: aload_1
    //   78: aload #9
    //   80: invokevirtual getInsetDodgeRect : (Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;)Z
    //   83: ifeq -> 142
    //   86: aload #10
    //   88: aload #9
    //   90: invokevirtual contains : (Landroid/graphics/Rect;)Z
    //   93: ifne -> 149
    //   96: new java/lang/IllegalArgumentException
    //   99: dup
    //   100: new java/lang/StringBuilder
    //   103: dup
    //   104: invokespecial <init> : ()V
    //   107: ldc_w 'Rect should be within the child's bounds. Rect:'
    //   110: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   113: aload #9
    //   115: invokevirtual toShortString : ()Ljava/lang/String;
    //   118: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   121: ldc_w ' | Bounds:'
    //   124: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   127: aload #10
    //   129: invokevirtual toShortString : ()Ljava/lang/String;
    //   132: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   135: invokevirtual toString : ()Ljava/lang/String;
    //   138: invokespecial <init> : (Ljava/lang/String;)V
    //   141: athrow
    //   142: aload #9
    //   144: aload #10
    //   146: invokevirtual set : (Landroid/graphics/Rect;)V
    //   149: aload #10
    //   151: invokestatic releaseTempRect : (Landroid/graphics/Rect;)V
    //   154: aload #9
    //   156: invokevirtual isEmpty : ()Z
    //   159: ifeq -> 168
    //   162: aload #9
    //   164: invokestatic releaseTempRect : (Landroid/graphics/Rect;)V
    //   167: return
    //   168: aload #7
    //   170: getfield dodgeInsetEdges : I
    //   173: iload_3
    //   174: invokestatic getAbsoluteGravity : (II)I
    //   177: istore #5
    //   179: iload #5
    //   181: bipush #48
    //   183: iand
    //   184: bipush #48
    //   186: if_icmpne -> 441
    //   189: aload #9
    //   191: getfield top : I
    //   194: aload #7
    //   196: getfield topMargin : I
    //   199: isub
    //   200: aload #7
    //   202: getfield mInsetOffsetY : I
    //   205: isub
    //   206: istore_3
    //   207: iload_3
    //   208: aload_2
    //   209: getfield top : I
    //   212: if_icmpge -> 441
    //   215: aload_0
    //   216: aload_1
    //   217: aload_2
    //   218: getfield top : I
    //   221: iload_3
    //   222: isub
    //   223: invokespecial setInsetOffsetY : (Landroid/view/View;I)V
    //   226: iconst_1
    //   227: istore_3
    //   228: iload_3
    //   229: istore #4
    //   231: iload #5
    //   233: bipush #80
    //   235: iand
    //   236: bipush #80
    //   238: if_icmpne -> 292
    //   241: aload_0
    //   242: invokevirtual getHeight : ()I
    //   245: aload #9
    //   247: getfield bottom : I
    //   250: isub
    //   251: aload #7
    //   253: getfield bottomMargin : I
    //   256: isub
    //   257: aload #7
    //   259: getfield mInsetOffsetY : I
    //   262: iadd
    //   263: istore #6
    //   265: iload_3
    //   266: istore #4
    //   268: iload #6
    //   270: aload_2
    //   271: getfield bottom : I
    //   274: if_icmpge -> 292
    //   277: aload_0
    //   278: aload_1
    //   279: iload #6
    //   281: aload_2
    //   282: getfield bottom : I
    //   285: isub
    //   286: invokespecial setInsetOffsetY : (Landroid/view/View;I)V
    //   289: iconst_1
    //   290: istore #4
    //   292: iload #4
    //   294: ifne -> 303
    //   297: aload_0
    //   298: aload_1
    //   299: iconst_0
    //   300: invokespecial setInsetOffsetY : (Landroid/view/View;I)V
    //   303: iload #5
    //   305: iconst_3
    //   306: iand
    //   307: iconst_3
    //   308: if_icmpne -> 436
    //   311: aload #9
    //   313: getfield left : I
    //   316: aload #7
    //   318: getfield leftMargin : I
    //   321: isub
    //   322: aload #7
    //   324: getfield mInsetOffsetX : I
    //   327: isub
    //   328: istore_3
    //   329: iload_3
    //   330: aload_2
    //   331: getfield left : I
    //   334: if_icmpge -> 436
    //   337: aload_0
    //   338: aload_1
    //   339: aload_2
    //   340: getfield left : I
    //   343: iload_3
    //   344: isub
    //   345: invokespecial setInsetOffsetX : (Landroid/view/View;I)V
    //   348: iconst_1
    //   349: istore_3
    //   350: iload #5
    //   352: iconst_5
    //   353: iand
    //   354: iconst_5
    //   355: if_icmpne -> 433
    //   358: aload_0
    //   359: invokevirtual getWidth : ()I
    //   362: istore #4
    //   364: aload #9
    //   366: getfield right : I
    //   369: istore #5
    //   371: aload #7
    //   373: getfield rightMargin : I
    //   376: istore #6
    //   378: aload #7
    //   380: getfield mInsetOffsetX : I
    //   383: iload #4
    //   385: iload #5
    //   387: isub
    //   388: iload #6
    //   390: isub
    //   391: iadd
    //   392: istore #4
    //   394: iload #4
    //   396: aload_2
    //   397: getfield right : I
    //   400: if_icmpge -> 433
    //   403: aload_0
    //   404: aload_1
    //   405: iload #4
    //   407: aload_2
    //   408: getfield right : I
    //   411: isub
    //   412: invokespecial setInsetOffsetX : (Landroid/view/View;I)V
    //   415: iconst_1
    //   416: istore_3
    //   417: iload_3
    //   418: ifne -> 427
    //   421: aload_0
    //   422: aload_1
    //   423: iconst_0
    //   424: invokespecial setInsetOffsetX : (Landroid/view/View;I)V
    //   427: aload #9
    //   429: invokestatic releaseTempRect : (Landroid/graphics/Rect;)V
    //   432: return
    //   433: goto -> 417
    //   436: iconst_0
    //   437: istore_3
    //   438: goto -> 350
    //   441: iconst_0
    //   442: istore_3
    //   443: goto -> 228
  }
  
  static CoordinatorLayout$Behavior parseBehavior(Context paramContext, AttributeSet paramAttributeSet, String paramString) {
    String str;
    if (TextUtils.isEmpty(paramString))
      return null; 
    if (paramString.startsWith(".")) {
      str = paramContext.getPackageName() + paramString;
    } else {
      str = paramString;
      if (paramString.indexOf('.') < 0) {
        str = paramString;
        if (!TextUtils.isEmpty(WIDGET_PACKAGE_NAME))
          str = WIDGET_PACKAGE_NAME + '.' + paramString; 
      } 
    } 
    try {
      Map<Object, Object> map = (Map)sConstructors.get();
      if (map == null) {
        map = new HashMap<Object, Object>();
        sConstructors.set(map);
      } 
      Constructor<?> constructor2 = (Constructor)map.get(str);
      Constructor<?> constructor1 = constructor2;
      if (constructor2 == null) {
        constructor1 = Class.forName(str, true, paramContext.getClassLoader()).getConstructor(CONSTRUCTOR_PARAMS);
        constructor1.setAccessible(true);
        map.put(str, constructor1);
      } 
      return (CoordinatorLayout$Behavior)constructor1.newInstance(new Object[] { paramContext, paramAttributeSet });
    } catch (Exception exception) {
      throw new RuntimeException("Could not inflate Behavior subclass " + str, exception);
    } 
  }
  
  private boolean performIntercept(MotionEvent paramMotionEvent, int paramInt) {
    // Byte code:
    //   0: iconst_0
    //   1: istore #7
    //   3: iconst_0
    //   4: istore_3
    //   5: aconst_null
    //   6: astore #12
    //   8: aload_1
    //   9: invokestatic getActionMasked : (Landroid/view/MotionEvent;)I
    //   12: istore #5
    //   14: aload_0
    //   15: getfield mTempList1 : Ljava/util/List;
    //   18: astore #13
    //   20: aload_0
    //   21: aload #13
    //   23: invokespecial getTopSortedChildren : (Ljava/util/List;)V
    //   26: aload #13
    //   28: invokeinterface size : ()I
    //   33: istore #6
    //   35: iconst_0
    //   36: istore #4
    //   38: iload #4
    //   40: iload #6
    //   42: if_icmpge -> 333
    //   45: aload #13
    //   47: iload #4
    //   49: invokeinterface get : (I)Ljava/lang/Object;
    //   54: checkcast android/view/View
    //   57: astore #14
    //   59: aload #14
    //   61: invokevirtual getLayoutParams : ()Landroid/view/ViewGroup$LayoutParams;
    //   64: checkcast android/support/design/widget/CoordinatorLayout$LayoutParams
    //   67: astore #16
    //   69: aload #16
    //   71: invokevirtual getBehavior : ()Landroid/support/design/widget/CoordinatorLayout$Behavior;
    //   74: astore #15
    //   76: iload #7
    //   78: ifne -> 85
    //   81: iload_3
    //   82: ifeq -> 177
    //   85: iload #5
    //   87: ifeq -> 177
    //   90: aload #15
    //   92: ifnull -> 330
    //   95: aload #12
    //   97: ifnonnull -> 327
    //   100: invokestatic uptimeMillis : ()J
    //   103: lstore #10
    //   105: lload #10
    //   107: lload #10
    //   109: iconst_3
    //   110: fconst_0
    //   111: fconst_0
    //   112: iconst_0
    //   113: invokestatic obtain : (JJIFFI)Landroid/view/MotionEvent;
    //   116: astore #12
    //   118: iload_2
    //   119: tableswitch default -> 140, 0 -> 149, 1 -> 163
    //   140: iload #4
    //   142: iconst_1
    //   143: iadd
    //   144: istore #4
    //   146: goto -> 38
    //   149: aload #15
    //   151: aload_0
    //   152: aload #14
    //   154: aload #12
    //   156: invokevirtual onInterceptTouchEvent : (Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    //   159: pop
    //   160: goto -> 140
    //   163: aload #15
    //   165: aload_0
    //   166: aload #14
    //   168: aload #12
    //   170: invokevirtual onTouchEvent : (Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    //   173: pop
    //   174: goto -> 140
    //   177: iload #7
    //   179: istore #8
    //   181: iload #7
    //   183: ifne -> 239
    //   186: iload #7
    //   188: istore #8
    //   190: aload #15
    //   192: ifnull -> 239
    //   195: iload_2
    //   196: tableswitch default -> 220, 0 -> 291, 1 -> 305
    //   220: iload #7
    //   222: istore #8
    //   224: iload #7
    //   226: ifeq -> 239
    //   229: aload_0
    //   230: aload #14
    //   232: putfield mBehaviorTouchView : Landroid/view/View;
    //   235: iload #7
    //   237: istore #8
    //   239: iload #8
    //   241: istore #7
    //   243: aload #16
    //   245: invokevirtual didBlockInteraction : ()Z
    //   248: istore #8
    //   250: aload #16
    //   252: aload_0
    //   253: aload #14
    //   255: invokevirtual isBlockingInteractionBelow : (Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Z
    //   258: istore #9
    //   260: iload #9
    //   262: ifeq -> 319
    //   265: iload #8
    //   267: ifne -> 319
    //   270: iconst_1
    //   271: istore_3
    //   272: iload #9
    //   274: ifeq -> 324
    //   277: iload_3
    //   278: ifne -> 324
    //   281: aload #13
    //   283: invokeinterface clear : ()V
    //   288: iload #7
    //   290: ireturn
    //   291: aload #15
    //   293: aload_0
    //   294: aload #14
    //   296: aload_1
    //   297: invokevirtual onInterceptTouchEvent : (Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    //   300: istore #7
    //   302: goto -> 220
    //   305: aload #15
    //   307: aload_0
    //   308: aload #14
    //   310: aload_1
    //   311: invokevirtual onTouchEvent : (Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    //   314: istore #7
    //   316: goto -> 220
    //   319: iconst_0
    //   320: istore_3
    //   321: goto -> 272
    //   324: goto -> 140
    //   327: goto -> 118
    //   330: goto -> 140
    //   333: goto -> 281
  }
  
  private void prepareChildren() {
    this.mDependencySortedChildren.clear();
    this.mChildDag.clear();
    int j = getChildCount();
    for (int i = 0; i < j; i++) {
      View view = getChildAt(i);
      getResolvedLayoutParams(view).findAnchorView(this, view);
      this.mChildDag.addNode(view);
      for (int k = 0; k < j; k++) {
        if (k != i) {
          View view1 = getChildAt(k);
          if (getResolvedLayoutParams(view1).dependsOn(this, view1, view)) {
            if (!this.mChildDag.contains(view1))
              this.mChildDag.addNode(view1); 
            this.mChildDag.addEdge(view, view1);
          } 
        } 
      } 
    } 
    this.mDependencySortedChildren.addAll(this.mChildDag.getSortedList());
    Collections.reverse(this.mDependencySortedChildren);
  }
  
  private static void releaseTempRect(@NonNull Rect paramRect) {
    paramRect.setEmpty();
    sRectPool.release(paramRect);
  }
  
  private void resetTouchBehaviors() {
    if (this.mBehaviorTouchView != null) {
      CoordinatorLayout$Behavior<View> coordinatorLayout$Behavior = ((CoordinatorLayout$LayoutParams)this.mBehaviorTouchView.getLayoutParams()).getBehavior();
      if (coordinatorLayout$Behavior != null) {
        long l = SystemClock.uptimeMillis();
        MotionEvent motionEvent = MotionEvent.obtain(l, l, 3, 0.0F, 0.0F, 0);
        coordinatorLayout$Behavior.onTouchEvent(this, this.mBehaviorTouchView, motionEvent);
        motionEvent.recycle();
      } 
      this.mBehaviorTouchView = null;
    } 
    int j = getChildCount();
    for (int i = 0; i < j; i++)
      ((CoordinatorLayout$LayoutParams)getChildAt(i).getLayoutParams()).resetTouchBehaviorTracking(); 
    this.mDisallowInterceptReset = false;
  }
  
  private static int resolveAnchoredChildGravity(int paramInt) {
    int i = paramInt;
    if (paramInt == 0)
      i = 17; 
    return i;
  }
  
  private static int resolveGravity(int paramInt) {
    if ((paramInt & 0x7) == 0)
      paramInt = 0x800003 | paramInt; 
    int i = paramInt;
    if ((paramInt & 0x70) == 0)
      i = paramInt | 0x30; 
    return i;
  }
  
  private static int resolveKeylineGravity(int paramInt) {
    int i = paramInt;
    if (paramInt == 0)
      i = 8388661; 
    return i;
  }
  
  private void setInsetOffsetX(View paramView, int paramInt) {
    CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams)paramView.getLayoutParams();
    if (coordinatorLayout$LayoutParams.mInsetOffsetX != paramInt) {
      ViewCompat.offsetLeftAndRight(paramView, paramInt - coordinatorLayout$LayoutParams.mInsetOffsetX);
      coordinatorLayout$LayoutParams.mInsetOffsetX = paramInt;
    } 
  }
  
  private void setInsetOffsetY(View paramView, int paramInt) {
    CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams)paramView.getLayoutParams();
    if (coordinatorLayout$LayoutParams.mInsetOffsetY != paramInt) {
      ViewCompat.offsetTopAndBottom(paramView, paramInt - coordinatorLayout$LayoutParams.mInsetOffsetY);
      coordinatorLayout$LayoutParams.mInsetOffsetY = paramInt;
    } 
  }
  
  private void setupForInsets() {
    if (Build.VERSION.SDK_INT < 21)
      return; 
    if (ViewCompat.getFitsSystemWindows((View)this)) {
      if (this.mApplyWindowInsetsListener == null)
        this.mApplyWindowInsetsListener = new CoordinatorLayout$1(this); 
      ViewCompat.setOnApplyWindowInsetsListener((View)this, this.mApplyWindowInsetsListener);
      setSystemUiVisibility(1280);
      return;
    } 
    ViewCompat.setOnApplyWindowInsetsListener((View)this, null);
  }
  
  void addPreDrawListener() {
    if (this.mIsAttachedToWindow) {
      if (this.mOnPreDrawListener == null)
        this.mOnPreDrawListener = new CoordinatorLayout$OnPreDrawListener(this); 
      getViewTreeObserver().addOnPreDrawListener(this.mOnPreDrawListener);
    } 
    this.mNeedsPreDrawListener = true;
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams) {
    return (paramLayoutParams instanceof CoordinatorLayout$LayoutParams && super.checkLayoutParams(paramLayoutParams));
  }
  
  public void dispatchDependentViewsChanged(View paramView) {
    List<View> list = this.mChildDag.getIncomingEdges(paramView);
    if (list != null && !list.isEmpty())
      for (int i = 0; i < list.size(); i++) {
        View view = list.get(i);
        CoordinatorLayout$Behavior<View> coordinatorLayout$Behavior = ((CoordinatorLayout$LayoutParams)view.getLayoutParams()).getBehavior();
        if (coordinatorLayout$Behavior != null)
          coordinatorLayout$Behavior.onDependentViewChanged(this, view, paramView); 
      }  
  }
  
  public boolean doViewsOverlap(View paramView1, View paramView2) {
    boolean bool = true;
    if (paramView1.getVisibility() == 0 && paramView2.getVisibility() == 0) {
      boolean bool1;
      Rect rect2 = acquireTempRect();
      if (paramView1.getParent() != this) {
        bool1 = true;
      } else {
        bool1 = false;
      } 
      getChildRect(paramView1, bool1, rect2);
      Rect rect1 = acquireTempRect();
      if (paramView2.getParent() != this) {
        bool1 = true;
      } else {
        bool1 = false;
      } 
      getChildRect(paramView2, bool1, rect1);
      try {
        if (rect2.left <= rect1.right && rect2.top <= rect1.bottom && rect2.right >= rect1.left) {
          int i = rect2.bottom;
          int j = rect1.top;
          if (i >= j) {
            bool1 = bool;
            return bool1;
          } 
        } 
        bool1 = false;
        return bool1;
      } finally {
        releaseTempRect(rect2);
        releaseTempRect(rect1);
      } 
    } 
    return false;
  }
  
  protected boolean drawChild(Canvas paramCanvas, View paramView, long paramLong) {
    CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams)paramView.getLayoutParams();
    if (coordinatorLayout$LayoutParams.mBehavior != null) {
      float f = coordinatorLayout$LayoutParams.mBehavior.getScrimOpacity(this, paramView);
      if (f > 0.0F) {
        if (this.mScrimPaint == null)
          this.mScrimPaint = new Paint(); 
        this.mScrimPaint.setColor(coordinatorLayout$LayoutParams.mBehavior.getScrimColor(this, paramView));
        this.mScrimPaint.setAlpha(MathUtils.constrain(Math.round(f * 255.0F), 0, 255));
        int i = paramCanvas.save();
        if (paramView.isOpaque())
          paramCanvas.clipRect(paramView.getLeft(), paramView.getTop(), paramView.getRight(), paramView.getBottom(), Region.Op.DIFFERENCE); 
        paramCanvas.drawRect(getPaddingLeft(), getPaddingTop(), (getWidth() - getPaddingRight()), (getHeight() - getPaddingBottom()), this.mScrimPaint);
        paramCanvas.restoreToCount(i);
      } 
    } 
    return super.drawChild(paramCanvas, paramView, paramLong);
  }
  
  protected void drawableStateChanged() {
    super.drawableStateChanged();
    int[] arrayOfInt = getDrawableState();
    byte b = 0;
    Drawable drawable = this.mStatusBarBackground;
    int i = b;
    if (drawable != null) {
      i = b;
      if (drawable.isStateful())
        i = false | drawable.setState(arrayOfInt); 
    } 
    if (i != 0)
      invalidate(); 
  }
  
  void ensurePreDrawListener() {
    boolean bool = false;
    int j = getChildCount();
    int i = 0;
    while (true) {
      boolean bool1 = bool;
      if (i < j)
        if (hasDependencies(getChildAt(i))) {
          bool1 = true;
        } else {
          i++;
          continue;
        }  
      if (bool1 != this.mNeedsPreDrawListener) {
        if (bool1) {
          addPreDrawListener();
          return;
        } 
      } else {
        return;
      } 
      removePreDrawListener();
      return;
    } 
  }
  
  protected CoordinatorLayout$LayoutParams generateDefaultLayoutParams() {
    return new CoordinatorLayout$LayoutParams(-2, -2);
  }
  
  public CoordinatorLayout$LayoutParams generateLayoutParams(AttributeSet paramAttributeSet) {
    return new CoordinatorLayout$LayoutParams(getContext(), paramAttributeSet);
  }
  
  protected CoordinatorLayout$LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams) {
    return (paramLayoutParams instanceof CoordinatorLayout$LayoutParams) ? new CoordinatorLayout$LayoutParams((CoordinatorLayout$LayoutParams)paramLayoutParams) : ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams) ? new CoordinatorLayout$LayoutParams((ViewGroup.MarginLayoutParams)paramLayoutParams) : new CoordinatorLayout$LayoutParams(paramLayoutParams));
  }
  
  void getChildRect(View paramView, boolean paramBoolean, Rect paramRect) {
    if (paramView.isLayoutRequested() || paramView.getVisibility() == 8) {
      paramRect.setEmpty();
      return;
    } 
    if (paramBoolean) {
      getDescendantRect(paramView, paramRect);
      return;
    } 
    paramRect.set(paramView.getLeft(), paramView.getTop(), paramView.getRight(), paramView.getBottom());
  }
  
  @NonNull
  public List<View> getDependencies(@NonNull View paramView) {
    List<? extends View> list = this.mChildDag.getOutgoingEdges(paramView);
    this.mTempDependenciesList.clear();
    if (list != null)
      this.mTempDependenciesList.addAll(list); 
    return this.mTempDependenciesList;
  }
  
  @VisibleForTesting
  final List<View> getDependencySortedChildren() {
    prepareChildren();
    return Collections.unmodifiableList(this.mDependencySortedChildren);
  }
  
  @NonNull
  public List<View> getDependents(@NonNull View paramView) {
    List<? extends View> list = this.mChildDag.getIncomingEdges(paramView);
    this.mTempDependenciesList.clear();
    if (list != null)
      this.mTempDependenciesList.addAll(list); 
    return this.mTempDependenciesList;
  }
  
  void getDescendantRect(View paramView, Rect paramRect) {
    ViewGroupUtils.getDescendantRect(this, paramView, paramRect);
  }
  
  void getDesiredAnchoredChildRect(View paramView, int paramInt, Rect paramRect1, Rect paramRect2) {
    CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams)paramView.getLayoutParams();
    int i = paramView.getMeasuredWidth();
    int j = paramView.getMeasuredHeight();
    getDesiredAnchoredChildRectWithoutConstraints(paramView, paramInt, paramRect1, paramRect2, coordinatorLayout$LayoutParams, i, j);
    constrainChildRect(coordinatorLayout$LayoutParams, paramRect2, i, j);
  }
  
  void getLastChildRect(View paramView, Rect paramRect) {
    paramRect.set(((CoordinatorLayout$LayoutParams)paramView.getLayoutParams()).getLastChildRect());
  }
  
  final WindowInsetsCompat getLastWindowInsets() {
    return this.mLastInsets;
  }
  
  public int getNestedScrollAxes() {
    return this.mNestedScrollingParentHelper.getNestedScrollAxes();
  }
  
  CoordinatorLayout$LayoutParams getResolvedLayoutParams(View paramView) {
    CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams)paramView.getLayoutParams();
    if (!coordinatorLayout$LayoutParams.mBehaviorResolved) {
      CoordinatorLayout$DefaultBehavior coordinatorLayout$DefaultBehavior;
      Class<?> clazz = paramView.getClass();
      paramView = null;
      while (true) {
        View view = paramView;
        if (clazz != null) {
          CoordinatorLayout$DefaultBehavior coordinatorLayout$DefaultBehavior1 = clazz.<CoordinatorLayout$DefaultBehavior>getAnnotation(CoordinatorLayout$DefaultBehavior.class);
          coordinatorLayout$DefaultBehavior = coordinatorLayout$DefaultBehavior1;
          if (coordinatorLayout$DefaultBehavior1 == null) {
            clazz = clazz.getSuperclass();
            continue;
          } 
        } 
        break;
      } 
      if (coordinatorLayout$DefaultBehavior != null)
        try {
          coordinatorLayout$LayoutParams.setBehavior(coordinatorLayout$DefaultBehavior.value().newInstance());
        } catch (Exception exception) {
          Log.e("CoordinatorLayout", "Default behavior class " + coordinatorLayout$DefaultBehavior.value().getName() + " could not be instantiated. Did you forget a default constructor?", exception);
        }  
      coordinatorLayout$LayoutParams.mBehaviorResolved = true;
    } 
    return coordinatorLayout$LayoutParams;
  }
  
  @Nullable
  public Drawable getStatusBarBackground() {
    return this.mStatusBarBackground;
  }
  
  protected int getSuggestedMinimumHeight() {
    return Math.max(super.getSuggestedMinimumHeight(), getPaddingTop() + getPaddingBottom());
  }
  
  protected int getSuggestedMinimumWidth() {
    return Math.max(super.getSuggestedMinimumWidth(), getPaddingLeft() + getPaddingRight());
  }
  
  public boolean isPointInChildBounds(View paramView, int paramInt1, int paramInt2) {
    Rect rect = acquireTempRect();
    getDescendantRect(paramView, rect);
    try {
      return rect.contains(paramInt1, paramInt2);
    } finally {
      releaseTempRect(rect);
    } 
  }
  
  void offsetChildToAnchor(View paramView, int paramInt) {
    CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams)paramView.getLayoutParams();
    if (coordinatorLayout$LayoutParams.mAnchorView != null) {
      Rect rect1 = acquireTempRect();
      Rect rect2 = acquireTempRect();
      Rect rect3 = acquireTempRect();
      getDescendantRect(coordinatorLayout$LayoutParams.mAnchorView, rect1);
      getChildRect(paramView, false, rect2);
      int i = paramView.getMeasuredWidth();
      int j = paramView.getMeasuredHeight();
      getDesiredAnchoredChildRectWithoutConstraints(paramView, paramInt, rect1, rect3, coordinatorLayout$LayoutParams, i, j);
      if (rect3.left != rect2.left || rect3.top != rect2.top) {
        paramInt = 1;
      } else {
        paramInt = 0;
      } 
      constrainChildRect(coordinatorLayout$LayoutParams, rect3, i, j);
      i = rect3.left - rect2.left;
      j = rect3.top - rect2.top;
      if (i != 0)
        ViewCompat.offsetLeftAndRight(paramView, i); 
      if (j != 0)
        ViewCompat.offsetTopAndBottom(paramView, j); 
      if (paramInt != 0) {
        CoordinatorLayout$Behavior<View> coordinatorLayout$Behavior = coordinatorLayout$LayoutParams.getBehavior();
        if (coordinatorLayout$Behavior != null)
          coordinatorLayout$Behavior.onDependentViewChanged(this, paramView, coordinatorLayout$LayoutParams.mAnchorView); 
      } 
      releaseTempRect(rect1);
      releaseTempRect(rect2);
      releaseTempRect(rect3);
    } 
  }
  
  public void onAttachedToWindow() {
    super.onAttachedToWindow();
    resetTouchBehaviors();
    if (this.mNeedsPreDrawListener) {
      if (this.mOnPreDrawListener == null)
        this.mOnPreDrawListener = new CoordinatorLayout$OnPreDrawListener(this); 
      getViewTreeObserver().addOnPreDrawListener(this.mOnPreDrawListener);
    } 
    if (this.mLastInsets == null && ViewCompat.getFitsSystemWindows((View)this))
      ViewCompat.requestApplyInsets((View)this); 
    this.mIsAttachedToWindow = true;
  }
  
  final void onChildViewsChanged(int paramInt) {
    int j = ViewCompat.getLayoutDirection((View)this);
    int k = this.mDependencySortedChildren.size();
    Rect rect1 = acquireTempRect();
    Rect rect2 = acquireTempRect();
    Rect rect3 = acquireTempRect();
    int i = 0;
    label57: while (i < k) {
      View view = this.mDependencySortedChildren.get(i);
      CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams)view.getLayoutParams();
      if (paramInt == 0 && view.getVisibility() == 8)
        continue; 
      int m;
      for (m = 0; m < i; m++) {
        View view1 = this.mDependencySortedChildren.get(m);
        if (coordinatorLayout$LayoutParams.mAnchorDirectChild == view1)
          offsetChildToAnchor(view, j); 
      } 
      getChildRect(view, true, rect2);
      if (coordinatorLayout$LayoutParams.insetEdge != 0 && !rect2.isEmpty()) {
        m = GravityCompat.getAbsoluteGravity(coordinatorLayout$LayoutParams.insetEdge, j);
        switch (m & 0x70) {
          default:
            switch (m & 0x7) {
              default:
                if (coordinatorLayout$LayoutParams.dodgeInsetEdges != 0 && view.getVisibility() == 0)
                  offsetChildByInset(view, rect1, j); 
                if (paramInt != 2) {
                  getLastChildRect(view, rect3);
                  if (!rect3.equals(rect2)) {
                    recordLastChildRect(view, rect2);
                  } else {
                    continue;
                  } 
                } 
                m = i + 1;
                while (true) {
                  if (m < k) {
                    View view1 = this.mDependencySortedChildren.get(m);
                    CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams1 = (CoordinatorLayout$LayoutParams)view1.getLayoutParams();
                    CoordinatorLayout$Behavior<View> coordinatorLayout$Behavior = coordinatorLayout$LayoutParams1.getBehavior();
                    if (coordinatorLayout$Behavior != null && coordinatorLayout$Behavior.layoutDependsOn(this, view1, view))
                      if (paramInt == 0 && coordinatorLayout$LayoutParams1.getChangedAfterNestedScroll()) {
                        coordinatorLayout$LayoutParams1.resetChangedAfterNestedScroll();
                      } else {
                        boolean bool;
                        switch (paramInt) {
                          case 2:
                            coordinatorLayout$Behavior.onDependentViewRemoved(this, view1, view);
                            bool = true;
                            if (paramInt == 1)
                              coordinatorLayout$LayoutParams1.setChangedAfterNestedScroll(bool); 
                            m++;
                            break;
                        } 
                        continue;
                      }  
                  } else {
                    i++;
                    continue label57;
                  } 
                  m++;
                  break;
                } 
              case 3:
                rect1.left = Math.max(rect1.left, rect2.right);
              case 5:
                break;
            } 
            break;
          case 48:
            rect1.top = Math.max(rect1.top, rect2.bottom);
          case 80:
            rect1.bottom = Math.max(rect1.bottom, getHeight() - rect2.top);
        } 
        rect1.right = Math.max(rect1.right, getWidth() - rect2.left);
      } 
    } 
    releaseTempRect(rect1);
    releaseTempRect(rect2);
    releaseTempRect(rect3);
  }
  
  public void onDetachedFromWindow() {
    super.onDetachedFromWindow();
    resetTouchBehaviors();
    if (this.mNeedsPreDrawListener && this.mOnPreDrawListener != null)
      getViewTreeObserver().removeOnPreDrawListener(this.mOnPreDrawListener); 
    if (this.mNestedScrollingTarget != null)
      onStopNestedScroll(this.mNestedScrollingTarget); 
    this.mIsAttachedToWindow = false;
  }
  
  public void onDraw(Canvas paramCanvas) {
    super.onDraw(paramCanvas);
    if (this.mDrawStatusBarBackground && this.mStatusBarBackground != null) {
      boolean bool;
      if (this.mLastInsets != null) {
        bool = this.mLastInsets.getSystemWindowInsetTop();
      } else {
        bool = false;
      } 
      if (bool) {
        this.mStatusBarBackground.setBounds(0, 0, getWidth(), bool);
        this.mStatusBarBackground.draw(paramCanvas);
      } 
    } 
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent) {
    int i = MotionEventCompat.getActionMasked(paramMotionEvent);
    if (i == 0)
      resetTouchBehaviors(); 
    boolean bool = performIntercept(paramMotionEvent, 0);
    if (false)
      throw new NullPointerException(); 
    if (i == 1 || i == 3)
      resetTouchBehaviors(); 
    return bool;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    paramInt2 = ViewCompat.getLayoutDirection((View)this);
    paramInt3 = this.mDependencySortedChildren.size();
    for (paramInt1 = 0; paramInt1 < paramInt3; paramInt1++) {
      View view = this.mDependencySortedChildren.get(paramInt1);
      if (view.getVisibility() != 8) {
        CoordinatorLayout$Behavior<View> coordinatorLayout$Behavior = ((CoordinatorLayout$LayoutParams)view.getLayoutParams()).getBehavior();
        if (coordinatorLayout$Behavior == null || !coordinatorLayout$Behavior.onLayoutChild(this, view, paramInt2))
          onLayoutChild(view, paramInt2); 
      } 
    } 
  }
  
  public void onLayoutChild(View paramView, int paramInt) {
    CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams)paramView.getLayoutParams();
    if (coordinatorLayout$LayoutParams.checkAnchorChanged())
      throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete."); 
    if (coordinatorLayout$LayoutParams.mAnchorView != null) {
      layoutChildWithAnchor(paramView, coordinatorLayout$LayoutParams.mAnchorView, paramInt);
      return;
    } 
    if (coordinatorLayout$LayoutParams.keyline >= 0) {
      layoutChildWithKeyline(paramView, coordinatorLayout$LayoutParams.keyline, paramInt);
      return;
    } 
    layoutChild(paramView, paramInt);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2) {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial prepareChildren : ()V
    //   4: aload_0
    //   5: invokevirtual ensurePreDrawListener : ()V
    //   8: aload_0
    //   9: invokevirtual getPaddingLeft : ()I
    //   12: istore #12
    //   14: aload_0
    //   15: invokevirtual getPaddingTop : ()I
    //   18: istore #13
    //   20: aload_0
    //   21: invokevirtual getPaddingRight : ()I
    //   24: istore #14
    //   26: aload_0
    //   27: invokevirtual getPaddingBottom : ()I
    //   30: istore #15
    //   32: aload_0
    //   33: invokestatic getLayoutDirection : (Landroid/view/View;)I
    //   36: istore #16
    //   38: iload #16
    //   40: iconst_1
    //   41: if_icmpne -> 178
    //   44: iconst_1
    //   45: istore #7
    //   47: iload_1
    //   48: invokestatic getMode : (I)I
    //   51: istore #17
    //   53: iload_1
    //   54: invokestatic getSize : (I)I
    //   57: istore #18
    //   59: iload_2
    //   60: invokestatic getMode : (I)I
    //   63: istore #19
    //   65: iload_2
    //   66: invokestatic getSize : (I)I
    //   69: istore #20
    //   71: aload_0
    //   72: invokevirtual getSuggestedMinimumWidth : ()I
    //   75: istore #5
    //   77: aload_0
    //   78: invokevirtual getSuggestedMinimumHeight : ()I
    //   81: istore #4
    //   83: iconst_0
    //   84: istore_3
    //   85: aload_0
    //   86: getfield mLastInsets : Landroid/support/v4/view/WindowInsetsCompat;
    //   89: ifnull -> 184
    //   92: aload_0
    //   93: invokestatic getFitsSystemWindows : (Landroid/view/View;)Z
    //   96: ifeq -> 184
    //   99: iconst_1
    //   100: istore #8
    //   102: aload_0
    //   103: getfield mDependencySortedChildren : Ljava/util/List;
    //   106: invokeinterface size : ()I
    //   111: istore #21
    //   113: iconst_0
    //   114: istore #9
    //   116: iload #9
    //   118: iload #21
    //   120: if_icmpge -> 536
    //   123: aload_0
    //   124: getfield mDependencySortedChildren : Ljava/util/List;
    //   127: iload #9
    //   129: invokeinterface get : (I)Ljava/lang/Object;
    //   134: checkcast android/view/View
    //   137: astore #24
    //   139: aload #24
    //   141: invokevirtual getVisibility : ()I
    //   144: bipush #8
    //   146: if_icmpne -> 190
    //   149: iload_3
    //   150: istore #6
    //   152: iload #5
    //   154: istore_3
    //   155: iload #6
    //   157: istore #5
    //   159: iload #9
    //   161: iconst_1
    //   162: iadd
    //   163: istore #9
    //   165: iload_3
    //   166: istore #6
    //   168: iload #5
    //   170: istore_3
    //   171: iload #6
    //   173: istore #5
    //   175: goto -> 116
    //   178: iconst_0
    //   179: istore #7
    //   181: goto -> 47
    //   184: iconst_0
    //   185: istore #8
    //   187: goto -> 102
    //   190: aload #24
    //   192: invokevirtual getLayoutParams : ()Landroid/view/ViewGroup$LayoutParams;
    //   195: checkcast android/support/design/widget/CoordinatorLayout$LayoutParams
    //   198: astore #25
    //   200: iconst_0
    //   201: istore #10
    //   203: iload #10
    //   205: istore #6
    //   207: aload #25
    //   209: getfield keyline : I
    //   212: iflt -> 289
    //   215: iload #10
    //   217: istore #6
    //   219: iload #17
    //   221: ifeq -> 289
    //   224: aload_0
    //   225: aload #25
    //   227: getfield keyline : I
    //   230: invokespecial getKeyline : (I)I
    //   233: istore #11
    //   235: aload #25
    //   237: getfield gravity : I
    //   240: invokestatic resolveKeylineGravity : (I)I
    //   243: iload #16
    //   245: invokestatic getAbsoluteGravity : (II)I
    //   248: bipush #7
    //   250: iand
    //   251: istore #22
    //   253: iload #22
    //   255: iconst_3
    //   256: if_icmpne -> 264
    //   259: iload #7
    //   261: ifeq -> 275
    //   264: iload #22
    //   266: iconst_5
    //   267: if_icmpne -> 492
    //   270: iload #7
    //   272: ifeq -> 492
    //   275: iconst_0
    //   276: iload #18
    //   278: iload #14
    //   280: isub
    //   281: iload #11
    //   283: isub
    //   284: invokestatic max : (II)I
    //   287: istore #6
    //   289: iload #8
    //   291: ifeq -> 562
    //   294: aload #24
    //   296: invokestatic getFitsSystemWindows : (Landroid/view/View;)Z
    //   299: ifne -> 562
    //   302: aload_0
    //   303: getfield mLastInsets : Landroid/support/v4/view/WindowInsetsCompat;
    //   306: invokevirtual getSystemWindowInsetLeft : ()I
    //   309: istore #10
    //   311: aload_0
    //   312: getfield mLastInsets : Landroid/support/v4/view/WindowInsetsCompat;
    //   315: invokevirtual getSystemWindowInsetRight : ()I
    //   318: istore #23
    //   320: aload_0
    //   321: getfield mLastInsets : Landroid/support/v4/view/WindowInsetsCompat;
    //   324: invokevirtual getSystemWindowInsetTop : ()I
    //   327: istore #11
    //   329: aload_0
    //   330: getfield mLastInsets : Landroid/support/v4/view/WindowInsetsCompat;
    //   333: invokevirtual getSystemWindowInsetBottom : ()I
    //   336: istore #22
    //   338: iload #18
    //   340: iload #10
    //   342: iload #23
    //   344: iadd
    //   345: isub
    //   346: iload #17
    //   348: invokestatic makeMeasureSpec : (II)I
    //   351: istore #10
    //   353: iload #20
    //   355: iload #11
    //   357: iload #22
    //   359: iadd
    //   360: isub
    //   361: iload #19
    //   363: invokestatic makeMeasureSpec : (II)I
    //   366: istore #11
    //   368: aload #25
    //   370: invokevirtual getBehavior : ()Landroid/support/design/widget/CoordinatorLayout$Behavior;
    //   373: astore #26
    //   375: aload #26
    //   377: ifnull -> 398
    //   380: aload #26
    //   382: aload_0
    //   383: aload #24
    //   385: iload #10
    //   387: iload #6
    //   389: iload #11
    //   391: iconst_0
    //   392: invokevirtual onMeasureChild : (Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    //   395: ifne -> 411
    //   398: aload_0
    //   399: aload #24
    //   401: iload #10
    //   403: iload #6
    //   405: iload #11
    //   407: iconst_0
    //   408: invokevirtual onMeasureChild : (Landroid/view/View;IIII)V
    //   411: iload #5
    //   413: aload #24
    //   415: invokevirtual getMeasuredWidth : ()I
    //   418: iload #12
    //   420: iload #14
    //   422: iadd
    //   423: iadd
    //   424: aload #25
    //   426: getfield leftMargin : I
    //   429: iadd
    //   430: aload #25
    //   432: getfield rightMargin : I
    //   435: iadd
    //   436: invokestatic max : (II)I
    //   439: istore #5
    //   441: iload #4
    //   443: aload #24
    //   445: invokevirtual getMeasuredHeight : ()I
    //   448: iload #13
    //   450: iload #15
    //   452: iadd
    //   453: iadd
    //   454: aload #25
    //   456: getfield topMargin : I
    //   459: iadd
    //   460: aload #25
    //   462: getfield bottomMargin : I
    //   465: iadd
    //   466: invokestatic max : (II)I
    //   469: istore #4
    //   471: iload_3
    //   472: aload #24
    //   474: invokestatic getMeasuredState : (Landroid/view/View;)I
    //   477: invokestatic combineMeasuredStates : (II)I
    //   480: istore #6
    //   482: iload #5
    //   484: istore_3
    //   485: iload #6
    //   487: istore #5
    //   489: goto -> 159
    //   492: iload #22
    //   494: iconst_5
    //   495: if_icmpne -> 503
    //   498: iload #7
    //   500: ifeq -> 522
    //   503: iload #10
    //   505: istore #6
    //   507: iload #22
    //   509: iconst_3
    //   510: if_icmpne -> 289
    //   513: iload #10
    //   515: istore #6
    //   517: iload #7
    //   519: ifeq -> 289
    //   522: iconst_0
    //   523: iload #11
    //   525: iload #12
    //   527: isub
    //   528: invokestatic max : (II)I
    //   531: istore #6
    //   533: goto -> 289
    //   536: aload_0
    //   537: iload #5
    //   539: iload_1
    //   540: ldc_w -16777216
    //   543: iload_3
    //   544: iand
    //   545: invokestatic resolveSizeAndState : (III)I
    //   548: iload #4
    //   550: iload_2
    //   551: iload_3
    //   552: bipush #16
    //   554: ishl
    //   555: invokestatic resolveSizeAndState : (III)I
    //   558: invokevirtual setMeasuredDimension : (II)V
    //   561: return
    //   562: iload_2
    //   563: istore #11
    //   565: iload_1
    //   566: istore #10
    //   568: goto -> 368
  }
  
  public void onMeasureChild(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    measureChildWithMargins(paramView, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public boolean onNestedFling(View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean) {
    int j = getChildCount();
    int i = 0;
    boolean bool = false;
    while (i < j) {
      View view = getChildAt(i);
      if (view.getVisibility() != 8) {
        CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams)view.getLayoutParams();
        if (coordinatorLayout$LayoutParams.isNestedScrollAccepted()) {
          CoordinatorLayout$Behavior<View> coordinatorLayout$Behavior = coordinatorLayout$LayoutParams.getBehavior();
          if (coordinatorLayout$Behavior != null)
            bool = coordinatorLayout$Behavior.onNestedFling(this, view, paramView, paramFloat1, paramFloat2, paramBoolean) | bool; 
        } 
      } 
      i++;
    } 
    if (bool)
      onChildViewsChanged(1); 
    return bool;
  }
  
  public boolean onNestedPreFling(View paramView, float paramFloat1, float paramFloat2) {
    int j = getChildCount();
    int i = 0;
    boolean bool = false;
    while (i < j) {
      View view = getChildAt(i);
      if (view.getVisibility() != 8) {
        CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams)view.getLayoutParams();
        if (coordinatorLayout$LayoutParams.isNestedScrollAccepted()) {
          CoordinatorLayout$Behavior<View> coordinatorLayout$Behavior = coordinatorLayout$LayoutParams.getBehavior();
          if (coordinatorLayout$Behavior != null)
            bool = coordinatorLayout$Behavior.onNestedPreFling(this, view, paramView, paramFloat1, paramFloat2) | bool; 
        } 
      } 
      i++;
    } 
    return bool;
  }
  
  public void onNestedPreScroll(View paramView, int paramInt1, int paramInt2, int[] paramArrayOfint) {
    int j = 0;
    int i = 0;
    int k = 0;
    int n = getChildCount();
    int m = 0;
    while (true) {
      if (m < n) {
        View view = getChildAt(m);
        if (view.getVisibility() == 8) {
          int i2 = k;
          k = j;
          j = i;
          i = i2;
        } else {
          CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams)view.getLayoutParams();
          if (!coordinatorLayout$LayoutParams.isNestedScrollAccepted()) {
            int i2 = k;
            k = j;
            j = i;
            i = i2;
          } else {
            CoordinatorLayout$Behavior<View> coordinatorLayout$Behavior = coordinatorLayout$LayoutParams.getBehavior();
            if (coordinatorLayout$Behavior != null) {
              int[] arrayOfInt = this.mTempIntPair;
              this.mTempIntPair[1] = 0;
              arrayOfInt[0] = 0;
              coordinatorLayout$Behavior.onNestedPreScroll(this, view, paramView, paramInt1, paramInt2, this.mTempIntPair);
              if (paramInt1 > 0) {
                k = Math.max(j, this.mTempIntPair[0]);
              } else {
                k = Math.min(j, this.mTempIntPair[0]);
              } 
              if (paramInt2 > 0) {
                i = Math.max(i, this.mTempIntPair[1]);
              } else {
                i = Math.min(i, this.mTempIntPair[1]);
              } 
              j = i;
              i = 1;
            } else {
              int i2 = k;
              k = j;
              j = i;
              i = i2;
            } 
          } 
        } 
        int i1 = m + 1;
        m = k;
        k = i;
        i = j;
        j = m;
        m = i1;
        continue;
      } 
      paramArrayOfint[0] = j;
      paramArrayOfint[1] = i;
      if (k != 0)
        onChildViewsChanged(1); 
      return;
    } 
  }
  
  public void onNestedScroll(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    int j = getChildCount();
    boolean bool = false;
    for (int i = 0; i < j; i++) {
      View view = getChildAt(i);
      if (view.getVisibility() != 8) {
        CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams)view.getLayoutParams();
        if (coordinatorLayout$LayoutParams.isNestedScrollAccepted()) {
          CoordinatorLayout$Behavior<View> coordinatorLayout$Behavior = coordinatorLayout$LayoutParams.getBehavior();
          if (coordinatorLayout$Behavior != null) {
            coordinatorLayout$Behavior.onNestedScroll(this, view, paramView, paramInt1, paramInt2, paramInt3, paramInt4);
            bool = true;
          } 
        } 
      } 
    } 
    if (bool)
      onChildViewsChanged(1); 
  }
  
  public void onNestedScrollAccepted(View paramView1, View paramView2, int paramInt) {
    this.mNestedScrollingParentHelper.onNestedScrollAccepted(paramView1, paramView2, paramInt);
    this.mNestedScrollingDirectChild = paramView1;
    this.mNestedScrollingTarget = paramView2;
    int j = getChildCount();
    for (int i = 0; i < j; i++) {
      View view = getChildAt(i);
      CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams)view.getLayoutParams();
      if (coordinatorLayout$LayoutParams.isNestedScrollAccepted()) {
        CoordinatorLayout$Behavior<View> coordinatorLayout$Behavior = coordinatorLayout$LayoutParams.getBehavior();
        if (coordinatorLayout$Behavior != null)
          coordinatorLayout$Behavior.onNestedScrollAccepted(this, view, paramView1, paramView2, paramInt); 
      } 
    } 
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable) {
    if (!(paramParcelable instanceof CoordinatorLayout$SavedState)) {
      super.onRestoreInstanceState(paramParcelable);
      return;
    } 
    CoordinatorLayout$SavedState coordinatorLayout$SavedState = (CoordinatorLayout$SavedState)paramParcelable;
    super.onRestoreInstanceState(coordinatorLayout$SavedState.getSuperState());
    SparseArray<Parcelable> sparseArray = coordinatorLayout$SavedState.behaviorStates;
    int j = getChildCount();
    int i = 0;
    while (true) {
      if (i < j) {
        View view = getChildAt(i);
        int k = view.getId();
        CoordinatorLayout$Behavior<View> coordinatorLayout$Behavior = getResolvedLayoutParams(view).getBehavior();
        if (k != -1 && coordinatorLayout$Behavior != null) {
          Parcelable parcelable = (Parcelable)sparseArray.get(k);
          if (parcelable != null)
            coordinatorLayout$Behavior.onRestoreInstanceState(this, view, parcelable); 
        } 
        i++;
        continue;
      } 
      return;
    } 
  }
  
  protected Parcelable onSaveInstanceState() {
    CoordinatorLayout$SavedState coordinatorLayout$SavedState = new CoordinatorLayout$SavedState(super.onSaveInstanceState());
    SparseArray<Parcelable> sparseArray = new SparseArray();
    int j = getChildCount();
    for (int i = 0; i < j; i++) {
      View view = getChildAt(i);
      int k = view.getId();
      CoordinatorLayout$Behavior<View> coordinatorLayout$Behavior = ((CoordinatorLayout$LayoutParams)view.getLayoutParams()).getBehavior();
      if (k != -1 && coordinatorLayout$Behavior != null) {
        Parcelable parcelable = coordinatorLayout$Behavior.onSaveInstanceState(this, view);
        if (parcelable != null)
          sparseArray.append(k, parcelable); 
      } 
    } 
    coordinatorLayout$SavedState.behaviorStates = sparseArray;
    return (Parcelable)coordinatorLayout$SavedState;
  }
  
  public boolean onStartNestedScroll(View paramView1, View paramView2, int paramInt) {
    int j = getChildCount();
    int i = 0;
    boolean bool = false;
    while (i < j) {
      View view = getChildAt(i);
      if (view.getVisibility() != 8) {
        CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams)view.getLayoutParams();
        CoordinatorLayout$Behavior<View> coordinatorLayout$Behavior = coordinatorLayout$LayoutParams.getBehavior();
        if (coordinatorLayout$Behavior != null) {
          boolean bool1 = coordinatorLayout$Behavior.onStartNestedScroll(this, view, paramView1, paramView2, paramInt);
          bool |= bool1;
          coordinatorLayout$LayoutParams.acceptNestedScroll(bool1);
        } else {
          coordinatorLayout$LayoutParams.acceptNestedScroll(false);
        } 
      } 
      i++;
    } 
    return bool;
  }
  
  public void onStopNestedScroll(View paramView) {
    this.mNestedScrollingParentHelper.onStopNestedScroll(paramView);
    int j = getChildCount();
    for (int i = 0; i < j; i++) {
      View view = getChildAt(i);
      CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams)view.getLayoutParams();
      if (coordinatorLayout$LayoutParams.isNestedScrollAccepted()) {
        CoordinatorLayout$Behavior<View> coordinatorLayout$Behavior = coordinatorLayout$LayoutParams.getBehavior();
        if (coordinatorLayout$Behavior != null)
          coordinatorLayout$Behavior.onStopNestedScroll(this, view, paramView); 
        coordinatorLayout$LayoutParams.resetNestedScroll();
        coordinatorLayout$LayoutParams.resetChangedAfterNestedScroll();
      } 
    } 
    this.mNestedScrollingDirectChild = null;
    this.mNestedScrollingTarget = null;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent) {
    // Byte code:
    //   0: aconst_null
    //   1: astore #8
    //   3: aload_1
    //   4: invokestatic getActionMasked : (Landroid/view/MotionEvent;)I
    //   7: istore_2
    //   8: aload_0
    //   9: getfield mBehaviorTouchView : Landroid/view/View;
    //   12: ifnonnull -> 172
    //   15: aload_0
    //   16: aload_1
    //   17: iconst_1
    //   18: invokespecial performIntercept : (Landroid/view/MotionEvent;I)Z
    //   21: istore #4
    //   23: iload #4
    //   25: ifeq -> 167
    //   28: aload_0
    //   29: getfield mBehaviorTouchView : Landroid/view/View;
    //   32: invokevirtual getLayoutParams : ()Landroid/view/ViewGroup$LayoutParams;
    //   35: checkcast android/support/design/widget/CoordinatorLayout$LayoutParams
    //   38: invokevirtual getBehavior : ()Landroid/support/design/widget/CoordinatorLayout$Behavior;
    //   41: astore #9
    //   43: aload #9
    //   45: ifnull -> 162
    //   48: aload #9
    //   50: aload_0
    //   51: aload_0
    //   52: getfield mBehaviorTouchView : Landroid/view/View;
    //   55: aload_1
    //   56: invokevirtual onTouchEvent : (Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    //   59: istore_3
    //   60: aload_0
    //   61: getfield mBehaviorTouchView : Landroid/view/View;
    //   64: ifnonnull -> 113
    //   67: iload_3
    //   68: aload_0
    //   69: aload_1
    //   70: invokespecial onTouchEvent : (Landroid/view/MotionEvent;)Z
    //   73: ior
    //   74: istore #5
    //   76: aload #8
    //   78: astore_1
    //   79: iload #5
    //   81: ifne -> 88
    //   84: iload_2
    //   85: ifne -> 88
    //   88: aload_1
    //   89: ifnull -> 96
    //   92: aload_1
    //   93: invokevirtual recycle : ()V
    //   96: iload_2
    //   97: iconst_1
    //   98: if_icmpeq -> 106
    //   101: iload_2
    //   102: iconst_3
    //   103: if_icmpne -> 110
    //   106: aload_0
    //   107: invokespecial resetTouchBehaviors : ()V
    //   110: iload #5
    //   112: ireturn
    //   113: aload #8
    //   115: astore_1
    //   116: iload_3
    //   117: istore #5
    //   119: iload #4
    //   121: ifeq -> 79
    //   124: iconst_0
    //   125: ifne -> 157
    //   128: invokestatic uptimeMillis : ()J
    //   131: lstore #6
    //   133: lload #6
    //   135: lload #6
    //   137: iconst_3
    //   138: fconst_0
    //   139: fconst_0
    //   140: iconst_0
    //   141: invokestatic obtain : (JJIFFI)Landroid/view/MotionEvent;
    //   144: astore_1
    //   145: aload_0
    //   146: aload_1
    //   147: invokespecial onTouchEvent : (Landroid/view/MotionEvent;)Z
    //   150: pop
    //   151: iload_3
    //   152: istore #5
    //   154: goto -> 79
    //   157: aconst_null
    //   158: astore_1
    //   159: goto -> 145
    //   162: iconst_0
    //   163: istore_3
    //   164: goto -> 60
    //   167: iconst_0
    //   168: istore_3
    //   169: goto -> 60
    //   172: iconst_0
    //   173: istore #4
    //   175: goto -> 28
  }
  
  void recordLastChildRect(View paramView, Rect paramRect) {
    ((CoordinatorLayout$LayoutParams)paramView.getLayoutParams()).setLastChildRect(paramRect);
  }
  
  void removePreDrawListener() {
    if (this.mIsAttachedToWindow && this.mOnPreDrawListener != null)
      getViewTreeObserver().removeOnPreDrawListener(this.mOnPreDrawListener); 
    this.mNeedsPreDrawListener = false;
  }
  
  public boolean requestChildRectangleOnScreen(View paramView, Rect paramRect, boolean paramBoolean) {
    CoordinatorLayout$Behavior<View> coordinatorLayout$Behavior = ((CoordinatorLayout$LayoutParams)paramView.getLayoutParams()).getBehavior();
    return (coordinatorLayout$Behavior != null && coordinatorLayout$Behavior.onRequestChildRectangleOnScreen(this, paramView, paramRect, paramBoolean)) ? true : super.requestChildRectangleOnScreen(paramView, paramRect, paramBoolean);
  }
  
  public void requestDisallowInterceptTouchEvent(boolean paramBoolean) {
    super.requestDisallowInterceptTouchEvent(paramBoolean);
    if (paramBoolean && !this.mDisallowInterceptReset) {
      resetTouchBehaviors();
      this.mDisallowInterceptReset = true;
    } 
  }
  
  public void setFitsSystemWindows(boolean paramBoolean) {
    super.setFitsSystemWindows(paramBoolean);
    setupForInsets();
  }
  
  public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener paramOnHierarchyChangeListener) {
    this.mOnHierarchyChangeListener = paramOnHierarchyChangeListener;
  }
  
  public void setStatusBarBackground(@Nullable Drawable paramDrawable) {
    Drawable drawable = null;
    if (this.mStatusBarBackground != paramDrawable) {
      if (this.mStatusBarBackground != null)
        this.mStatusBarBackground.setCallback(null); 
      if (paramDrawable != null)
        drawable = paramDrawable.mutate(); 
      this.mStatusBarBackground = drawable;
      if (this.mStatusBarBackground != null) {
        boolean bool;
        if (this.mStatusBarBackground.isStateful())
          this.mStatusBarBackground.setState(getDrawableState()); 
        DrawableCompat.setLayoutDirection(this.mStatusBarBackground, ViewCompat.getLayoutDirection((View)this));
        paramDrawable = this.mStatusBarBackground;
        if (getVisibility() == 0) {
          bool = true;
        } else {
          bool = false;
        } 
        paramDrawable.setVisible(bool, false);
        this.mStatusBarBackground.setCallback((Drawable.Callback)this);
      } 
      ViewCompat.postInvalidateOnAnimation((View)this);
    } 
  }
  
  public void setStatusBarBackgroundColor(@ColorInt int paramInt) {
    setStatusBarBackground((Drawable)new ColorDrawable(paramInt));
  }
  
  public void setStatusBarBackgroundResource(@DrawableRes int paramInt) {
    Drawable drawable;
    if (paramInt != 0) {
      drawable = ContextCompat.getDrawable(getContext(), paramInt);
    } else {
      drawable = null;
    } 
    setStatusBarBackground(drawable);
  }
  
  public void setVisibility(int paramInt) {
    boolean bool;
    super.setVisibility(paramInt);
    if (paramInt == 0) {
      bool = true;
    } else {
      bool = false;
    } 
    if (this.mStatusBarBackground != null && this.mStatusBarBackground.isVisible() != bool)
      this.mStatusBarBackground.setVisible(bool, false); 
  }
  
  final WindowInsetsCompat setWindowInsets(WindowInsetsCompat paramWindowInsetsCompat) {
    boolean bool = true;
    WindowInsetsCompat windowInsetsCompat = paramWindowInsetsCompat;
    if (!ViewUtils.objectEquals(this.mLastInsets, paramWindowInsetsCompat)) {
      boolean bool1;
      this.mLastInsets = paramWindowInsetsCompat;
      if (paramWindowInsetsCompat != null && paramWindowInsetsCompat.getSystemWindowInsetTop() > 0) {
        bool1 = true;
      } else {
        bool1 = false;
      } 
      this.mDrawStatusBarBackground = bool1;
      if (!this.mDrawStatusBarBackground && getBackground() == null) {
        bool1 = bool;
      } else {
        bool1 = false;
      } 
      setWillNotDraw(bool1);
      windowInsetsCompat = dispatchApplyWindowInsetsToBehaviors(paramWindowInsetsCompat);
      requestLayout();
    } 
    return windowInsetsCompat;
  }
  
  protected boolean verifyDrawable(Drawable paramDrawable) {
    return (super.verifyDrawable(paramDrawable) || paramDrawable == this.mStatusBarBackground);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\CoordinatorLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */