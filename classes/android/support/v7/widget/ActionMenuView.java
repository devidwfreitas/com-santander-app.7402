package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.StyleRes;
import android.support.v7.view.menu.ActionMenuItemView;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.view.menu.MenuPresenter;
import android.support.v7.view.menu.MenuView;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

public class ActionMenuView extends LinearLayoutCompat implements MenuBuilder.ItemInvoker, MenuView {
  static final int GENERATED_ITEM_PADDING = 4;
  
  static final int MIN_CELL_SIZE = 56;
  
  private static final String TAG = "ActionMenuView";
  
  private MenuPresenter.Callback mActionMenuPresenterCallback;
  
  private boolean mFormatItems;
  
  private int mFormatItemsWidth;
  
  private int mGeneratedItemPadding;
  
  private MenuBuilder mMenu;
  
  MenuBuilder.Callback mMenuBuilderCallback;
  
  private int mMinCellSize;
  
  ActionMenuView$OnMenuItemClickListener mOnMenuItemClickListener;
  
  private Context mPopupContext;
  
  private int mPopupTheme;
  
  private ActionMenuPresenter mPresenter;
  
  private boolean mReserveOverflow;
  
  public ActionMenuView(Context paramContext) {
    this(paramContext, (AttributeSet)null);
  }
  
  public ActionMenuView(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    setBaselineAligned(false);
    float f = (paramContext.getResources().getDisplayMetrics()).density;
    this.mMinCellSize = (int)(56.0F * f);
    this.mGeneratedItemPadding = (int)(f * 4.0F);
    this.mPopupContext = paramContext;
    this.mPopupTheme = 0;
  }
  
  static int measureChildForCells(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    ActionMenuItemView actionMenuItemView;
    boolean bool2 = false;
    ActionMenuView$LayoutParams actionMenuView$LayoutParams = (ActionMenuView$LayoutParams)paramView.getLayoutParams();
    int i = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(paramInt3) - paramInt4, View.MeasureSpec.getMode(paramInt3));
    if (paramView instanceof ActionMenuItemView) {
      actionMenuItemView = (ActionMenuItemView)paramView;
    } else {
      actionMenuItemView = null;
    } 
    if (actionMenuItemView != null && actionMenuItemView.hasText()) {
      paramInt4 = 1;
    } else {
      paramInt4 = 0;
    } 
    if (paramInt2 > 0 && (paramInt4 == 0 || paramInt2 >= 2)) {
      paramView.measure(View.MeasureSpec.makeMeasureSpec(paramInt1 * paramInt2, -2147483648), i);
      int j = paramView.getMeasuredWidth();
      paramInt3 = j / paramInt1;
      paramInt2 = paramInt3;
      if (j % paramInt1 != 0)
        paramInt2 = paramInt3 + 1; 
      paramInt3 = paramInt2;
      if (paramInt4 != 0) {
        paramInt3 = paramInt2;
        if (paramInt2 < 2)
          paramInt3 = 2; 
      } 
    } else {
      paramInt3 = 0;
    } 
    boolean bool1 = bool2;
    if (!actionMenuView$LayoutParams.isOverflowButton) {
      bool1 = bool2;
      if (paramInt4 != 0)
        bool1 = true; 
    } 
    actionMenuView$LayoutParams.expandable = bool1;
    actionMenuView$LayoutParams.cellsUsed = paramInt3;
    paramView.measure(View.MeasureSpec.makeMeasureSpec(paramInt3 * paramInt1, 1073741824), i);
    return paramInt3;
  }
  
  private void onMeasureExactFormat(int paramInt1, int paramInt2) {
    int i5 = View.MeasureSpec.getMode(paramInt2);
    paramInt1 = View.MeasureSpec.getSize(paramInt1);
    int i4 = View.MeasureSpec.getSize(paramInt2);
    int i = getPaddingLeft();
    int j = getPaddingRight();
    int i3 = getPaddingTop() + getPaddingBottom();
    int i6 = getChildMeasureSpec(paramInt2, i3, -2);
    int i7 = paramInt1 - i + j;
    paramInt1 = i7 / this.mMinCellSize;
    paramInt2 = this.mMinCellSize;
    if (paramInt1 == 0) {
      setMeasuredDimension(i7, 0);
      return;
    } 
    int i8 = this.mMinCellSize + i7 % paramInt2 / paramInt1;
    i = 0;
    int n = 0;
    int m = 0;
    int i1 = 0;
    int k = 0;
    long l = 0L;
    int i9 = getChildCount();
    int i2 = 0;
    while (true) {
      if (i2 < i9) {
        View view = getChildAt(i2);
        if (view.getVisibility() == 8) {
          paramInt2 = n;
          j = paramInt1;
          paramInt1 = i1;
        } else {
          boolean bool = view instanceof ActionMenuItemView;
          i1++;
          if (bool)
            view.setPadding(this.mGeneratedItemPadding, 0, this.mGeneratedItemPadding, 0); 
          ActionMenuView$LayoutParams actionMenuView$LayoutParams = (ActionMenuView$LayoutParams)view.getLayoutParams();
          actionMenuView$LayoutParams.expanded = false;
          actionMenuView$LayoutParams.extraPixels = 0;
          actionMenuView$LayoutParams.cellsUsed = 0;
          actionMenuView$LayoutParams.expandable = false;
          actionMenuView$LayoutParams.leftMargin = 0;
          actionMenuView$LayoutParams.rightMargin = 0;
          if (bool && ((ActionMenuItemView)view).hasText()) {
            bool = true;
          } else {
            bool = false;
          } 
          actionMenuView$LayoutParams.preventEdgeOffset = bool;
          if (actionMenuView$LayoutParams.isOverflowButton) {
            paramInt2 = 1;
          } else {
            paramInt2 = paramInt1;
          } 
          int i11 = measureChildForCells(view, i8, paramInt2, i6, i3);
          n = Math.max(n, i11);
          if (actionMenuView$LayoutParams.expandable) {
            paramInt2 = m + 1;
          } else {
            paramInt2 = m;
          } 
          if (actionMenuView$LayoutParams.isOverflowButton) {
            j = 1;
          } else {
            j = k;
          } 
          int i10 = paramInt1 - i11;
          i = Math.max(i, view.getMeasuredHeight());
          if (i11 == 1) {
            long l1 = (1 << i2);
            m = paramInt2;
            l = l1 | l;
            paramInt2 = n;
            paramInt1 = i1;
            k = j;
            j = i10;
          } else {
            paramInt1 = i1;
            k = n;
            n = i10;
            m = paramInt2;
            paramInt2 = k;
            k = j;
            j = n;
          } 
        } 
        i2++;
        i1 = paramInt1;
        paramInt1 = j;
        n = paramInt2;
        continue;
      } 
      if (k != 0 && i1 == 2) {
        boolean bool = true;
      } else {
        boolean bool = false;
      } 
      j = 0;
      i2 = paramInt1;
      while (true) {
        if (m > 0) {
          if (i2 > 0) {
            paramInt1 = Integer.MAX_VALUE;
            long l1 = 0L;
            paramInt2 = 0;
            for (i3 = 0;; i3 = i10) {
              i10 = i3 + 1;
              i3 = paramInt2;
              paramInt2 = paramInt1;
              paramInt1 = i3;
            } 
            break;
          } 
          continue;
        } 
        continue;
      } 
      break;
    } 
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams) {
    return (paramLayoutParams != null && paramLayoutParams instanceof ActionMenuView$LayoutParams);
  }
  
  public void dismissPopupMenus() {
    if (this.mPresenter != null)
      this.mPresenter.dismissPopupMenus(); 
  }
  
  public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent) {
    return false;
  }
  
  protected ActionMenuView$LayoutParams generateDefaultLayoutParams() {
    ActionMenuView$LayoutParams actionMenuView$LayoutParams = new ActionMenuView$LayoutParams(-2, -2);
    actionMenuView$LayoutParams.gravity = 16;
    return actionMenuView$LayoutParams;
  }
  
  public ActionMenuView$LayoutParams generateLayoutParams(AttributeSet paramAttributeSet) {
    return new ActionMenuView$LayoutParams(getContext(), paramAttributeSet);
  }
  
  protected ActionMenuView$LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams) {
    if (paramLayoutParams != null) {
      ActionMenuView$LayoutParams actionMenuView$LayoutParams;
      if (paramLayoutParams instanceof ActionMenuView$LayoutParams) {
        actionMenuView$LayoutParams = new ActionMenuView$LayoutParams((ActionMenuView$LayoutParams)paramLayoutParams);
      } else {
        actionMenuView$LayoutParams = new ActionMenuView$LayoutParams((ViewGroup.LayoutParams)actionMenuView$LayoutParams);
      } 
      if (actionMenuView$LayoutParams.gravity <= 0)
        actionMenuView$LayoutParams.gravity = 16; 
      return actionMenuView$LayoutParams;
    } 
    return generateDefaultLayoutParams();
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public ActionMenuView$LayoutParams generateOverflowButtonLayoutParams() {
    ActionMenuView$LayoutParams actionMenuView$LayoutParams = generateDefaultLayoutParams();
    actionMenuView$LayoutParams.isOverflowButton = true;
    return actionMenuView$LayoutParams;
  }
  
  public Menu getMenu() {
    if (this.mMenu == null) {
      MenuPresenter.Callback callback;
      Context context = getContext();
      this.mMenu = new MenuBuilder(context);
      this.mMenu.setCallback(new ActionMenuView$MenuBuilderCallback(this));
      this.mPresenter = new ActionMenuPresenter(context);
      this.mPresenter.setReserveOverflow(true);
      ActionMenuPresenter actionMenuPresenter = this.mPresenter;
      if (this.mActionMenuPresenterCallback != null) {
        callback = this.mActionMenuPresenterCallback;
      } else {
        callback = new ActionMenuView$ActionMenuPresenterCallback(this);
      } 
      actionMenuPresenter.setCallback(callback);
      this.mMenu.addMenuPresenter((MenuPresenter)this.mPresenter, this.mPopupContext);
      this.mPresenter.setMenuView(this);
    } 
    return (Menu)this.mMenu;
  }
  
  @Nullable
  public Drawable getOverflowIcon() {
    getMenu();
    return this.mPresenter.getOverflowIcon();
  }
  
  public int getPopupTheme() {
    return this.mPopupTheme;
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public int getWindowAnimations() {
    return 0;
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  protected boolean hasSupportDividerBeforeChildAt(int paramInt) {
    byte b = 0;
    if (paramInt == 0)
      return false; 
    View view1 = getChildAt(paramInt - 1);
    View view2 = getChildAt(paramInt);
    int i = b;
    if (paramInt < getChildCount()) {
      i = b;
      if (view1 instanceof ActionMenuView$ActionMenuChildView)
        i = false | ((ActionMenuView$ActionMenuChildView)view1).needsDividerAfter(); 
    } 
    return (paramInt > 0 && view2 instanceof ActionMenuView$ActionMenuChildView) ? (((ActionMenuView$ActionMenuChildView)view2).needsDividerBefore() | i) : i;
  }
  
  public boolean hideOverflowMenu() {
    return (this.mPresenter != null && this.mPresenter.hideOverflowMenu());
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public void initialize(MenuBuilder paramMenuBuilder) {
    this.mMenu = paramMenuBuilder;
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public boolean invokeItem(MenuItemImpl paramMenuItemImpl) {
    return this.mMenu.performItemAction((MenuItem)paramMenuItemImpl, 0);
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public boolean isOverflowMenuShowPending() {
    return (this.mPresenter != null && this.mPresenter.isOverflowMenuShowPending());
  }
  
  public boolean isOverflowMenuShowing() {
    return (this.mPresenter != null && this.mPresenter.isOverflowMenuShowing());
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public boolean isOverflowReserved() {
    return this.mReserveOverflow;
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration) {
    super.onConfigurationChanged(paramConfiguration);
    if (this.mPresenter != null) {
      this.mPresenter.updateMenuView(false);
      if (this.mPresenter.isOverflowMenuShowing()) {
        this.mPresenter.hideOverflowMenu();
        this.mPresenter.showOverflowMenu();
      } 
    } 
  }
  
  public void onDetachedFromWindow() {
    super.onDetachedFromWindow();
    dismissPopupMenus();
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    if (!this.mFormatItems) {
      super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
      return;
    } 
    int n = getChildCount();
    int m = (paramInt4 - paramInt2) / 2;
    int i1 = getDividerWidth();
    paramInt4 = 0;
    paramInt2 = 0;
    int j = paramInt3 - paramInt1 - getPaddingRight() - getPaddingLeft();
    int i = 0;
    paramBoolean = ViewUtils.isLayoutRtl((View)this);
    for (int k = 0; k < n; k = i3) {
      View view = getChildAt(k);
      if (view.getVisibility() == 8) {
        int i4 = i;
        int i5 = j;
        j = paramInt4;
        i = paramInt2;
        paramInt4 = i5;
        paramInt2 = i4;
      } else {
        ActionMenuView$LayoutParams actionMenuView$LayoutParams = (ActionMenuView$LayoutParams)view.getLayoutParams();
        if (actionMenuView$LayoutParams.isOverflowButton) {
          int i4 = view.getMeasuredWidth();
          i = i4;
          if (hasSupportDividerBeforeChildAt(k))
            i = i4 + i1; 
          int i6 = view.getMeasuredHeight();
          if (paramBoolean) {
            i4 = getPaddingLeft();
            i4 = actionMenuView$LayoutParams.leftMargin + i4;
            i5 = i4 + i;
          } else {
            i5 = getWidth() - getPaddingRight() - actionMenuView$LayoutParams.rightMargin;
            i4 = i5 - i;
          } 
          int i7 = m - i6 / 2;
          view.layout(i4, i7, i5, i6 + i7);
          i4 = j - i;
          int i5 = 1;
          i = paramInt2;
          j = paramInt4;
          paramInt2 = i5;
          paramInt4 = i4;
        } else {
          int i5 = view.getMeasuredWidth() + actionMenuView$LayoutParams.leftMargin + actionMenuView$LayoutParams.rightMargin;
          int i4 = paramInt4 + i5;
          paramInt4 = i4;
          if (hasSupportDividerBeforeChildAt(k))
            paramInt4 = i4 + i1; 
          i4 = j - i5;
          i5 = paramInt2 + 1;
          j = paramInt4;
          paramInt2 = i;
          paramInt4 = i4;
          i = i5;
        } 
      } 
      int i3 = k + 1;
      k = j;
      int i2 = i;
      i = paramInt2;
      j = paramInt4;
      paramInt2 = i2;
      paramInt4 = k;
    } 
    if (n == 1 && i == 0) {
      View view = getChildAt(0);
      paramInt2 = view.getMeasuredWidth();
      paramInt4 = view.getMeasuredHeight();
      paramInt1 = (paramInt3 - paramInt1) / 2 - paramInt2 / 2;
      paramInt3 = m - paramInt4 / 2;
      view.layout(paramInt1, paramInt3, paramInt2 + paramInt1, paramInt4 + paramInt3);
      return;
    } 
    if (i != 0) {
      paramInt1 = 0;
    } else {
      paramInt1 = 1;
    } 
    paramInt1 = paramInt2 - paramInt1;
    if (paramInt1 > 0) {
      paramInt1 = j / paramInt1;
    } else {
      paramInt1 = 0;
    } 
    paramInt3 = Math.max(0, paramInt1);
    if (paramBoolean) {
      paramInt1 = getWidth() - getPaddingRight();
      paramInt2 = 0;
      while (true) {
        if (paramInt2 < n) {
          View view = getChildAt(paramInt2);
          ActionMenuView$LayoutParams actionMenuView$LayoutParams = (ActionMenuView$LayoutParams)view.getLayoutParams();
          if (view.getVisibility() != 8 && !actionMenuView$LayoutParams.isOverflowButton) {
            paramInt1 -= actionMenuView$LayoutParams.rightMargin;
            paramInt4 = view.getMeasuredWidth();
            i = view.getMeasuredHeight();
            j = m - i / 2;
            view.layout(paramInt1 - paramInt4, j, paramInt1, i + j);
            paramInt1 -= actionMenuView$LayoutParams.leftMargin + paramInt4 + paramInt3;
          } 
          paramInt2++;
          continue;
        } 
        return;
      } 
    } 
    paramInt1 = getPaddingLeft();
    paramInt2 = 0;
    while (true) {
      if (paramInt2 < n) {
        View view = getChildAt(paramInt2);
        ActionMenuView$LayoutParams actionMenuView$LayoutParams = (ActionMenuView$LayoutParams)view.getLayoutParams();
        if (view.getVisibility() != 8 && !actionMenuView$LayoutParams.isOverflowButton) {
          paramInt1 += actionMenuView$LayoutParams.leftMargin;
          paramInt4 = view.getMeasuredWidth();
          i = view.getMeasuredHeight();
          j = m - i / 2;
          view.layout(paramInt1, j, paramInt1 + paramInt4, i + j);
          paramInt1 = actionMenuView$LayoutParams.rightMargin + paramInt4 + paramInt3 + paramInt1;
        } 
        paramInt2++;
        continue;
      } 
      return;
    } 
  }
  
  protected void onMeasure(int paramInt1, int paramInt2) {
    boolean bool;
    boolean bool1 = this.mFormatItems;
    if (View.MeasureSpec.getMode(paramInt1) == 1073741824) {
      bool = true;
    } else {
      bool = false;
    } 
    this.mFormatItems = bool;
    if (bool1 != this.mFormatItems)
      this.mFormatItemsWidth = 0; 
    int i = View.MeasureSpec.getSize(paramInt1);
    if (this.mFormatItems && this.mMenu != null && i != this.mFormatItemsWidth) {
      this.mFormatItemsWidth = i;
      this.mMenu.onItemsChanged(true);
    } 
    int j = getChildCount();
    if (this.mFormatItems && j > 0) {
      onMeasureExactFormat(paramInt1, paramInt2);
      return;
    } 
    for (i = 0; i < j; i++) {
      ActionMenuView$LayoutParams actionMenuView$LayoutParams = (ActionMenuView$LayoutParams)getChildAt(i).getLayoutParams();
      actionMenuView$LayoutParams.rightMargin = 0;
      actionMenuView$LayoutParams.leftMargin = 0;
    } 
    super.onMeasure(paramInt1, paramInt2);
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public MenuBuilder peekMenu() {
    return this.mMenu;
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public void setExpandedActionViewsExclusive(boolean paramBoolean) {
    this.mPresenter.setExpandedActionViewsExclusive(paramBoolean);
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public void setMenuCallbacks(MenuPresenter.Callback paramCallback, MenuBuilder.Callback paramCallback1) {
    this.mActionMenuPresenterCallback = paramCallback;
    this.mMenuBuilderCallback = paramCallback1;
  }
  
  public void setOnMenuItemClickListener(ActionMenuView$OnMenuItemClickListener paramActionMenuView$OnMenuItemClickListener) {
    this.mOnMenuItemClickListener = paramActionMenuView$OnMenuItemClickListener;
  }
  
  public void setOverflowIcon(@Nullable Drawable paramDrawable) {
    getMenu();
    this.mPresenter.setOverflowIcon(paramDrawable);
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public void setOverflowReserved(boolean paramBoolean) {
    this.mReserveOverflow = paramBoolean;
  }
  
  public void setPopupTheme(@StyleRes int paramInt) {
    if (this.mPopupTheme != paramInt) {
      this.mPopupTheme = paramInt;
      if (paramInt == 0) {
        this.mPopupContext = getContext();
        return;
      } 
    } else {
      return;
    } 
    this.mPopupContext = (Context)new ContextThemeWrapper(getContext(), paramInt);
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public void setPresenter(ActionMenuPresenter paramActionMenuPresenter) {
    this.mPresenter = paramActionMenuPresenter;
    this.mPresenter.setMenuView(this);
  }
  
  public boolean showOverflowMenu() {
    return (this.mPresenter != null && this.mPresenter.showOverflowMenu());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ActionMenuView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */