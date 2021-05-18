package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.Space;
import android.support.v7.gridlayout.R;
import android.util.AttributeSet;
import android.util.LogPrinter;
import android.util.Printer;
import android.view.View;
import android.view.ViewGroup;
import java.lang.reflect.Array;
import java.util.Arrays;

public class GridLayout extends ViewGroup {
  private static final int ALIGNMENT_MODE;
  
  public static final int ALIGN_BOUNDS = 0;
  
  public static final int ALIGN_MARGINS = 1;
  
  public static final GridLayout$Alignment BASELINE;
  
  public static final GridLayout$Alignment BOTTOM;
  
  static final int CAN_STRETCH = 2;
  
  public static final GridLayout$Alignment CENTER;
  
  private static final int COLUMN_COUNT;
  
  private static final int COLUMN_ORDER_PRESERVED;
  
  private static final int DEFAULT_ALIGNMENT_MODE = 1;
  
  static final int DEFAULT_CONTAINER_MARGIN = 0;
  
  private static final int DEFAULT_COUNT = -2147483648;
  
  static final boolean DEFAULT_ORDER_PRESERVED = true;
  
  private static final int DEFAULT_ORIENTATION = 0;
  
  private static final boolean DEFAULT_USE_DEFAULT_MARGINS = false;
  
  public static final GridLayout$Alignment END;
  
  public static final GridLayout$Alignment FILL;
  
  public static final int HORIZONTAL = 0;
  
  static final int INFLEXIBLE = 0;
  
  private static final GridLayout$Alignment LEADING;
  
  public static final GridLayout$Alignment LEFT;
  
  static final Printer LOG_PRINTER = (Printer)new LogPrinter(3, GridLayout.class.getName());
  
  static final int MAX_SIZE = 100000;
  
  static final Printer NO_PRINTER = new GridLayout$1();
  
  private static final int ORIENTATION = R.styleable.GridLayout_orientation;
  
  public static final GridLayout$Alignment RIGHT;
  
  private static final int ROW_COUNT = R.styleable.GridLayout_rowCount;
  
  private static final int ROW_ORDER_PRESERVED;
  
  public static final GridLayout$Alignment START;
  
  public static final GridLayout$Alignment TOP;
  
  private static final GridLayout$Alignment TRAILING;
  
  public static final int UNDEFINED = -2147483648;
  
  static final GridLayout$Alignment UNDEFINED_ALIGNMENT;
  
  static final int UNINITIALIZED_HASH = 0;
  
  private static final int USE_DEFAULT_MARGINS;
  
  public static final int VERTICAL = 1;
  
  int mAlignmentMode = 1;
  
  int mDefaultGap;
  
  final GridLayout$Axis mHorizontalAxis = new GridLayout$Axis(this, true);
  
  int mLastLayoutParamsHashCode = 0;
  
  int mOrientation = 0;
  
  Printer mPrinter = LOG_PRINTER;
  
  boolean mUseDefaultMargins = false;
  
  final GridLayout$Axis mVerticalAxis = new GridLayout$Axis(this, false);
  
  static {
    COLUMN_COUNT = R.styleable.GridLayout_columnCount;
    USE_DEFAULT_MARGINS = R.styleable.GridLayout_useDefaultMargins;
    ALIGNMENT_MODE = R.styleable.GridLayout_alignmentMode;
    ROW_ORDER_PRESERVED = R.styleable.GridLayout_rowOrderPreserved;
    COLUMN_ORDER_PRESERVED = R.styleable.GridLayout_columnOrderPreserved;
    UNDEFINED_ALIGNMENT = new GridLayout$2();
    LEADING = new GridLayout$3();
    TRAILING = new GridLayout$4();
    TOP = LEADING;
    BOTTOM = TRAILING;
    START = LEADING;
    END = TRAILING;
    LEFT = createSwitchingAlignment(START, END);
    RIGHT = createSwitchingAlignment(END, START);
    CENTER = new GridLayout$6();
    BASELINE = new GridLayout$7();
    FILL = new GridLayout$8();
  }
  
  public GridLayout(Context paramContext) {
    this(paramContext, (AttributeSet)null);
  }
  
  public GridLayout(Context paramContext, AttributeSet paramAttributeSet) {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public GridLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    this.mDefaultGap = paramContext.getResources().getDimensionPixelOffset(R.dimen.default_gap);
    TypedArray typedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.GridLayout);
    try {
      setRowCount(typedArray.getInt(ROW_COUNT, -2147483648));
      setColumnCount(typedArray.getInt(COLUMN_COUNT, -2147483648));
      setOrientation(typedArray.getInt(ORIENTATION, 0));
      setUseDefaultMargins(typedArray.getBoolean(USE_DEFAULT_MARGINS, false));
      setAlignmentMode(typedArray.getInt(ALIGNMENT_MODE, 1));
      setRowOrderPreserved(typedArray.getBoolean(ROW_ORDER_PRESERVED, true));
      setColumnOrderPreserved(typedArray.getBoolean(COLUMN_ORDER_PRESERVED, true));
      return;
    } finally {
      typedArray.recycle();
    } 
  }
  
  static int adjust(int paramInt1, int paramInt2) {
    return View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(paramInt1 + paramInt2), View.MeasureSpec.getMode(paramInt1));
  }
  
  static <T> T[] append(T[] paramArrayOfT1, T[] paramArrayOfT2) {
    Object[] arrayOfObject = (Object[])Array.newInstance(paramArrayOfT1.getClass().getComponentType(), paramArrayOfT1.length + paramArrayOfT2.length);
    System.arraycopy(paramArrayOfT1, 0, arrayOfObject, 0, paramArrayOfT1.length);
    System.arraycopy(paramArrayOfT2, 0, arrayOfObject, paramArrayOfT1.length, paramArrayOfT2.length);
    return (T[])arrayOfObject;
  }
  
  static boolean canStretch(int paramInt) {
    return ((paramInt & 0x2) != 0);
  }
  
  private void checkLayoutParams(GridLayout$LayoutParams paramGridLayout$LayoutParams, boolean paramBoolean) {
    GridLayout$Spec gridLayout$Spec;
    GridLayout$Axis gridLayout$Axis;
    String str;
    if (paramBoolean) {
      str = "column";
    } else {
      str = "row";
    } 
    if (paramBoolean) {
      gridLayout$Spec = paramGridLayout$LayoutParams.columnSpec;
    } else {
      gridLayout$Spec = ((GridLayout$LayoutParams)gridLayout$Spec).rowSpec;
    } 
    GridLayout$Interval gridLayout$Interval = gridLayout$Spec.span;
    if (gridLayout$Interval.min != Integer.MIN_VALUE && gridLayout$Interval.min < 0)
      handleInvalidParams(str + " indices must be positive"); 
    if (paramBoolean) {
      gridLayout$Axis = this.mHorizontalAxis;
    } else {
      gridLayout$Axis = this.mVerticalAxis;
    } 
    int i = gridLayout$Axis.definedCount;
    if (i != Integer.MIN_VALUE) {
      if (gridLayout$Interval.max > i)
        handleInvalidParams(str + " indices (start + span) mustn't exceed the " + str + " count"); 
      if (gridLayout$Interval.size() > i)
        handleInvalidParams(str + " span mustn't exceed the " + str + " count"); 
    } 
  }
  
  private static int clip(GridLayout$Interval paramGridLayout$Interval, boolean paramBoolean, int paramInt) {
    int i = paramGridLayout$Interval.size();
    if (paramInt == 0)
      return i; 
    if (paramBoolean) {
      int j = Math.min(paramGridLayout$Interval.min, paramInt);
      return Math.min(i, paramInt - j);
    } 
    byte b = 0;
    return Math.min(i, paramInt - b);
  }
  
  private int computeLayoutParamsHashCode() {
    int i = 1;
    int k = getChildCount();
    for (int j = 0; j < k; j++) {
      View view = getChildAt(j);
      if (view.getVisibility() != 8)
        i = ((GridLayout$LayoutParams)view.getLayoutParams()).hashCode() + i * 31; 
    } 
    return i;
  }
  
  private void consistencyCheck() {
    if (this.mLastLayoutParamsHashCode == 0) {
      validateLayoutParams();
      this.mLastLayoutParamsHashCode = computeLayoutParamsHashCode();
      return;
    } 
    if (this.mLastLayoutParamsHashCode != computeLayoutParamsHashCode()) {
      this.mPrinter.println("The fields of some layout parameters were modified in between layout operations. Check the javadoc for GridLayout.LayoutParams#rowSpec.");
      invalidateStructure();
      consistencyCheck();
      return;
    } 
  }
  
  private static GridLayout$Alignment createSwitchingAlignment(GridLayout$Alignment paramGridLayout$Alignment1, GridLayout$Alignment paramGridLayout$Alignment2) {
    return new GridLayout$5(paramGridLayout$Alignment1, paramGridLayout$Alignment2);
  }
  
  private void drawLine(Canvas paramCanvas, int paramInt1, int paramInt2, int paramInt3, int paramInt4, Paint paramPaint) {
    if (isLayoutRtlCompat()) {
      int i = getWidth();
      paramCanvas.drawLine((i - paramInt1), paramInt2, (i - paramInt3), paramInt4, paramPaint);
      return;
    } 
    paramCanvas.drawLine(paramInt1, paramInt2, paramInt3, paramInt4, paramPaint);
  }
  
  private static boolean fits(int[] paramArrayOfint, int paramInt1, int paramInt2, int paramInt3) {
    if (paramInt3 > paramArrayOfint.length)
      return false; 
    while (paramInt2 < paramInt3) {
      if (paramArrayOfint[paramInt2] > paramInt1)
        return false; 
      paramInt2++;
    } 
    return true;
  }
  
  static GridLayout$Alignment getAlignment(int paramInt, boolean paramBoolean) {
    byte b1;
    byte b2;
    if (paramBoolean) {
      b1 = 7;
    } else {
      b1 = 112;
    } 
    if (paramBoolean) {
      b2 = 0;
    } else {
      b2 = 4;
    } 
    switch ((b1 & paramInt) >> b2) {
      default:
        return UNDEFINED_ALIGNMENT;
      case 3:
        return paramBoolean ? LEFT : TOP;
      case 5:
        return paramBoolean ? RIGHT : BOTTOM;
      case 7:
        return FILL;
      case 1:
        return CENTER;
      case 8388611:
        return START;
      case 8388613:
        break;
    } 
    return END;
  }
  
  private int getDefaultMargin(View paramView, GridLayout$LayoutParams paramGridLayout$LayoutParams, boolean paramBoolean1, boolean paramBoolean2) {
    GridLayout$Spec gridLayout$Spec;
    GridLayout$Axis gridLayout$Axis;
    if (!this.mUseDefaultMargins)
      return 0; 
    if (paramBoolean1) {
      gridLayout$Spec = paramGridLayout$LayoutParams.columnSpec;
    } else {
      gridLayout$Spec = ((GridLayout$LayoutParams)gridLayout$Spec).rowSpec;
    } 
    if (paramBoolean1) {
      gridLayout$Axis = this.mHorizontalAxis;
    } else {
      gridLayout$Axis = this.mVerticalAxis;
    } 
    GridLayout$Interval gridLayout$Interval = gridLayout$Spec.span;
    if (paramBoolean1 && isLayoutRtlCompat()) {
      if (!paramBoolean2) {
        bool = true;
      } else {
        bool = false;
      } 
    } else {
      bool = paramBoolean2;
    } 
    if (bool) {
      if (gridLayout$Interval.min == 0) {
        bool = true;
        return getDefaultMargin(paramView, bool, paramBoolean1, paramBoolean2);
      } 
      bool = false;
      return getDefaultMargin(paramView, bool, paramBoolean1, paramBoolean2);
    } 
    if (gridLayout$Interval.max == gridLayout$Axis.getCount()) {
      bool = true;
      return getDefaultMargin(paramView, bool, paramBoolean1, paramBoolean2);
    } 
    boolean bool = false;
    return getDefaultMargin(paramView, bool, paramBoolean1, paramBoolean2);
  }
  
  private int getDefaultMargin(View paramView, boolean paramBoolean1, boolean paramBoolean2) {
    return (paramView.getClass() == Space.class) ? 0 : (this.mDefaultGap / 2);
  }
  
  private int getDefaultMargin(View paramView, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3) {
    return getDefaultMargin(paramView, paramBoolean2, paramBoolean3);
  }
  
  private int getMargin(View paramView, boolean paramBoolean1, boolean paramBoolean2) {
    GridLayout$Spec gridLayout$Spec;
    GridLayout$Axis gridLayout$Axis;
    int[] arrayOfInt;
    if (this.mAlignmentMode == 1)
      return getMargin1(paramView, paramBoolean1, paramBoolean2); 
    if (paramBoolean1) {
      gridLayout$Axis = this.mHorizontalAxis;
    } else {
      gridLayout$Axis = this.mVerticalAxis;
    } 
    if (paramBoolean2) {
      arrayOfInt = gridLayout$Axis.getLeadingMargins();
    } else {
      arrayOfInt = arrayOfInt.getTrailingMargins();
    } 
    GridLayout$LayoutParams gridLayout$LayoutParams = getLayoutParams(paramView);
    if (paramBoolean1) {
      gridLayout$Spec = gridLayout$LayoutParams.columnSpec;
    } else {
      gridLayout$Spec = ((GridLayout$LayoutParams)gridLayout$Spec).rowSpec;
    } 
    if (paramBoolean2) {
      int j = gridLayout$Spec.span.min;
      return arrayOfInt[j];
    } 
    int i = gridLayout$Spec.span.max;
    return arrayOfInt[i];
  }
  
  private int getMeasurement(View paramView, boolean paramBoolean) {
    return paramBoolean ? paramView.getMeasuredWidth() : paramView.getMeasuredHeight();
  }
  
  private int getTotalMargin(View paramView, boolean paramBoolean) {
    return getMargin(paramView, paramBoolean, true) + getMargin(paramView, paramBoolean, false);
  }
  
  static void handleInvalidParams(String paramString) {
    throw new IllegalArgumentException(paramString + ". ");
  }
  
  private void invalidateStructure() {
    this.mLastLayoutParamsHashCode = 0;
    if (this.mHorizontalAxis != null)
      this.mHorizontalAxis.invalidateStructure(); 
    if (this.mVerticalAxis != null)
      this.mVerticalAxis.invalidateStructure(); 
    invalidateValues();
  }
  
  private void invalidateValues() {
    if (this.mHorizontalAxis != null && this.mVerticalAxis != null) {
      this.mHorizontalAxis.invalidateValues();
      this.mVerticalAxis.invalidateValues();
    } 
  }
  
  private boolean isLayoutRtlCompat() {
    return (ViewCompat.getLayoutDirection((View)this) == 1);
  }
  
  static int max2(int[] paramArrayOfint, int paramInt) {
    boolean bool = false;
    int j = paramArrayOfint.length;
    int i = paramInt;
    for (paramInt = bool; paramInt < j; paramInt++)
      i = Math.max(i, paramArrayOfint[paramInt]); 
    return i;
  }
  
  private void measureChildWithMargins2(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    paramView.measure(getChildMeasureSpec(paramInt1, getTotalMargin(paramView, true), paramInt3), getChildMeasureSpec(paramInt2, getTotalMargin(paramView, false), paramInt4));
  }
  
  private void measureChildrenWithMargins(int paramInt1, int paramInt2, boolean paramBoolean) {
    int j = getChildCount();
    for (int i = 0; i < j; i++) {
      View view = getChildAt(i);
      if (view.getVisibility() != 8) {
        GridLayout$LayoutParams gridLayout$LayoutParams = getLayoutParams(view);
        if (paramBoolean) {
          measureChildWithMargins2(view, paramInt1, paramInt2, gridLayout$LayoutParams.width, gridLayout$LayoutParams.height);
        } else {
          boolean bool;
          GridLayout$Spec gridLayout$Spec;
          if (this.mOrientation == 0) {
            bool = true;
          } else {
            bool = false;
          } 
          if (bool) {
            gridLayout$Spec = gridLayout$LayoutParams.columnSpec;
          } else {
            gridLayout$Spec = gridLayout$LayoutParams.rowSpec;
          } 
          if (gridLayout$Spec.getAbsoluteAlignment(bool) == FILL) {
            GridLayout$Axis gridLayout$Axis;
            GridLayout$Interval gridLayout$Interval = gridLayout$Spec.span;
            if (bool) {
              gridLayout$Axis = this.mHorizontalAxis;
            } else {
              gridLayout$Axis = this.mVerticalAxis;
            } 
            int[] arrayOfInt = gridLayout$Axis.getLocations();
            int k = arrayOfInt[gridLayout$Interval.max] - arrayOfInt[gridLayout$Interval.min] - getTotalMargin(view, bool);
            if (bool) {
              measureChildWithMargins2(view, paramInt1, paramInt2, k, gridLayout$LayoutParams.height);
            } else {
              measureChildWithMargins2(view, paramInt1, paramInt2, gridLayout$LayoutParams.width, k);
            } 
          } 
        } 
      } 
    } 
  }
  
  private static void procrusteanFill(int[] paramArrayOfint, int paramInt1, int paramInt2, int paramInt3) {
    int i = paramArrayOfint.length;
    Arrays.fill(paramArrayOfint, Math.min(paramInt1, i), Math.min(paramInt2, i), paramInt3);
  }
  
  private static void setCellGroup(GridLayout$LayoutParams paramGridLayout$LayoutParams, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    paramGridLayout$LayoutParams.setRowSpecSpan(new GridLayout$Interval(paramInt1, paramInt1 + paramInt2));
    paramGridLayout$LayoutParams.setColumnSpecSpan(new GridLayout$Interval(paramInt3, paramInt3 + paramInt4));
  }
  
  public static GridLayout$Spec spec(int paramInt) {
    return spec(paramInt, 1);
  }
  
  public static GridLayout$Spec spec(int paramInt, float paramFloat) {
    return spec(paramInt, 1, paramFloat);
  }
  
  public static GridLayout$Spec spec(int paramInt1, int paramInt2) {
    return spec(paramInt1, paramInt2, UNDEFINED_ALIGNMENT);
  }
  
  public static GridLayout$Spec spec(int paramInt1, int paramInt2, float paramFloat) {
    return spec(paramInt1, paramInt2, UNDEFINED_ALIGNMENT, paramFloat);
  }
  
  public static GridLayout$Spec spec(int paramInt1, int paramInt2, GridLayout$Alignment paramGridLayout$Alignment) {
    return spec(paramInt1, paramInt2, paramGridLayout$Alignment, 0.0F);
  }
  
  public static GridLayout$Spec spec(int paramInt1, int paramInt2, GridLayout$Alignment paramGridLayout$Alignment, float paramFloat) {
    if (paramInt1 != Integer.MIN_VALUE) {
      boolean bool1 = true;
      return new GridLayout$Spec(bool1, paramInt1, paramInt2, paramGridLayout$Alignment, paramFloat);
    } 
    boolean bool = false;
    return new GridLayout$Spec(bool, paramInt1, paramInt2, paramGridLayout$Alignment, paramFloat);
  }
  
  public static GridLayout$Spec spec(int paramInt, GridLayout$Alignment paramGridLayout$Alignment) {
    return spec(paramInt, 1, paramGridLayout$Alignment);
  }
  
  public static GridLayout$Spec spec(int paramInt, GridLayout$Alignment paramGridLayout$Alignment, float paramFloat) {
    return spec(paramInt, 1, paramGridLayout$Alignment, paramFloat);
  }
  
  private void validateLayoutParams() {
    // Byte code:
    //   0: aload_0
    //   1: getfield mOrientation : I
    //   4: ifne -> 242
    //   7: iconst_1
    //   8: istore #7
    //   10: iload #7
    //   12: ifeq -> 248
    //   15: aload_0
    //   16: getfield mHorizontalAxis : Landroid/support/v7/widget/GridLayout$Axis;
    //   19: astore #15
    //   21: aload #15
    //   23: getfield definedCount : I
    //   26: ldc -2147483648
    //   28: if_icmpeq -> 257
    //   31: aload #15
    //   33: getfield definedCount : I
    //   36: istore #8
    //   38: iload #8
    //   40: newarray int
    //   42: astore #16
    //   44: aload_0
    //   45: invokevirtual getChildCount : ()I
    //   48: istore #10
    //   50: iconst_0
    //   51: istore #9
    //   53: iconst_0
    //   54: istore_2
    //   55: iconst_0
    //   56: istore_1
    //   57: iload #9
    //   59: iload #10
    //   61: if_icmpge -> 379
    //   64: aload_0
    //   65: iload #9
    //   67: invokevirtual getChildAt : (I)Landroid/view/View;
    //   70: invokevirtual getLayoutParams : ()Landroid/view/ViewGroup$LayoutParams;
    //   73: checkcast android/support/v7/widget/GridLayout$LayoutParams
    //   76: astore #17
    //   78: iload #7
    //   80: ifeq -> 263
    //   83: aload #17
    //   85: getfield rowSpec : Landroid/support/v7/widget/GridLayout$Spec;
    //   88: astore #15
    //   90: aload #15
    //   92: getfield span : Landroid/support/v7/widget/GridLayout$Interval;
    //   95: astore #18
    //   97: aload #15
    //   99: getfield startDefined : Z
    //   102: istore #13
    //   104: aload #18
    //   106: invokevirtual size : ()I
    //   109: istore #11
    //   111: iload #13
    //   113: ifeq -> 122
    //   116: aload #18
    //   118: getfield min : I
    //   121: istore_1
    //   122: iload #7
    //   124: ifeq -> 273
    //   127: aload #17
    //   129: getfield columnSpec : Landroid/support/v7/widget/GridLayout$Spec;
    //   132: astore #15
    //   134: aload #15
    //   136: getfield span : Landroid/support/v7/widget/GridLayout$Interval;
    //   139: astore #18
    //   141: aload #15
    //   143: getfield startDefined : Z
    //   146: istore #14
    //   148: aload #18
    //   150: iload #14
    //   152: iload #8
    //   154: invokestatic clip : (Landroid/support/v7/widget/GridLayout$Interval;ZI)I
    //   157: istore #12
    //   159: iload #14
    //   161: ifeq -> 380
    //   164: aload #18
    //   166: getfield min : I
    //   169: istore_2
    //   170: iload_2
    //   171: istore #5
    //   173: iload_1
    //   174: istore_3
    //   175: iload #8
    //   177: ifeq -> 330
    //   180: iload_2
    //   181: istore_3
    //   182: iload_1
    //   183: istore #4
    //   185: iload #13
    //   187: ifeq -> 206
    //   190: iload_2
    //   191: istore #5
    //   193: iload_1
    //   194: istore #6
    //   196: iload #14
    //   198: ifne -> 310
    //   201: iload_1
    //   202: istore #4
    //   204: iload_2
    //   205: istore_3
    //   206: iload_3
    //   207: istore #5
    //   209: iload #4
    //   211: istore #6
    //   213: aload #16
    //   215: iload #4
    //   217: iload_3
    //   218: iload_3
    //   219: iload #12
    //   221: iadd
    //   222: invokestatic fits : ([IIII)Z
    //   225: ifne -> 310
    //   228: iload #14
    //   230: ifeq -> 283
    //   233: iload #4
    //   235: iconst_1
    //   236: iadd
    //   237: istore #4
    //   239: goto -> 206
    //   242: iconst_0
    //   243: istore #7
    //   245: goto -> 10
    //   248: aload_0
    //   249: getfield mVerticalAxis : Landroid/support/v7/widget/GridLayout$Axis;
    //   252: astore #15
    //   254: goto -> 21
    //   257: iconst_0
    //   258: istore #8
    //   260: goto -> 38
    //   263: aload #17
    //   265: getfield columnSpec : Landroid/support/v7/widget/GridLayout$Spec;
    //   268: astore #15
    //   270: goto -> 90
    //   273: aload #17
    //   275: getfield rowSpec : Landroid/support/v7/widget/GridLayout$Spec;
    //   278: astore #15
    //   280: goto -> 134
    //   283: iload_3
    //   284: iload #12
    //   286: iadd
    //   287: iload #8
    //   289: if_icmpgt -> 299
    //   292: iload_3
    //   293: iconst_1
    //   294: iadd
    //   295: istore_3
    //   296: goto -> 206
    //   299: iload #4
    //   301: iconst_1
    //   302: iadd
    //   303: istore #4
    //   305: iconst_0
    //   306: istore_3
    //   307: goto -> 206
    //   310: aload #16
    //   312: iload #5
    //   314: iload #5
    //   316: iload #12
    //   318: iadd
    //   319: iload #6
    //   321: iload #11
    //   323: iadd
    //   324: invokestatic procrusteanFill : ([IIII)V
    //   327: iload #6
    //   329: istore_3
    //   330: iload #7
    //   332: ifeq -> 364
    //   335: aload #17
    //   337: iload_3
    //   338: iload #11
    //   340: iload #5
    //   342: iload #12
    //   344: invokestatic setCellGroup : (Landroid/support/v7/widget/GridLayout$LayoutParams;IIII)V
    //   347: iload #5
    //   349: iload #12
    //   351: iadd
    //   352: istore_2
    //   353: iload #9
    //   355: iconst_1
    //   356: iadd
    //   357: istore #9
    //   359: iload_3
    //   360: istore_1
    //   361: goto -> 57
    //   364: aload #17
    //   366: iload #5
    //   368: iload #12
    //   370: iload_3
    //   371: iload #11
    //   373: invokestatic setCellGroup : (Landroid/support/v7/widget/GridLayout$LayoutParams;IIII)V
    //   376: goto -> 347
    //   379: return
    //   380: goto -> 170
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams) {
    if (!(paramLayoutParams instanceof GridLayout$LayoutParams))
      return false; 
    GridLayout$LayoutParams gridLayout$LayoutParams = (GridLayout$LayoutParams)paramLayoutParams;
    checkLayoutParams(gridLayout$LayoutParams, true);
    checkLayoutParams(gridLayout$LayoutParams, false);
    return true;
  }
  
  protected GridLayout$LayoutParams generateDefaultLayoutParams() {
    return new GridLayout$LayoutParams();
  }
  
  public GridLayout$LayoutParams generateLayoutParams(AttributeSet paramAttributeSet) {
    return new GridLayout$LayoutParams(getContext(), paramAttributeSet);
  }
  
  protected GridLayout$LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams) {
    return (paramLayoutParams instanceof GridLayout$LayoutParams) ? new GridLayout$LayoutParams((GridLayout$LayoutParams)paramLayoutParams) : ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams) ? new GridLayout$LayoutParams((ViewGroup.MarginLayoutParams)paramLayoutParams) : new GridLayout$LayoutParams(paramLayoutParams));
  }
  
  public int getAlignmentMode() {
    return this.mAlignmentMode;
  }
  
  public int getColumnCount() {
    return this.mHorizontalAxis.getCount();
  }
  
  final GridLayout$LayoutParams getLayoutParams(View paramView) {
    return (GridLayout$LayoutParams)paramView.getLayoutParams();
  }
  
  int getMargin1(View paramView, boolean paramBoolean1, boolean paramBoolean2) {
    int i;
    GridLayout$LayoutParams gridLayout$LayoutParams = getLayoutParams(paramView);
    if (paramBoolean1) {
      if (paramBoolean2) {
        i = gridLayout$LayoutParams.leftMargin;
      } else {
        i = gridLayout$LayoutParams.rightMargin;
      } 
    } else if (paramBoolean2) {
      i = gridLayout$LayoutParams.topMargin;
    } else {
      i = gridLayout$LayoutParams.bottomMargin;
    } 
    int j = i;
    if (i == Integer.MIN_VALUE)
      j = getDefaultMargin(paramView, gridLayout$LayoutParams, paramBoolean1, paramBoolean2); 
    return j;
  }
  
  final int getMeasurementIncludingMargin(View paramView, boolean paramBoolean) {
    return (paramView.getVisibility() == 8) ? 0 : (getMeasurement(paramView, paramBoolean) + getTotalMargin(paramView, paramBoolean));
  }
  
  public int getOrientation() {
    return this.mOrientation;
  }
  
  public Printer getPrinter() {
    return this.mPrinter;
  }
  
  public int getRowCount() {
    return this.mVerticalAxis.getCount();
  }
  
  public boolean getUseDefaultMargins() {
    return this.mUseDefaultMargins;
  }
  
  public boolean isColumnOrderPreserved() {
    return this.mHorizontalAxis.isOrderPreserved();
  }
  
  public boolean isRowOrderPreserved() {
    return this.mVerticalAxis.isOrderPreserved();
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    consistencyCheck();
    paramInt3 -= paramInt1;
    int i = getPaddingLeft();
    int j = getPaddingTop();
    int k = getPaddingRight();
    paramInt1 = getPaddingBottom();
    this.mHorizontalAxis.layout(paramInt3 - i - k);
    this.mVerticalAxis.layout(paramInt4 - paramInt2 - j - paramInt1);
    int[] arrayOfInt1 = this.mHorizontalAxis.getLocations();
    int[] arrayOfInt2 = this.mVerticalAxis.getLocations();
    paramInt4 = getChildCount();
    for (paramInt1 = 0; paramInt1 < paramInt4; paramInt1++) {
      View view = getChildAt(paramInt1);
      if (view.getVisibility() != 8) {
        GridLayout$LayoutParams gridLayout$LayoutParams = getLayoutParams(view);
        GridLayout$Spec gridLayout$Spec1 = gridLayout$LayoutParams.columnSpec;
        GridLayout$Spec gridLayout$Spec2 = gridLayout$LayoutParams.rowSpec;
        GridLayout$Interval gridLayout$Interval1 = gridLayout$Spec1.span;
        GridLayout$Interval gridLayout$Interval2 = gridLayout$Spec2.span;
        paramInt2 = arrayOfInt1[gridLayout$Interval1.min];
        int m = arrayOfInt2[gridLayout$Interval2.min];
        int i1 = arrayOfInt1[gridLayout$Interval1.max];
        int n = arrayOfInt2[gridLayout$Interval2.max];
        int i5 = i1 - paramInt2;
        int i7 = n - m;
        int i10 = getMeasurement(view, true);
        int i8 = getMeasurement(view, false);
        GridLayout$Alignment gridLayout$Alignment1 = gridLayout$Spec1.getAbsoluteAlignment(true);
        GridLayout$Alignment gridLayout$Alignment2 = gridLayout$Spec2.getAbsoluteAlignment(false);
        GridLayout$Bounds gridLayout$Bounds1 = this.mHorizontalAxis.getGroupBounds().getValue(paramInt1);
        GridLayout$Bounds gridLayout$Bounds2 = this.mVerticalAxis.getGroupBounds().getValue(paramInt1);
        int i6 = gridLayout$Alignment1.getGravityOffset(view, i5 - gridLayout$Bounds1.size(true));
        n = gridLayout$Alignment2.getGravityOffset(view, i7 - gridLayout$Bounds2.size(true));
        int i3 = getMargin(view, true, true);
        i1 = getMargin(view, false, true);
        int i4 = getMargin(view, true, false);
        int i2 = getMargin(view, false, false);
        int i11 = i3 + i4;
        int i12 = i1 + i2;
        int i9 = gridLayout$Bounds1.getOffset(this, view, gridLayout$Alignment1, i10 + i11, true);
        i2 = gridLayout$Bounds2.getOffset(this, view, gridLayout$Alignment2, i8 + i12, false);
        i5 = gridLayout$Alignment1.getSizeInCell(view, i10, i5 - i11);
        i7 = gridLayout$Alignment2.getSizeInCell(view, i8, i7 - i12);
        paramInt2 = i9 + paramInt2 + i6;
        if (!isLayoutRtlCompat()) {
          paramInt2 += i + i3;
        } else {
          paramInt2 = paramInt3 - i5 - k - i4 - paramInt2;
        } 
        m = i2 + j + m + n + i1;
        if (i5 != view.getMeasuredWidth() || i7 != view.getMeasuredHeight())
          view.measure(View.MeasureSpec.makeMeasureSpec(i5, 1073741824), View.MeasureSpec.makeMeasureSpec(i7, 1073741824)); 
        view.layout(paramInt2, m, i5 + paramInt2, i7 + m);
      } 
    } 
  }
  
  protected void onMeasure(int paramInt1, int paramInt2) {
    consistencyCheck();
    invalidateValues();
    int m = getPaddingLeft() + getPaddingRight();
    int k = getPaddingTop() + getPaddingBottom();
    int n = adjust(paramInt1, -m);
    int i1 = adjust(paramInt2, -k);
    measureChildrenWithMargins(n, i1, true);
    if (this.mOrientation == 0) {
      j = this.mHorizontalAxis.getMeasure(n);
      measureChildrenWithMargins(n, i1, false);
      i = this.mVerticalAxis.getMeasure(i1);
    } else {
      i = this.mVerticalAxis.getMeasure(i1);
      measureChildrenWithMargins(n, i1, false);
      j = this.mHorizontalAxis.getMeasure(n);
    } 
    int j = Math.max(j + m, getSuggestedMinimumWidth());
    int i = Math.max(i + k, getSuggestedMinimumHeight());
    setMeasuredDimension(ViewCompat.resolveSizeAndState(j, paramInt1, 0), ViewCompat.resolveSizeAndState(i, paramInt2, 0));
  }
  
  public void requestLayout() {
    super.requestLayout();
    invalidateStructure();
  }
  
  public void setAlignmentMode(int paramInt) {
    this.mAlignmentMode = paramInt;
    requestLayout();
  }
  
  public void setColumnCount(int paramInt) {
    this.mHorizontalAxis.setCount(paramInt);
    invalidateStructure();
    requestLayout();
  }
  
  public void setColumnOrderPreserved(boolean paramBoolean) {
    this.mHorizontalAxis.setOrderPreserved(paramBoolean);
    invalidateStructure();
    requestLayout();
  }
  
  public void setOrientation(int paramInt) {
    if (this.mOrientation != paramInt) {
      this.mOrientation = paramInt;
      invalidateStructure();
      requestLayout();
    } 
  }
  
  public void setPrinter(Printer paramPrinter) {
    Printer printer = paramPrinter;
    if (paramPrinter == null)
      printer = NO_PRINTER; 
    this.mPrinter = printer;
  }
  
  public void setRowCount(int paramInt) {
    this.mVerticalAxis.setCount(paramInt);
    invalidateStructure();
    requestLayout();
  }
  
  public void setRowOrderPreserved(boolean paramBoolean) {
    this.mVerticalAxis.setOrderPreserved(paramBoolean);
    invalidateStructure();
    requestLayout();
  }
  
  public void setUseDefaultMargins(boolean paramBoolean) {
    this.mUseDefaultMargins = paramBoolean;
    requestLayout();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\GridLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */