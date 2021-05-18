package android.support.v7.widget;

import android.content.Context;
import android.os.Build;
import android.support.annotation.RestrictTo;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v7.appcompat.R;
import android.support.v7.view.ActionMode;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuPresenter;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import android.widget.TextView;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class ActionBarContextView extends AbsActionBarView {
  private static final String TAG = "ActionBarContextView";
  
  private View mClose;
  
  private int mCloseItemLayout;
  
  private View mCustomView;
  
  private CharSequence mSubtitle;
  
  private int mSubtitleStyleRes;
  
  private TextView mSubtitleView;
  
  private CharSequence mTitle;
  
  private LinearLayout mTitleLayout;
  
  private boolean mTitleOptional;
  
  private int mTitleStyleRes;
  
  private TextView mTitleView;
  
  public ActionBarContextView(Context paramContext) {
    this(paramContext, (AttributeSet)null);
  }
  
  public ActionBarContextView(Context paramContext, AttributeSet paramAttributeSet) {
    this(paramContext, paramAttributeSet, R.attr.actionModeStyle);
  }
  
  public ActionBarContextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    TintTypedArray tintTypedArray = TintTypedArray.obtainStyledAttributes(paramContext, paramAttributeSet, R.styleable.ActionMode, paramInt, 0);
    ViewCompat.setBackground((View)this, tintTypedArray.getDrawable(R.styleable.ActionMode_background));
    this.mTitleStyleRes = tintTypedArray.getResourceId(R.styleable.ActionMode_titleTextStyle, 0);
    this.mSubtitleStyleRes = tintTypedArray.getResourceId(R.styleable.ActionMode_subtitleTextStyle, 0);
    this.mContentHeight = tintTypedArray.getLayoutDimension(R.styleable.ActionMode_height, 0);
    this.mCloseItemLayout = tintTypedArray.getResourceId(R.styleable.ActionMode_closeItemLayout, R.layout.abc_action_mode_close_item_material);
    tintTypedArray.recycle();
  }
  
  private void initTitle() {
    // Byte code:
    //   0: bipush #8
    //   2: istore #4
    //   4: iconst_1
    //   5: istore_2
    //   6: aload_0
    //   7: getfield mTitleLayout : Landroid/widget/LinearLayout;
    //   10: ifnonnull -> 123
    //   13: aload_0
    //   14: invokevirtual getContext : ()Landroid/content/Context;
    //   17: invokestatic from : (Landroid/content/Context;)Landroid/view/LayoutInflater;
    //   20: getstatic android/support/v7/appcompat/R$layout.abc_action_bar_title_item : I
    //   23: aload_0
    //   24: invokevirtual inflate : (ILandroid/view/ViewGroup;)Landroid/view/View;
    //   27: pop
    //   28: aload_0
    //   29: aload_0
    //   30: aload_0
    //   31: invokevirtual getChildCount : ()I
    //   34: iconst_1
    //   35: isub
    //   36: invokevirtual getChildAt : (I)Landroid/view/View;
    //   39: checkcast android/widget/LinearLayout
    //   42: putfield mTitleLayout : Landroid/widget/LinearLayout;
    //   45: aload_0
    //   46: aload_0
    //   47: getfield mTitleLayout : Landroid/widget/LinearLayout;
    //   50: getstatic android/support/v7/appcompat/R$id.action_bar_title : I
    //   53: invokevirtual findViewById : (I)Landroid/view/View;
    //   56: checkcast android/widget/TextView
    //   59: putfield mTitleView : Landroid/widget/TextView;
    //   62: aload_0
    //   63: aload_0
    //   64: getfield mTitleLayout : Landroid/widget/LinearLayout;
    //   67: getstatic android/support/v7/appcompat/R$id.action_bar_subtitle : I
    //   70: invokevirtual findViewById : (I)Landroid/view/View;
    //   73: checkcast android/widget/TextView
    //   76: putfield mSubtitleView : Landroid/widget/TextView;
    //   79: aload_0
    //   80: getfield mTitleStyleRes : I
    //   83: ifeq -> 101
    //   86: aload_0
    //   87: getfield mTitleView : Landroid/widget/TextView;
    //   90: aload_0
    //   91: invokevirtual getContext : ()Landroid/content/Context;
    //   94: aload_0
    //   95: getfield mTitleStyleRes : I
    //   98: invokevirtual setTextAppearance : (Landroid/content/Context;I)V
    //   101: aload_0
    //   102: getfield mSubtitleStyleRes : I
    //   105: ifeq -> 123
    //   108: aload_0
    //   109: getfield mSubtitleView : Landroid/widget/TextView;
    //   112: aload_0
    //   113: invokevirtual getContext : ()Landroid/content/Context;
    //   116: aload_0
    //   117: getfield mSubtitleStyleRes : I
    //   120: invokevirtual setTextAppearance : (Landroid/content/Context;I)V
    //   123: aload_0
    //   124: getfield mTitleView : Landroid/widget/TextView;
    //   127: aload_0
    //   128: getfield mTitle : Ljava/lang/CharSequence;
    //   131: invokevirtual setText : (Ljava/lang/CharSequence;)V
    //   134: aload_0
    //   135: getfield mSubtitleView : Landroid/widget/TextView;
    //   138: aload_0
    //   139: getfield mSubtitle : Ljava/lang/CharSequence;
    //   142: invokevirtual setText : (Ljava/lang/CharSequence;)V
    //   145: aload_0
    //   146: getfield mTitle : Ljava/lang/CharSequence;
    //   149: invokestatic isEmpty : (Ljava/lang/CharSequence;)Z
    //   152: ifne -> 229
    //   155: iconst_1
    //   156: istore_1
    //   157: aload_0
    //   158: getfield mSubtitle : Ljava/lang/CharSequence;
    //   161: invokestatic isEmpty : (Ljava/lang/CharSequence;)Z
    //   164: ifne -> 234
    //   167: aload_0
    //   168: getfield mSubtitleView : Landroid/widget/TextView;
    //   171: astore #5
    //   173: iload_2
    //   174: ifeq -> 239
    //   177: iconst_0
    //   178: istore_3
    //   179: aload #5
    //   181: iload_3
    //   182: invokevirtual setVisibility : (I)V
    //   185: aload_0
    //   186: getfield mTitleLayout : Landroid/widget/LinearLayout;
    //   189: astore #5
    //   191: iload_1
    //   192: ifne -> 202
    //   195: iload #4
    //   197: istore_1
    //   198: iload_2
    //   199: ifeq -> 204
    //   202: iconst_0
    //   203: istore_1
    //   204: aload #5
    //   206: iload_1
    //   207: invokevirtual setVisibility : (I)V
    //   210: aload_0
    //   211: getfield mTitleLayout : Landroid/widget/LinearLayout;
    //   214: invokevirtual getParent : ()Landroid/view/ViewParent;
    //   217: ifnonnull -> 228
    //   220: aload_0
    //   221: aload_0
    //   222: getfield mTitleLayout : Landroid/widget/LinearLayout;
    //   225: invokevirtual addView : (Landroid/view/View;)V
    //   228: return
    //   229: iconst_0
    //   230: istore_1
    //   231: goto -> 157
    //   234: iconst_0
    //   235: istore_2
    //   236: goto -> 167
    //   239: bipush #8
    //   241: istore_3
    //   242: goto -> 179
  }
  
  public void closeMode() {
    if (this.mClose == null)
      killMode(); 
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
    return (ViewGroup.LayoutParams)new ViewGroup.MarginLayoutParams(-1, -2);
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet) {
    return (ViewGroup.LayoutParams)new ViewGroup.MarginLayoutParams(getContext(), paramAttributeSet);
  }
  
  public CharSequence getSubtitle() {
    return this.mSubtitle;
  }
  
  public CharSequence getTitle() {
    return this.mTitle;
  }
  
  public boolean hideOverflowMenu() {
    return (this.mActionMenuPresenter != null) ? this.mActionMenuPresenter.hideOverflowMenu() : false;
  }
  
  public void initForMode(ActionMode paramActionMode) {
    if (this.mClose == null) {
      this.mClose = LayoutInflater.from(getContext()).inflate(this.mCloseItemLayout, this, false);
      addView(this.mClose);
    } else if (this.mClose.getParent() == null) {
      addView(this.mClose);
    } 
    this.mClose.findViewById(R.id.action_mode_close_button).setOnClickListener(new ActionBarContextView$1(this, paramActionMode));
    MenuBuilder menuBuilder = (MenuBuilder)paramActionMode.getMenu();
    if (this.mActionMenuPresenter != null)
      this.mActionMenuPresenter.dismissPopupMenus(); 
    this.mActionMenuPresenter = new ActionMenuPresenter(getContext());
    this.mActionMenuPresenter.setReserveOverflow(true);
    ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
    menuBuilder.addMenuPresenter((MenuPresenter)this.mActionMenuPresenter, this.mPopupContext);
    this.mMenuView = (ActionMenuView)this.mActionMenuPresenter.getMenuView(this);
    ViewCompat.setBackground((View)this.mMenuView, null);
    addView((View)this.mMenuView, layoutParams);
  }
  
  public boolean isOverflowMenuShowing() {
    return (this.mActionMenuPresenter != null) ? this.mActionMenuPresenter.isOverflowMenuShowing() : false;
  }
  
  public boolean isTitleOptional() {
    return this.mTitleOptional;
  }
  
  public void killMode() {
    removeAllViews();
    this.mCustomView = null;
    this.mMenuView = null;
  }
  
  public void onDetachedFromWindow() {
    super.onDetachedFromWindow();
    if (this.mActionMenuPresenter != null) {
      this.mActionMenuPresenter.hideOverflowMenu();
      this.mActionMenuPresenter.hideSubMenus();
    } 
  }
  
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent) {
    if (Build.VERSION.SDK_INT >= 14) {
      if (paramAccessibilityEvent.getEventType() == 32) {
        paramAccessibilityEvent.setSource((View)this);
        paramAccessibilityEvent.setClassName(getClass().getName());
        paramAccessibilityEvent.setPackageName(getContext().getPackageName());
        paramAccessibilityEvent.setContentDescription(this.mTitle);
        return;
      } 
    } else {
      return;
    } 
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    int i;
    paramBoolean = ViewUtils.isLayoutRtl((View)this);
    if (paramBoolean) {
      i = paramInt3 - paramInt1 - getPaddingRight();
    } else {
      i = getPaddingLeft();
    } 
    int j = getPaddingTop();
    int k = paramInt4 - paramInt2 - getPaddingTop() - getPaddingBottom();
    if (this.mClose != null && this.mClose.getVisibility() != 8) {
      ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams)this.mClose.getLayoutParams();
      if (paramBoolean) {
        paramInt2 = marginLayoutParams.rightMargin;
      } else {
        paramInt2 = marginLayoutParams.leftMargin;
      } 
      if (paramBoolean) {
        paramInt4 = marginLayoutParams.leftMargin;
      } else {
        paramInt4 = marginLayoutParams.rightMargin;
      } 
      paramInt2 = next(i, paramInt2, paramBoolean);
      paramInt2 = next(positionChild(this.mClose, paramInt2, j, k, paramBoolean) + paramInt2, paramInt4, paramBoolean);
    } else {
      paramInt2 = i;
    } 
    paramInt4 = paramInt2;
    if (this.mTitleLayout != null) {
      paramInt4 = paramInt2;
      if (this.mCustomView == null) {
        paramInt4 = paramInt2;
        if (this.mTitleLayout.getVisibility() != 8)
          paramInt4 = paramInt2 + positionChild((View)this.mTitleLayout, paramInt2, j, k, paramBoolean); 
      } 
    } 
    if (this.mCustomView != null)
      positionChild(this.mCustomView, paramInt4, j, k, paramBoolean); 
    if (paramBoolean) {
      paramInt1 = getPaddingLeft();
    } else {
      paramInt1 = paramInt3 - paramInt1 - getPaddingRight();
    } 
    if (this.mMenuView != null) {
      ActionMenuView actionMenuView = this.mMenuView;
      if (!paramBoolean) {
        paramBoolean = true;
      } else {
        paramBoolean = false;
      } 
      positionChild((View)actionMenuView, paramInt1, j, k, paramBoolean);
    } 
  }
  
  protected void onMeasure(int paramInt1, int paramInt2) {
    int i;
    int k = 1073741824;
    boolean bool = false;
    if (View.MeasureSpec.getMode(paramInt1) != 1073741824)
      throw new IllegalStateException(getClass().getSimpleName() + " can only be used " + "with android:layout_width=\"match_parent\" (or fill_parent)"); 
    if (View.MeasureSpec.getMode(paramInt2) == 0)
      throw new IllegalStateException(getClass().getSimpleName() + " can only be used " + "with android:layout_height=\"wrap_content\""); 
    int n = View.MeasureSpec.getSize(paramInt1);
    if (this.mContentHeight > 0) {
      i = this.mContentHeight;
    } else {
      i = View.MeasureSpec.getSize(paramInt2);
    } 
    int i1 = getPaddingTop() + getPaddingBottom();
    paramInt1 = n - getPaddingLeft() - getPaddingRight();
    int m = i - i1;
    int j = View.MeasureSpec.makeMeasureSpec(m, -2147483648);
    paramInt2 = paramInt1;
    if (this.mClose != null) {
      paramInt1 = measureChildView(this.mClose, paramInt1, j, 0);
      ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams)this.mClose.getLayoutParams();
      paramInt2 = marginLayoutParams.leftMargin;
      paramInt2 = paramInt1 - marginLayoutParams.rightMargin + paramInt2;
    } 
    paramInt1 = paramInt2;
    if (this.mMenuView != null) {
      paramInt1 = paramInt2;
      if (this.mMenuView.getParent() == this)
        paramInt1 = measureChildView((View)this.mMenuView, paramInt2, j, 0); 
    } 
    paramInt2 = paramInt1;
    if (this.mTitleLayout != null) {
      paramInt2 = paramInt1;
      if (this.mCustomView == null)
        if (this.mTitleOptional) {
          paramInt2 = View.MeasureSpec.makeMeasureSpec(0, 0);
          this.mTitleLayout.measure(paramInt2, j);
          int i2 = this.mTitleLayout.getMeasuredWidth();
          if (i2 <= paramInt1) {
            j = 1;
          } else {
            j = 0;
          } 
          paramInt2 = paramInt1;
          if (j != 0)
            paramInt2 = paramInt1 - i2; 
          LinearLayout linearLayout = this.mTitleLayout;
          if (j != 0) {
            paramInt1 = 0;
          } else {
            paramInt1 = 8;
          } 
          linearLayout.setVisibility(paramInt1);
        } else {
          paramInt2 = measureChildView((View)this.mTitleLayout, paramInt1, j, 0);
        }  
    } 
    if (this.mCustomView != null) {
      ViewGroup.LayoutParams layoutParams = this.mCustomView.getLayoutParams();
      if (layoutParams.width != -2) {
        paramInt1 = 1073741824;
      } else {
        paramInt1 = Integer.MIN_VALUE;
      } 
      j = paramInt2;
      if (layoutParams.width >= 0)
        j = Math.min(layoutParams.width, paramInt2); 
      if (layoutParams.height != -2) {
        paramInt2 = k;
      } else {
        paramInt2 = Integer.MIN_VALUE;
      } 
      if (layoutParams.height >= 0) {
        k = Math.min(layoutParams.height, m);
      } else {
        k = m;
      } 
      this.mCustomView.measure(View.MeasureSpec.makeMeasureSpec(j, paramInt1), View.MeasureSpec.makeMeasureSpec(k, paramInt2));
    } 
    if (this.mContentHeight <= 0) {
      j = getChildCount();
      paramInt1 = 0;
      for (paramInt2 = bool; paramInt2 < j; paramInt2++) {
        i = getChildAt(paramInt2).getMeasuredHeight() + i1;
        if (i > paramInt1)
          paramInt1 = i; 
      } 
      setMeasuredDimension(n, paramInt1);
      return;
    } 
    setMeasuredDimension(n, i);
  }
  
  public void setContentHeight(int paramInt) {
    this.mContentHeight = paramInt;
  }
  
  public void setCustomView(View paramView) {
    if (this.mCustomView != null)
      removeView(this.mCustomView); 
    this.mCustomView = paramView;
    if (paramView != null && this.mTitleLayout != null) {
      removeView((View)this.mTitleLayout);
      this.mTitleLayout = null;
    } 
    if (paramView != null)
      addView(paramView); 
    requestLayout();
  }
  
  public void setSubtitle(CharSequence paramCharSequence) {
    this.mSubtitle = paramCharSequence;
    initTitle();
  }
  
  public void setTitle(CharSequence paramCharSequence) {
    this.mTitle = paramCharSequence;
    initTitle();
  }
  
  public void setTitleOptional(boolean paramBoolean) {
    if (paramBoolean != this.mTitleOptional)
      requestLayout(); 
    this.mTitleOptional = paramBoolean;
  }
  
  public boolean shouldDelayChildPressedState() {
    return false;
  }
  
  public boolean showOverflowMenu() {
    return (this.mActionMenuPresenter != null) ? this.mActionMenuPresenter.showOverflowMenu() : false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ActionBarContextView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */