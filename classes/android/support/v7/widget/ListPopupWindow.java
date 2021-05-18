package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.support.annotation.AttrRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.StyleRes;
import android.support.v4.widget.PopupWindowCompat;
import android.support.v7.appcompat.R;
import android.support.v7.view.menu.ShowableListMenu;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import java.lang.reflect.Method;

public class ListPopupWindow implements ShowableListMenu {
  private static final boolean DEBUG = false;
  
  static final int EXPAND_LIST_TIMEOUT = 250;
  
  public static final int INPUT_METHOD_FROM_FOCUSABLE = 0;
  
  public static final int INPUT_METHOD_NEEDED = 1;
  
  public static final int INPUT_METHOD_NOT_NEEDED = 2;
  
  public static final int MATCH_PARENT = -1;
  
  public static final int POSITION_PROMPT_ABOVE = 0;
  
  public static final int POSITION_PROMPT_BELOW = 1;
  
  private static final String TAG = "ListPopupWindow";
  
  public static final int WRAP_CONTENT = -2;
  
  private static Method sClipToWindowEnabledMethod;
  
  private static Method sGetMaxAvailableHeightMethod;
  
  private static Method sSetEpicenterBoundsMethod;
  
  private ListAdapter mAdapter;
  
  private Context mContext;
  
  private boolean mDropDownAlwaysVisible = false;
  
  private View mDropDownAnchorView;
  
  private int mDropDownGravity = 0;
  
  private int mDropDownHeight = -2;
  
  private int mDropDownHorizontalOffset;
  
  DropDownListView mDropDownList;
  
  private Drawable mDropDownListHighlight;
  
  private int mDropDownVerticalOffset;
  
  private boolean mDropDownVerticalOffsetSet;
  
  private int mDropDownWidth = -2;
  
  private int mDropDownWindowLayoutType = 1002;
  
  private Rect mEpicenterBounds;
  
  private boolean mForceIgnoreOutsideTouch = false;
  
  final Handler mHandler;
  
  private final ListPopupWindow$ListSelectorHider mHideSelector = new ListPopupWindow$ListSelectorHider(this);
  
  private boolean mIsAnimatedFromAnchor = true;
  
  private AdapterView.OnItemClickListener mItemClickListener;
  
  private AdapterView.OnItemSelectedListener mItemSelectedListener;
  
  int mListItemExpandMaximum = Integer.MAX_VALUE;
  
  private boolean mModal;
  
  private DataSetObserver mObserver;
  
  PopupWindow mPopup;
  
  private int mPromptPosition = 0;
  
  private View mPromptView;
  
  final ListPopupWindow$ResizePopupRunnable mResizePopupRunnable = new ListPopupWindow$ResizePopupRunnable(this);
  
  private final ListPopupWindow$PopupScrollListener mScrollListener = new ListPopupWindow$PopupScrollListener(this);
  
  private Runnable mShowDropDownRunnable;
  
  private final Rect mTempRect = new Rect();
  
  private final ListPopupWindow$PopupTouchInterceptor mTouchInterceptor = new ListPopupWindow$PopupTouchInterceptor(this);
  
  static {
    try {
      sClipToWindowEnabledMethod = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", new Class[] { boolean.class });
    } catch (NoSuchMethodException noSuchMethodException) {
      Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
    } 
    try {
      sGetMaxAvailableHeightMethod = PopupWindow.class.getDeclaredMethod("getMaxAvailableHeight", new Class[] { View.class, int.class, boolean.class });
      try {
        sSetEpicenterBoundsMethod = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", new Class[] { Rect.class });
        return;
      } catch (NoSuchMethodException noSuchMethodException) {
        Log.i("ListPopupWindow", "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well.");
      } 
    } catch (NoSuchMethodException noSuchMethodException) {
      Log.i("ListPopupWindow", "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well.");
      try {
        sSetEpicenterBoundsMethod = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", new Class[] { Rect.class });
        return;
      } catch (NoSuchMethodException noSuchMethodException1) {
        Log.i("ListPopupWindow", "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well.");
      } 
    } 
  }
  
  public ListPopupWindow(@NonNull Context paramContext) {
    this(paramContext, null, R.attr.listPopupWindowStyle);
  }
  
  public ListPopupWindow(@NonNull Context paramContext, @Nullable AttributeSet paramAttributeSet) {
    this(paramContext, paramAttributeSet, R.attr.listPopupWindowStyle);
  }
  
  public ListPopupWindow(@NonNull Context paramContext, @Nullable AttributeSet paramAttributeSet, @AttrRes int paramInt) {
    this(paramContext, paramAttributeSet, paramInt, 0);
  }
  
  public ListPopupWindow(@NonNull Context paramContext, @Nullable AttributeSet paramAttributeSet, @AttrRes int paramInt1, @StyleRes int paramInt2) {
    this.mContext = paramContext;
    this.mHandler = new Handler(paramContext.getMainLooper());
    TypedArray typedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.ListPopupWindow, paramInt1, paramInt2);
    this.mDropDownHorizontalOffset = typedArray.getDimensionPixelOffset(R.styleable.ListPopupWindow_android_dropDownHorizontalOffset, 0);
    this.mDropDownVerticalOffset = typedArray.getDimensionPixelOffset(R.styleable.ListPopupWindow_android_dropDownVerticalOffset, 0);
    if (this.mDropDownVerticalOffset != 0)
      this.mDropDownVerticalOffsetSet = true; 
    typedArray.recycle();
    if (Build.VERSION.SDK_INT >= 11) {
      this.mPopup = new AppCompatPopupWindow(paramContext, paramAttributeSet, paramInt1, paramInt2);
    } else {
      this.mPopup = new AppCompatPopupWindow(paramContext, paramAttributeSet, paramInt1);
    } 
    this.mPopup.setInputMethodMode(1);
  }
  
  private int buildDropDown() {
    // Byte code:
    //   0: iconst_1
    //   1: istore #6
    //   3: aload_0
    //   4: getfield mDropDownList : Landroid/support/v7/widget/DropDownListView;
    //   7: ifnonnull -> 486
    //   10: aload_0
    //   11: getfield mContext : Landroid/content/Context;
    //   14: astore #8
    //   16: aload_0
    //   17: new android/support/v7/widget/ListPopupWindow$2
    //   20: dup
    //   21: aload_0
    //   22: invokespecial <init> : (Landroid/support/v7/widget/ListPopupWindow;)V
    //   25: putfield mShowDropDownRunnable : Ljava/lang/Runnable;
    //   28: aload_0
    //   29: getfield mModal : Z
    //   32: ifne -> 435
    //   35: iconst_1
    //   36: istore #5
    //   38: aload_0
    //   39: aload_0
    //   40: aload #8
    //   42: iload #5
    //   44: invokevirtual createDropDownListView : (Landroid/content/Context;Z)Landroid/support/v7/widget/DropDownListView;
    //   47: putfield mDropDownList : Landroid/support/v7/widget/DropDownListView;
    //   50: aload_0
    //   51: getfield mDropDownListHighlight : Landroid/graphics/drawable/Drawable;
    //   54: ifnull -> 68
    //   57: aload_0
    //   58: getfield mDropDownList : Landroid/support/v7/widget/DropDownListView;
    //   61: aload_0
    //   62: getfield mDropDownListHighlight : Landroid/graphics/drawable/Drawable;
    //   65: invokevirtual setSelector : (Landroid/graphics/drawable/Drawable;)V
    //   68: aload_0
    //   69: getfield mDropDownList : Landroid/support/v7/widget/DropDownListView;
    //   72: aload_0
    //   73: getfield mAdapter : Landroid/widget/ListAdapter;
    //   76: invokevirtual setAdapter : (Landroid/widget/ListAdapter;)V
    //   79: aload_0
    //   80: getfield mDropDownList : Landroid/support/v7/widget/DropDownListView;
    //   83: aload_0
    //   84: getfield mItemClickListener : Landroid/widget/AdapterView$OnItemClickListener;
    //   87: invokevirtual setOnItemClickListener : (Landroid/widget/AdapterView$OnItemClickListener;)V
    //   90: aload_0
    //   91: getfield mDropDownList : Landroid/support/v7/widget/DropDownListView;
    //   94: iconst_1
    //   95: invokevirtual setFocusable : (Z)V
    //   98: aload_0
    //   99: getfield mDropDownList : Landroid/support/v7/widget/DropDownListView;
    //   102: iconst_1
    //   103: invokevirtual setFocusableInTouchMode : (Z)V
    //   106: aload_0
    //   107: getfield mDropDownList : Landroid/support/v7/widget/DropDownListView;
    //   110: new android/support/v7/widget/ListPopupWindow$3
    //   113: dup
    //   114: aload_0
    //   115: invokespecial <init> : (Landroid/support/v7/widget/ListPopupWindow;)V
    //   118: invokevirtual setOnItemSelectedListener : (Landroid/widget/AdapterView$OnItemSelectedListener;)V
    //   121: aload_0
    //   122: getfield mDropDownList : Landroid/support/v7/widget/DropDownListView;
    //   125: aload_0
    //   126: getfield mScrollListener : Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;
    //   129: invokevirtual setOnScrollListener : (Landroid/widget/AbsListView$OnScrollListener;)V
    //   132: aload_0
    //   133: getfield mItemSelectedListener : Landroid/widget/AdapterView$OnItemSelectedListener;
    //   136: ifnull -> 150
    //   139: aload_0
    //   140: getfield mDropDownList : Landroid/support/v7/widget/DropDownListView;
    //   143: aload_0
    //   144: getfield mItemSelectedListener : Landroid/widget/AdapterView$OnItemSelectedListener;
    //   147: invokevirtual setOnItemSelectedListener : (Landroid/widget/AdapterView$OnItemSelectedListener;)V
    //   150: aload_0
    //   151: getfield mDropDownList : Landroid/support/v7/widget/DropDownListView;
    //   154: astore #7
    //   156: aload_0
    //   157: getfield mPromptView : Landroid/view/View;
    //   160: astore #9
    //   162: aload #9
    //   164: ifnull -> 734
    //   167: new android/widget/LinearLayout
    //   170: dup
    //   171: aload #8
    //   173: invokespecial <init> : (Landroid/content/Context;)V
    //   176: astore #8
    //   178: aload #8
    //   180: iconst_1
    //   181: invokevirtual setOrientation : (I)V
    //   184: new android/widget/LinearLayout$LayoutParams
    //   187: dup
    //   188: iconst_m1
    //   189: iconst_0
    //   190: fconst_1
    //   191: invokespecial <init> : (IIF)V
    //   194: astore #10
    //   196: aload_0
    //   197: getfield mPromptPosition : I
    //   200: tableswitch default -> 224, 0 -> 460, 1 -> 441
    //   224: ldc 'ListPopupWindow'
    //   226: new java/lang/StringBuilder
    //   229: dup
    //   230: invokespecial <init> : ()V
    //   233: ldc_w 'Invalid hint position '
    //   236: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   239: aload_0
    //   240: getfield mPromptPosition : I
    //   243: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   246: invokevirtual toString : ()Ljava/lang/String;
    //   249: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   252: pop
    //   253: aload_0
    //   254: getfield mDropDownWidth : I
    //   257: iflt -> 479
    //   260: aload_0
    //   261: getfield mDropDownWidth : I
    //   264: istore_2
    //   265: ldc_w -2147483648
    //   268: istore_1
    //   269: aload #9
    //   271: iload_2
    //   272: iload_1
    //   273: invokestatic makeMeasureSpec : (II)I
    //   276: iconst_0
    //   277: invokevirtual measure : (II)V
    //   280: aload #9
    //   282: invokevirtual getLayoutParams : ()Landroid/view/ViewGroup$LayoutParams;
    //   285: checkcast android/widget/LinearLayout$LayoutParams
    //   288: astore #7
    //   290: aload #9
    //   292: invokevirtual getMeasuredHeight : ()I
    //   295: istore_1
    //   296: aload #7
    //   298: getfield topMargin : I
    //   301: istore_2
    //   302: aload #7
    //   304: getfield bottomMargin : I
    //   307: iload_1
    //   308: iload_2
    //   309: iadd
    //   310: iadd
    //   311: istore_1
    //   312: aload #8
    //   314: astore #7
    //   316: aload_0
    //   317: getfield mPopup : Landroid/widget/PopupWindow;
    //   320: aload #7
    //   322: invokevirtual setContentView : (Landroid/view/View;)V
    //   325: aload_0
    //   326: getfield mPopup : Landroid/widget/PopupWindow;
    //   329: invokevirtual getBackground : ()Landroid/graphics/drawable/Drawable;
    //   332: astore #7
    //   334: aload #7
    //   336: ifnull -> 544
    //   339: aload #7
    //   341: aload_0
    //   342: getfield mTempRect : Landroid/graphics/Rect;
    //   345: invokevirtual getPadding : (Landroid/graphics/Rect;)Z
    //   348: pop
    //   349: aload_0
    //   350: getfield mTempRect : Landroid/graphics/Rect;
    //   353: getfield top : I
    //   356: aload_0
    //   357: getfield mTempRect : Landroid/graphics/Rect;
    //   360: getfield bottom : I
    //   363: iadd
    //   364: istore_2
    //   365: aload_0
    //   366: getfield mDropDownVerticalOffsetSet : Z
    //   369: ifne -> 726
    //   372: aload_0
    //   373: aload_0
    //   374: getfield mTempRect : Landroid/graphics/Rect;
    //   377: getfield top : I
    //   380: ineg
    //   381: putfield mDropDownVerticalOffset : I
    //   384: aload_0
    //   385: getfield mPopup : Landroid/widget/PopupWindow;
    //   388: invokevirtual getInputMethodMode : ()I
    //   391: iconst_2
    //   392: if_icmpne -> 556
    //   395: iload #6
    //   397: istore #5
    //   399: aload_0
    //   400: aload_0
    //   401: invokevirtual getAnchorView : ()Landroid/view/View;
    //   404: aload_0
    //   405: getfield mDropDownVerticalOffset : I
    //   408: iload #5
    //   410: invokespecial getMaxAvailableHeight : (Landroid/view/View;IZ)I
    //   413: istore #4
    //   415: aload_0
    //   416: getfield mDropDownAlwaysVisible : Z
    //   419: ifne -> 430
    //   422: aload_0
    //   423: getfield mDropDownHeight : I
    //   426: iconst_m1
    //   427: if_icmpne -> 562
    //   430: iload #4
    //   432: iload_2
    //   433: iadd
    //   434: ireturn
    //   435: iconst_0
    //   436: istore #5
    //   438: goto -> 38
    //   441: aload #8
    //   443: aload #7
    //   445: aload #10
    //   447: invokevirtual addView : (Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   450: aload #8
    //   452: aload #9
    //   454: invokevirtual addView : (Landroid/view/View;)V
    //   457: goto -> 253
    //   460: aload #8
    //   462: aload #9
    //   464: invokevirtual addView : (Landroid/view/View;)V
    //   467: aload #8
    //   469: aload #7
    //   471: aload #10
    //   473: invokevirtual addView : (Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   476: goto -> 253
    //   479: iconst_0
    //   480: istore_1
    //   481: iconst_0
    //   482: istore_2
    //   483: goto -> 269
    //   486: aload_0
    //   487: getfield mPopup : Landroid/widget/PopupWindow;
    //   490: invokevirtual getContentView : ()Landroid/view/View;
    //   493: checkcast android/view/ViewGroup
    //   496: astore #7
    //   498: aload_0
    //   499: getfield mPromptView : Landroid/view/View;
    //   502: astore #7
    //   504: aload #7
    //   506: ifnull -> 729
    //   509: aload #7
    //   511: invokevirtual getLayoutParams : ()Landroid/view/ViewGroup$LayoutParams;
    //   514: checkcast android/widget/LinearLayout$LayoutParams
    //   517: astore #8
    //   519: aload #7
    //   521: invokevirtual getMeasuredHeight : ()I
    //   524: istore_1
    //   525: aload #8
    //   527: getfield topMargin : I
    //   530: istore_2
    //   531: aload #8
    //   533: getfield bottomMargin : I
    //   536: iload_1
    //   537: iload_2
    //   538: iadd
    //   539: iadd
    //   540: istore_1
    //   541: goto -> 325
    //   544: aload_0
    //   545: getfield mTempRect : Landroid/graphics/Rect;
    //   548: invokevirtual setEmpty : ()V
    //   551: iconst_0
    //   552: istore_2
    //   553: goto -> 384
    //   556: iconst_0
    //   557: istore #5
    //   559: goto -> 399
    //   562: aload_0
    //   563: getfield mDropDownWidth : I
    //   566: tableswitch default -> 588, -2 -> 648, -1 -> 687
    //   588: aload_0
    //   589: getfield mDropDownWidth : I
    //   592: ldc_w 1073741824
    //   595: invokestatic makeMeasureSpec : (II)I
    //   598: istore_3
    //   599: aload_0
    //   600: getfield mDropDownList : Landroid/support/v7/widget/DropDownListView;
    //   603: iload_3
    //   604: iconst_0
    //   605: iconst_m1
    //   606: iload #4
    //   608: iload_1
    //   609: isub
    //   610: iconst_m1
    //   611: invokevirtual measureHeightOfChildrenCompat : (IIIII)I
    //   614: istore #4
    //   616: iload_1
    //   617: istore_3
    //   618: iload #4
    //   620: ifle -> 643
    //   623: iload_1
    //   624: aload_0
    //   625: getfield mDropDownList : Landroid/support/v7/widget/DropDownListView;
    //   628: invokevirtual getPaddingTop : ()I
    //   631: aload_0
    //   632: getfield mDropDownList : Landroid/support/v7/widget/DropDownListView;
    //   635: invokevirtual getPaddingBottom : ()I
    //   638: iadd
    //   639: iload_2
    //   640: iadd
    //   641: iadd
    //   642: istore_3
    //   643: iload #4
    //   645: iload_3
    //   646: iadd
    //   647: ireturn
    //   648: aload_0
    //   649: getfield mContext : Landroid/content/Context;
    //   652: invokevirtual getResources : ()Landroid/content/res/Resources;
    //   655: invokevirtual getDisplayMetrics : ()Landroid/util/DisplayMetrics;
    //   658: getfield widthPixels : I
    //   661: aload_0
    //   662: getfield mTempRect : Landroid/graphics/Rect;
    //   665: getfield left : I
    //   668: aload_0
    //   669: getfield mTempRect : Landroid/graphics/Rect;
    //   672: getfield right : I
    //   675: iadd
    //   676: isub
    //   677: ldc_w -2147483648
    //   680: invokestatic makeMeasureSpec : (II)I
    //   683: istore_3
    //   684: goto -> 599
    //   687: aload_0
    //   688: getfield mContext : Landroid/content/Context;
    //   691: invokevirtual getResources : ()Landroid/content/res/Resources;
    //   694: invokevirtual getDisplayMetrics : ()Landroid/util/DisplayMetrics;
    //   697: getfield widthPixels : I
    //   700: aload_0
    //   701: getfield mTempRect : Landroid/graphics/Rect;
    //   704: getfield left : I
    //   707: aload_0
    //   708: getfield mTempRect : Landroid/graphics/Rect;
    //   711: getfield right : I
    //   714: iadd
    //   715: isub
    //   716: ldc_w 1073741824
    //   719: invokestatic makeMeasureSpec : (II)I
    //   722: istore_3
    //   723: goto -> 599
    //   726: goto -> 384
    //   729: iconst_0
    //   730: istore_1
    //   731: goto -> 325
    //   734: iconst_0
    //   735: istore_1
    //   736: goto -> 316
  }
  
  private int getMaxAvailableHeight(View paramView, int paramInt, boolean paramBoolean) {
    if (sGetMaxAvailableHeightMethod != null)
      try {
        return ((Integer)sGetMaxAvailableHeightMethod.invoke(this.mPopup, new Object[] { paramView, Integer.valueOf(paramInt), Boolean.valueOf(paramBoolean) })).intValue();
      } catch (Exception exception) {
        Log.i("ListPopupWindow", "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version.");
      }  
    return this.mPopup.getMaxAvailableHeight(paramView, paramInt);
  }
  
  private static boolean isConfirmKey(int paramInt) {
    return (paramInt == 66 || paramInt == 23);
  }
  
  private void removePromptView() {
    if (this.mPromptView != null) {
      ViewParent viewParent = this.mPromptView.getParent();
      if (viewParent instanceof ViewGroup)
        ((ViewGroup)viewParent).removeView(this.mPromptView); 
    } 
  }
  
  private void setPopupClipToScreenEnabled(boolean paramBoolean) {
    if (sClipToWindowEnabledMethod != null)
      try {
        sClipToWindowEnabledMethod.invoke(this.mPopup, new Object[] { Boolean.valueOf(paramBoolean) });
        return;
      } catch (Exception exception) {
        Log.i("ListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
        return;
      }  
  }
  
  public void clearListSelection() {
    DropDownListView dropDownListView = this.mDropDownList;
    if (dropDownListView != null) {
      dropDownListView.setListSelectionHidden(true);
      dropDownListView.requestLayout();
    } 
  }
  
  public View.OnTouchListener createDragToOpenListener(View paramView) {
    return new ListPopupWindow$1(this, paramView);
  }
  
  @NonNull
  DropDownListView createDropDownListView(Context paramContext, boolean paramBoolean) {
    return new DropDownListView(paramContext, paramBoolean);
  }
  
  public void dismiss() {
    this.mPopup.dismiss();
    removePromptView();
    this.mPopup.setContentView(null);
    this.mDropDownList = null;
    this.mHandler.removeCallbacks(this.mResizePopupRunnable);
  }
  
  @Nullable
  public View getAnchorView() {
    return this.mDropDownAnchorView;
  }
  
  @StyleRes
  public int getAnimationStyle() {
    return this.mPopup.getAnimationStyle();
  }
  
  @Nullable
  public Drawable getBackground() {
    return this.mPopup.getBackground();
  }
  
  public int getHeight() {
    return this.mDropDownHeight;
  }
  
  public int getHorizontalOffset() {
    return this.mDropDownHorizontalOffset;
  }
  
  public int getInputMethodMode() {
    return this.mPopup.getInputMethodMode();
  }
  
  @Nullable
  public ListView getListView() {
    return this.mDropDownList;
  }
  
  public int getPromptPosition() {
    return this.mPromptPosition;
  }
  
  @Nullable
  public Object getSelectedItem() {
    return !isShowing() ? null : this.mDropDownList.getSelectedItem();
  }
  
  public long getSelectedItemId() {
    return !isShowing() ? Long.MIN_VALUE : this.mDropDownList.getSelectedItemId();
  }
  
  public int getSelectedItemPosition() {
    return !isShowing() ? -1 : this.mDropDownList.getSelectedItemPosition();
  }
  
  @Nullable
  public View getSelectedView() {
    return !isShowing() ? null : this.mDropDownList.getSelectedView();
  }
  
  public int getSoftInputMode() {
    return this.mPopup.getSoftInputMode();
  }
  
  public int getVerticalOffset() {
    return !this.mDropDownVerticalOffsetSet ? 0 : this.mDropDownVerticalOffset;
  }
  
  public int getWidth() {
    return this.mDropDownWidth;
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public boolean isDropDownAlwaysVisible() {
    return this.mDropDownAlwaysVisible;
  }
  
  public boolean isInputMethodNotNeeded() {
    return (this.mPopup.getInputMethodMode() == 2);
  }
  
  public boolean isModal() {
    return this.mModal;
  }
  
  public boolean isShowing() {
    return this.mPopup.isShowing();
  }
  
  public boolean onKeyDown(int paramInt, @NonNull KeyEvent paramKeyEvent) {
    int i;
    int j;
    boolean bool;
    int k;
    if (isShowing() && paramInt != 62 && (this.mDropDownList.getSelectedItemPosition() >= 0 || !isConfirmKey(paramInt))) {
      k = this.mDropDownList.getSelectedItemPosition();
      if (!this.mPopup.isAboveAnchor()) {
        bool = true;
      } else {
        bool = false;
      } 
      ListAdapter listAdapter = this.mAdapter;
      i = Integer.MAX_VALUE;
      j = Integer.MIN_VALUE;
      if (listAdapter != null) {
        boolean bool1 = listAdapter.areAllItemsEnabled();
        if (bool1) {
          i = 0;
        } else {
          i = this.mDropDownList.lookForSelectablePosition(0, true);
        } 
        if (bool1) {
          j = listAdapter.getCount() - 1;
        } else {
          j = this.mDropDownList.lookForSelectablePosition(listAdapter.getCount() - 1, false);
        } 
      } 
      if ((bool && paramInt == 19 && k <= i) || (!bool && paramInt == 20 && k >= j)) {
        clearListSelection();
        this.mPopup.setInputMethodMode(1);
        show();
      } 
      this.mDropDownList.setListSelectionHidden(false);
      if (this.mDropDownList.onKeyDown(paramInt, paramKeyEvent)) {
        this.mPopup.setInputMethodMode(2);
        this.mDropDownList.requestFocusFromTouch();
        show();
        switch (paramInt) {
          case 19:
          case 20:
          case 23:
          case 66:
            return true;
        } 
        return false;
      } 
    } else {
      return false;
    } 
    return (bool && paramInt == 20) ? ((k == j)) : ((!bool && paramInt == 19 && k == i));
  }
  
  public boolean onKeyPreIme(int paramInt, @NonNull KeyEvent paramKeyEvent) {
    if (paramInt == 4 && isShowing()) {
      KeyEvent.DispatcherState dispatcherState;
      View view = this.mDropDownAnchorView;
      if (paramKeyEvent.getAction() == 0 && paramKeyEvent.getRepeatCount() == 0) {
        dispatcherState = view.getKeyDispatcherState();
        if (dispatcherState != null)
          dispatcherState.startTracking(paramKeyEvent, this); 
        return true;
      } 
      if (paramKeyEvent.getAction() == 1) {
        dispatcherState = dispatcherState.getKeyDispatcherState();
        if (dispatcherState != null)
          dispatcherState.handleUpEvent(paramKeyEvent); 
        if (paramKeyEvent.isTracking() && !paramKeyEvent.isCanceled()) {
          dismiss();
          return true;
        } 
      } 
    } 
    return false;
  }
  
  public boolean onKeyUp(int paramInt, @NonNull KeyEvent paramKeyEvent) {
    if (isShowing() && this.mDropDownList.getSelectedItemPosition() >= 0) {
      boolean bool = this.mDropDownList.onKeyUp(paramInt, paramKeyEvent);
      if (bool && isConfirmKey(paramInt))
        dismiss(); 
      return bool;
    } 
    return false;
  }
  
  public boolean performItemClick(int paramInt) {
    if (isShowing()) {
      if (this.mItemClickListener != null) {
        DropDownListView dropDownListView = this.mDropDownList;
        View view = dropDownListView.getChildAt(paramInt - dropDownListView.getFirstVisiblePosition());
        ListAdapter listAdapter = dropDownListView.getAdapter();
        this.mItemClickListener.onItemClick((AdapterView)dropDownListView, view, paramInt, listAdapter.getItemId(paramInt));
      } 
      return true;
    } 
    return false;
  }
  
  public void postShow() {
    this.mHandler.post(this.mShowDropDownRunnable);
  }
  
  public void setAdapter(@Nullable ListAdapter paramListAdapter) {
    if (this.mObserver == null) {
      this.mObserver = new ListPopupWindow$PopupDataSetObserver(this);
    } else if (this.mAdapter != null) {
      this.mAdapter.unregisterDataSetObserver(this.mObserver);
    } 
    this.mAdapter = paramListAdapter;
    if (this.mAdapter != null)
      paramListAdapter.registerDataSetObserver(this.mObserver); 
    if (this.mDropDownList != null)
      this.mDropDownList.setAdapter(this.mAdapter); 
  }
  
  public void setAnchorView(@Nullable View paramView) {
    this.mDropDownAnchorView = paramView;
  }
  
  public void setAnimationStyle(@StyleRes int paramInt) {
    this.mPopup.setAnimationStyle(paramInt);
  }
  
  public void setBackgroundDrawable(@Nullable Drawable paramDrawable) {
    this.mPopup.setBackgroundDrawable(paramDrawable);
  }
  
  public void setContentWidth(int paramInt) {
    Drawable drawable = this.mPopup.getBackground();
    if (drawable != null) {
      drawable.getPadding(this.mTempRect);
      this.mDropDownWidth = this.mTempRect.left + this.mTempRect.right + paramInt;
      return;
    } 
    setWidth(paramInt);
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public void setDropDownAlwaysVisible(boolean paramBoolean) {
    this.mDropDownAlwaysVisible = paramBoolean;
  }
  
  public void setDropDownGravity(int paramInt) {
    this.mDropDownGravity = paramInt;
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public void setEpicenterBounds(Rect paramRect) {
    this.mEpicenterBounds = paramRect;
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public void setForceIgnoreOutsideTouch(boolean paramBoolean) {
    this.mForceIgnoreOutsideTouch = paramBoolean;
  }
  
  public void setHeight(int paramInt) {
    this.mDropDownHeight = paramInt;
  }
  
  public void setHorizontalOffset(int paramInt) {
    this.mDropDownHorizontalOffset = paramInt;
  }
  
  public void setInputMethodMode(int paramInt) {
    this.mPopup.setInputMethodMode(paramInt);
  }
  
  void setListItemExpandMax(int paramInt) {
    this.mListItemExpandMaximum = paramInt;
  }
  
  public void setListSelector(Drawable paramDrawable) {
    this.mDropDownListHighlight = paramDrawable;
  }
  
  public void setModal(boolean paramBoolean) {
    this.mModal = paramBoolean;
    this.mPopup.setFocusable(paramBoolean);
  }
  
  public void setOnDismissListener(@Nullable PopupWindow.OnDismissListener paramOnDismissListener) {
    this.mPopup.setOnDismissListener(paramOnDismissListener);
  }
  
  public void setOnItemClickListener(@Nullable AdapterView.OnItemClickListener paramOnItemClickListener) {
    this.mItemClickListener = paramOnItemClickListener;
  }
  
  public void setOnItemSelectedListener(@Nullable AdapterView.OnItemSelectedListener paramOnItemSelectedListener) {
    this.mItemSelectedListener = paramOnItemSelectedListener;
  }
  
  public void setPromptPosition(int paramInt) {
    this.mPromptPosition = paramInt;
  }
  
  public void setPromptView(@Nullable View paramView) {
    boolean bool = isShowing();
    if (bool)
      removePromptView(); 
    this.mPromptView = paramView;
    if (bool)
      show(); 
  }
  
  public void setSelection(int paramInt) {
    DropDownListView dropDownListView = this.mDropDownList;
    if (isShowing() && dropDownListView != null) {
      dropDownListView.setListSelectionHidden(false);
      dropDownListView.setSelection(paramInt);
      if (Build.VERSION.SDK_INT >= 11 && dropDownListView.getChoiceMode() != 0)
        dropDownListView.setItemChecked(paramInt, true); 
    } 
  }
  
  public void setSoftInputMode(int paramInt) {
    this.mPopup.setSoftInputMode(paramInt);
  }
  
  public void setVerticalOffset(int paramInt) {
    this.mDropDownVerticalOffset = paramInt;
    this.mDropDownVerticalOffsetSet = true;
  }
  
  public void setWidth(int paramInt) {
    this.mDropDownWidth = paramInt;
  }
  
  public void setWindowLayoutType(int paramInt) {
    this.mDropDownWindowLayoutType = paramInt;
  }
  
  public void show() {
    int j;
    boolean bool1 = true;
    boolean bool2 = false;
    byte b = -1;
    int i = buildDropDown();
    boolean bool = isInputMethodNotNeeded();
    PopupWindowCompat.setWindowLayoutType(this.mPopup, this.mDropDownWindowLayoutType);
    if (this.mPopup.isShowing()) {
      if (this.mDropDownWidth == -1) {
        j = -1;
      } else if (this.mDropDownWidth == -2) {
        j = getAnchorView().getWidth();
      } else {
        j = this.mDropDownWidth;
      } 
      if (this.mDropDownHeight == -1) {
        if (!bool)
          i = -1; 
        if (bool) {
          boolean bool3;
          PopupWindow popupWindow2 = this.mPopup;
          if (this.mDropDownWidth == -1) {
            bool3 = true;
          } else {
            bool3 = false;
          } 
          popupWindow2.setWidth(bool3);
          this.mPopup.setHeight(0);
        } else {
          boolean bool3;
          PopupWindow popupWindow2 = this.mPopup;
          if (this.mDropDownWidth == -1) {
            bool3 = true;
          } else {
            bool3 = false;
          } 
          popupWindow2.setWidth(bool3);
          this.mPopup.setHeight(-1);
        } 
      } else if (this.mDropDownHeight != -2) {
        i = this.mDropDownHeight;
      } 
      PopupWindow popupWindow1 = this.mPopup;
      bool1 = bool2;
      if (!this.mForceIgnoreOutsideTouch) {
        bool1 = bool2;
        if (!this.mDropDownAlwaysVisible)
          bool1 = true; 
      } 
      popupWindow1.setOutsideTouchable(bool1);
      popupWindow1 = this.mPopup;
      View view = getAnchorView();
      int m = this.mDropDownHorizontalOffset;
      int n = this.mDropDownVerticalOffset;
      int k = j;
      if (j < 0)
        k = -1; 
      if (i < 0)
        i = b; 
      popupWindow1.update(view, m, n, k, i);
      return;
    } 
    if (this.mDropDownWidth == -1) {
      j = -1;
    } else if (this.mDropDownWidth == -2) {
      j = getAnchorView().getWidth();
    } else {
      j = this.mDropDownWidth;
    } 
    if (this.mDropDownHeight == -1) {
      i = -1;
    } else if (this.mDropDownHeight != -2) {
      i = this.mDropDownHeight;
    } 
    this.mPopup.setWidth(j);
    this.mPopup.setHeight(i);
    setPopupClipToScreenEnabled(true);
    PopupWindow popupWindow = this.mPopup;
    if (this.mForceIgnoreOutsideTouch || this.mDropDownAlwaysVisible)
      bool1 = false; 
    popupWindow.setOutsideTouchable(bool1);
    this.mPopup.setTouchInterceptor(this.mTouchInterceptor);
    if (sSetEpicenterBoundsMethod != null)
      try {
        sSetEpicenterBoundsMethod.invoke(this.mPopup, new Object[] { this.mEpicenterBounds });
      } catch (Exception exception) {
        Log.e("ListPopupWindow", "Could not invoke setEpicenterBounds on PopupWindow", exception);
      }  
    PopupWindowCompat.showAsDropDown(this.mPopup, getAnchorView(), this.mDropDownHorizontalOffset, this.mDropDownVerticalOffset, this.mDropDownGravity);
    this.mDropDownList.setSelection(-1);
    if (!this.mModal || this.mDropDownList.isInTouchMode())
      clearListSelection(); 
    if (!this.mModal) {
      this.mHandler.post(this.mHideSelector);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ListPopupWindow.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */