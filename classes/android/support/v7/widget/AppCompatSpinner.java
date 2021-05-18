package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.DrawableRes;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.view.TintableBackgroundView;
import android.support.v7.appcompat.R;
import android.support.v7.content.res.AppCompatResources;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;

public class AppCompatSpinner extends Spinner implements TintableBackgroundView {
  private static final int[] ATTRS_ANDROID_SPINNERMODE = new int[] { 16843505 };
  
  private static final int MAX_ITEMS_MEASURED = 15;
  
  private static final int MODE_DIALOG = 0;
  
  private static final int MODE_DROPDOWN = 1;
  
  private static final int MODE_THEME = -1;
  
  private static final String TAG = "AppCompatSpinner";
  
  private AppCompatBackgroundHelper mBackgroundTintHelper;
  
  int mDropDownWidth;
  
  private ForwardingListener mForwardingListener;
  
  AppCompatSpinner$DropdownPopup mPopup;
  
  private Context mPopupContext;
  
  private boolean mPopupSet;
  
  private SpinnerAdapter mTempAdapter;
  
  final Rect mTempRect;
  
  public AppCompatSpinner(Context paramContext) {
    this(paramContext, (AttributeSet)null);
  }
  
  public AppCompatSpinner(Context paramContext, int paramInt) {
    this(paramContext, (AttributeSet)null, R.attr.spinnerStyle, paramInt);
  }
  
  public AppCompatSpinner(Context paramContext, AttributeSet paramAttributeSet) {
    this(paramContext, paramAttributeSet, R.attr.spinnerStyle);
  }
  
  public AppCompatSpinner(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    this(paramContext, paramAttributeSet, paramInt, -1);
  }
  
  public AppCompatSpinner(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2) {
    this(paramContext, paramAttributeSet, paramInt1, paramInt2, (Resources.Theme)null);
  }
  
  public AppCompatSpinner(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2, Resources.Theme paramTheme) {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: aload_2
    //   3: iload_3
    //   4: invokespecial <init> : (Landroid/content/Context;Landroid/util/AttributeSet;I)V
    //   7: aload_0
    //   8: new android/graphics/Rect
    //   11: dup
    //   12: invokespecial <init> : ()V
    //   15: putfield mTempRect : Landroid/graphics/Rect;
    //   18: aload_1
    //   19: aload_2
    //   20: getstatic android/support/v7/appcompat/R$styleable.Spinner : [I
    //   23: iload_3
    //   24: iconst_0
    //   25: invokestatic obtainStyledAttributes : (Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;
    //   28: astore #10
    //   30: aload_0
    //   31: new android/support/v7/widget/AppCompatBackgroundHelper
    //   34: dup
    //   35: aload_0
    //   36: invokespecial <init> : (Landroid/view/View;)V
    //   39: putfield mBackgroundTintHelper : Landroid/support/v7/widget/AppCompatBackgroundHelper;
    //   42: aload #5
    //   44: ifnull -> 329
    //   47: aload_0
    //   48: new android/support/v7/view/ContextThemeWrapper
    //   51: dup
    //   52: aload_1
    //   53: aload #5
    //   55: invokespecial <init> : (Landroid/content/Context;Landroid/content/res/Resources$Theme;)V
    //   58: putfield mPopupContext : Landroid/content/Context;
    //   61: aload_0
    //   62: getfield mPopupContext : Landroid/content/Context;
    //   65: ifnull -> 249
    //   68: iload #4
    //   70: istore #7
    //   72: iload #4
    //   74: iconst_m1
    //   75: if_icmpne -> 146
    //   78: getstatic android/os/Build$VERSION.SDK_INT : I
    //   81: bipush #11
    //   83: if_icmplt -> 444
    //   86: aload_1
    //   87: aload_2
    //   88: getstatic android/support/v7/widget/AppCompatSpinner.ATTRS_ANDROID_SPINNERMODE : [I
    //   91: iload_3
    //   92: iconst_0
    //   93: invokevirtual obtainStyledAttributes : (Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    //   96: astore #8
    //   98: iload #4
    //   100: istore #6
    //   102: aload #8
    //   104: astore #5
    //   106: aload #8
    //   108: iconst_0
    //   109: invokevirtual hasValue : (I)Z
    //   112: ifeq -> 128
    //   115: aload #8
    //   117: astore #5
    //   119: aload #8
    //   121: iconst_0
    //   122: iconst_0
    //   123: invokevirtual getInt : (II)I
    //   126: istore #6
    //   128: iload #6
    //   130: istore #7
    //   132: aload #8
    //   134: ifnull -> 146
    //   137: aload #8
    //   139: invokevirtual recycle : ()V
    //   142: iload #6
    //   144: istore #7
    //   146: iload #7
    //   148: iconst_1
    //   149: if_icmpne -> 249
    //   152: new android/support/v7/widget/AppCompatSpinner$DropdownPopup
    //   155: dup
    //   156: aload_0
    //   157: aload_0
    //   158: getfield mPopupContext : Landroid/content/Context;
    //   161: aload_2
    //   162: iload_3
    //   163: invokespecial <init> : (Landroid/support/v7/widget/AppCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    //   166: astore #5
    //   168: aload_0
    //   169: getfield mPopupContext : Landroid/content/Context;
    //   172: aload_2
    //   173: getstatic android/support/v7/appcompat/R$styleable.Spinner : [I
    //   176: iload_3
    //   177: iconst_0
    //   178: invokestatic obtainStyledAttributes : (Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;
    //   181: astore #8
    //   183: aload_0
    //   184: aload #8
    //   186: getstatic android/support/v7/appcompat/R$styleable.Spinner_android_dropDownWidth : I
    //   189: bipush #-2
    //   191: invokevirtual getLayoutDimension : (II)I
    //   194: putfield mDropDownWidth : I
    //   197: aload #5
    //   199: aload #8
    //   201: getstatic android/support/v7/appcompat/R$styleable.Spinner_android_popupBackground : I
    //   204: invokevirtual getDrawable : (I)Landroid/graphics/drawable/Drawable;
    //   207: invokevirtual setBackgroundDrawable : (Landroid/graphics/drawable/Drawable;)V
    //   210: aload #5
    //   212: aload #10
    //   214: getstatic android/support/v7/appcompat/R$styleable.Spinner_android_prompt : I
    //   217: invokevirtual getString : (I)Ljava/lang/String;
    //   220: invokevirtual setPromptText : (Ljava/lang/CharSequence;)V
    //   223: aload #8
    //   225: invokevirtual recycle : ()V
    //   228: aload_0
    //   229: aload #5
    //   231: putfield mPopup : Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
    //   234: aload_0
    //   235: new android/support/v7/widget/AppCompatSpinner$1
    //   238: dup
    //   239: aload_0
    //   240: aload_0
    //   241: aload #5
    //   243: invokespecial <init> : (Landroid/support/v7/widget/AppCompatSpinner;Landroid/view/View;Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;)V
    //   246: putfield mForwardingListener : Landroid/support/v7/widget/ForwardingListener;
    //   249: aload #10
    //   251: getstatic android/support/v7/appcompat/R$styleable.Spinner_android_entries : I
    //   254: invokevirtual getTextArray : (I)[Ljava/lang/CharSequence;
    //   257: astore #5
    //   259: aload #5
    //   261: ifnull -> 289
    //   264: new android/widget/ArrayAdapter
    //   267: dup
    //   268: aload_1
    //   269: ldc 17367048
    //   271: aload #5
    //   273: invokespecial <init> : (Landroid/content/Context;I[Ljava/lang/Object;)V
    //   276: astore_1
    //   277: aload_1
    //   278: getstatic android/support/v7/appcompat/R$layout.support_simple_spinner_dropdown_item : I
    //   281: invokevirtual setDropDownViewResource : (I)V
    //   284: aload_0
    //   285: aload_1
    //   286: invokevirtual setAdapter : (Landroid/widget/SpinnerAdapter;)V
    //   289: aload #10
    //   291: invokevirtual recycle : ()V
    //   294: aload_0
    //   295: iconst_1
    //   296: putfield mPopupSet : Z
    //   299: aload_0
    //   300: getfield mTempAdapter : Landroid/widget/SpinnerAdapter;
    //   303: ifnull -> 319
    //   306: aload_0
    //   307: aload_0
    //   308: getfield mTempAdapter : Landroid/widget/SpinnerAdapter;
    //   311: invokevirtual setAdapter : (Landroid/widget/SpinnerAdapter;)V
    //   314: aload_0
    //   315: aconst_null
    //   316: putfield mTempAdapter : Landroid/widget/SpinnerAdapter;
    //   319: aload_0
    //   320: getfield mBackgroundTintHelper : Landroid/support/v7/widget/AppCompatBackgroundHelper;
    //   323: aload_2
    //   324: iload_3
    //   325: invokevirtual loadFromAttributes : (Landroid/util/AttributeSet;I)V
    //   328: return
    //   329: aload #10
    //   331: getstatic android/support/v7/appcompat/R$styleable.Spinner_popupTheme : I
    //   334: iconst_0
    //   335: invokevirtual getResourceId : (II)I
    //   338: istore #6
    //   340: iload #6
    //   342: ifeq -> 362
    //   345: aload_0
    //   346: new android/support/v7/view/ContextThemeWrapper
    //   349: dup
    //   350: aload_1
    //   351: iload #6
    //   353: invokespecial <init> : (Landroid/content/Context;I)V
    //   356: putfield mPopupContext : Landroid/content/Context;
    //   359: goto -> 61
    //   362: getstatic android/os/Build$VERSION.SDK_INT : I
    //   365: bipush #23
    //   367: if_icmpge -> 382
    //   370: aload_1
    //   371: astore #5
    //   373: aload_0
    //   374: aload #5
    //   376: putfield mPopupContext : Landroid/content/Context;
    //   379: goto -> 61
    //   382: aconst_null
    //   383: astore #5
    //   385: goto -> 373
    //   388: astore #9
    //   390: aconst_null
    //   391: astore #8
    //   393: aload #8
    //   395: astore #5
    //   397: ldc 'AppCompatSpinner'
    //   399: ldc 'Could not read android:spinnerMode'
    //   401: aload #9
    //   403: invokestatic i : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   406: pop
    //   407: iload #4
    //   409: istore #7
    //   411: aload #8
    //   413: ifnull -> 146
    //   416: aload #8
    //   418: invokevirtual recycle : ()V
    //   421: iload #4
    //   423: istore #7
    //   425: goto -> 146
    //   428: astore_1
    //   429: aconst_null
    //   430: astore #5
    //   432: aload #5
    //   434: ifnull -> 442
    //   437: aload #5
    //   439: invokevirtual recycle : ()V
    //   442: aload_1
    //   443: athrow
    //   444: iconst_1
    //   445: istore #7
    //   447: goto -> 146
    //   450: astore_1
    //   451: goto -> 432
    //   454: astore #9
    //   456: goto -> 393
    // Exception table:
    //   from	to	target	type
    //   86	98	388	java/lang/Exception
    //   86	98	428	finally
    //   106	115	454	java/lang/Exception
    //   106	115	450	finally
    //   119	128	454	java/lang/Exception
    //   119	128	450	finally
    //   397	407	450	finally
  }
  
  int compatMeasureContentWidth(SpinnerAdapter paramSpinnerAdapter, Drawable paramDrawable) {
    if (paramSpinnerAdapter == null)
      return 0; 
    int m = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
    int n = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
    int i = Math.max(0, getSelectedItemPosition());
    int i1 = Math.min(paramSpinnerAdapter.getCount(), i + 15);
    int j = Math.max(0, i - 15 - i1 - i);
    View view = null;
    int k = 0;
    i = 0;
    while (j < i1) {
      int i2 = paramSpinnerAdapter.getItemViewType(j);
      if (i2 != i) {
        view = null;
        i = i2;
      } 
      view = paramSpinnerAdapter.getView(j, view, (ViewGroup)this);
      if (view.getLayoutParams() == null)
        view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2)); 
      view.measure(m, n);
      k = Math.max(k, view.getMeasuredWidth());
      j++;
    } 
    if (paramDrawable != null) {
      paramDrawable.getPadding(this.mTempRect);
      return this.mTempRect.left + this.mTempRect.right + k;
    } 
    return k;
  }
  
  protected void drawableStateChanged() {
    super.drawableStateChanged();
    if (this.mBackgroundTintHelper != null)
      this.mBackgroundTintHelper.applySupportBackgroundTint(); 
  }
  
  public int getDropDownHorizontalOffset() {
    return (this.mPopup != null) ? this.mPopup.getHorizontalOffset() : ((Build.VERSION.SDK_INT >= 16) ? super.getDropDownHorizontalOffset() : 0);
  }
  
  public int getDropDownVerticalOffset() {
    return (this.mPopup != null) ? this.mPopup.getVerticalOffset() : ((Build.VERSION.SDK_INT >= 16) ? super.getDropDownVerticalOffset() : 0);
  }
  
  public int getDropDownWidth() {
    return (this.mPopup != null) ? this.mDropDownWidth : ((Build.VERSION.SDK_INT >= 16) ? super.getDropDownWidth() : 0);
  }
  
  public Drawable getPopupBackground() {
    return (this.mPopup != null) ? this.mPopup.getBackground() : ((Build.VERSION.SDK_INT >= 16) ? super.getPopupBackground() : null);
  }
  
  public Context getPopupContext() {
    return (this.mPopup != null) ? this.mPopupContext : ((Build.VERSION.SDK_INT >= 23) ? super.getPopupContext() : null);
  }
  
  public CharSequence getPrompt() {
    return (this.mPopup != null) ? this.mPopup.getHintText() : super.getPrompt();
  }
  
  @Nullable
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public ColorStateList getSupportBackgroundTintList() {
    return (this.mBackgroundTintHelper != null) ? this.mBackgroundTintHelper.getSupportBackgroundTintList() : null;
  }
  
  @Nullable
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public PorterDuff.Mode getSupportBackgroundTintMode() {
    return (this.mBackgroundTintHelper != null) ? this.mBackgroundTintHelper.getSupportBackgroundTintMode() : null;
  }
  
  protected void onDetachedFromWindow() {
    super.onDetachedFromWindow();
    if (this.mPopup != null && this.mPopup.isShowing())
      this.mPopup.dismiss(); 
  }
  
  protected void onMeasure(int paramInt1, int paramInt2) {
    super.onMeasure(paramInt1, paramInt2);
    if (this.mPopup != null && View.MeasureSpec.getMode(paramInt1) == Integer.MIN_VALUE)
      setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), compatMeasureContentWidth(getAdapter(), getBackground())), View.MeasureSpec.getSize(paramInt1)), getMeasuredHeight()); 
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent) {
    return (this.mForwardingListener != null && this.mForwardingListener.onTouch((View)this, paramMotionEvent)) ? true : super.onTouchEvent(paramMotionEvent);
  }
  
  public boolean performClick() {
    if (this.mPopup != null) {
      if (!this.mPopup.isShowing())
        this.mPopup.show(); 
      return true;
    } 
    return super.performClick();
  }
  
  public void setAdapter(SpinnerAdapter paramSpinnerAdapter) {
    if (!this.mPopupSet) {
      this.mTempAdapter = paramSpinnerAdapter;
      return;
    } 
    super.setAdapter(paramSpinnerAdapter);
    if (this.mPopup != null) {
      Context context;
      if (this.mPopupContext == null) {
        context = getContext();
      } else {
        context = this.mPopupContext;
      } 
      this.mPopup.setAdapter(new AppCompatSpinner$DropDownAdapter(paramSpinnerAdapter, context.getTheme()));
      return;
    } 
  }
  
  public void setBackgroundDrawable(Drawable paramDrawable) {
    super.setBackgroundDrawable(paramDrawable);
    if (this.mBackgroundTintHelper != null)
      this.mBackgroundTintHelper.onSetBackgroundDrawable(paramDrawable); 
  }
  
  public void setBackgroundResource(@DrawableRes int paramInt) {
    super.setBackgroundResource(paramInt);
    if (this.mBackgroundTintHelper != null)
      this.mBackgroundTintHelper.onSetBackgroundResource(paramInt); 
  }
  
  public void setDropDownHorizontalOffset(int paramInt) {
    if (this.mPopup != null) {
      this.mPopup.setHorizontalOffset(paramInt);
      return;
    } 
    if (Build.VERSION.SDK_INT >= 16) {
      super.setDropDownHorizontalOffset(paramInt);
      return;
    } 
  }
  
  public void setDropDownVerticalOffset(int paramInt) {
    if (this.mPopup != null) {
      this.mPopup.setVerticalOffset(paramInt);
      return;
    } 
    if (Build.VERSION.SDK_INT >= 16) {
      super.setDropDownVerticalOffset(paramInt);
      return;
    } 
  }
  
  public void setDropDownWidth(int paramInt) {
    if (this.mPopup != null) {
      this.mDropDownWidth = paramInt;
      return;
    } 
    if (Build.VERSION.SDK_INT >= 16) {
      super.setDropDownWidth(paramInt);
      return;
    } 
  }
  
  public void setPopupBackgroundDrawable(Drawable paramDrawable) {
    if (this.mPopup != null) {
      this.mPopup.setBackgroundDrawable(paramDrawable);
      return;
    } 
    if (Build.VERSION.SDK_INT >= 16) {
      super.setPopupBackgroundDrawable(paramDrawable);
      return;
    } 
  }
  
  public void setPopupBackgroundResource(@DrawableRes int paramInt) {
    setPopupBackgroundDrawable(AppCompatResources.getDrawable(getPopupContext(), paramInt));
  }
  
  public void setPrompt(CharSequence paramCharSequence) {
    if (this.mPopup != null) {
      this.mPopup.setPromptText(paramCharSequence);
      return;
    } 
    super.setPrompt(paramCharSequence);
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public void setSupportBackgroundTintList(@Nullable ColorStateList paramColorStateList) {
    if (this.mBackgroundTintHelper != null)
      this.mBackgroundTintHelper.setSupportBackgroundTintList(paramColorStateList); 
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode paramMode) {
    if (this.mBackgroundTintHelper != null)
      this.mBackgroundTintHelper.setSupportBackgroundTintMode(paramMode); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\AppCompatSpinner.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */