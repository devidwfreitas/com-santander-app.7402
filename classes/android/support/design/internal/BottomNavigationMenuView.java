package android.support.design.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.os.Build;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.design.R;
import android.support.v4.util.Pools;
import android.support.v4.view.ViewCompat;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.view.menu.MenuView;
import android.util.AttributeSet;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class BottomNavigationMenuView extends ViewGroup implements MenuView {
  private final int mActiveItemMaxWidth;
  
  private final BottomNavigationAnimationHelperBase mAnimationHelper;
  
  private BottomNavigationItemView[] mButtons;
  
  private final int mInactiveItemMaxWidth;
  
  private final int mInactiveItemMinWidth;
  
  private int mItemBackgroundRes;
  
  private final int mItemHeight;
  
  private ColorStateList mItemIconTint;
  
  private final Pools.Pool<BottomNavigationItemView> mItemPool = (Pools.Pool<BottomNavigationItemView>)new Pools.SynchronizedPool(5);
  
  private ColorStateList mItemTextColor;
  
  private MenuBuilder mMenu;
  
  private final View.OnClickListener mOnClickListener;
  
  private BottomNavigationPresenter mPresenter;
  
  private int mSelectedItemId = 0;
  
  private int mSelectedItemPosition = 0;
  
  private boolean mShiftingMode = true;
  
  private int[] mTempChildWidths;
  
  public BottomNavigationMenuView(Context paramContext) {
    this(paramContext, (AttributeSet)null);
  }
  
  public BottomNavigationMenuView(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    Resources resources = getResources();
    this.mInactiveItemMaxWidth = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_item_max_width);
    this.mInactiveItemMinWidth = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_item_min_width);
    this.mActiveItemMaxWidth = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_active_item_max_width);
    this.mItemHeight = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_height);
    if (Build.VERSION.SDK_INT >= 14) {
      this.mAnimationHelper = new BottomNavigationAnimationHelperIcs();
    } else {
      this.mAnimationHelper = new BottomNavigationAnimationHelperBase();
    } 
    this.mOnClickListener = new BottomNavigationMenuView$1(this);
    this.mTempChildWidths = new int[5];
  }
  
  private BottomNavigationItemView getNewItem() {
    BottomNavigationItemView bottomNavigationItemView2 = (BottomNavigationItemView)this.mItemPool.acquire();
    BottomNavigationItemView bottomNavigationItemView1 = bottomNavigationItemView2;
    if (bottomNavigationItemView2 == null)
      bottomNavigationItemView1 = new BottomNavigationItemView(getContext()); 
    return bottomNavigationItemView1;
  }
  
  public void buildMenuView() {
    boolean bool;
    removeAllViews();
    if (this.mButtons != null)
      for (BottomNavigationItemView bottomNavigationItemView : this.mButtons)
        this.mItemPool.release(bottomNavigationItemView);  
    if (this.mMenu.size() == 0) {
      this.mSelectedItemId = 0;
      this.mSelectedItemPosition = 0;
      this.mButtons = null;
      return;
    } 
    this.mButtons = new BottomNavigationItemView[this.mMenu.size()];
    if (this.mMenu.size() > 3) {
      bool = true;
    } else {
      bool = false;
    } 
    this.mShiftingMode = bool;
    for (int i = 0; i < this.mMenu.size(); i++) {
      this.mPresenter.setUpdateSuspended(true);
      this.mMenu.getItem(i).setCheckable(true);
      this.mPresenter.setUpdateSuspended(false);
      BottomNavigationItemView bottomNavigationItemView = getNewItem();
      this.mButtons[i] = bottomNavigationItemView;
      bottomNavigationItemView.setIconTintList(this.mItemIconTint);
      bottomNavigationItemView.setTextColor(this.mItemTextColor);
      bottomNavigationItemView.setItemBackground(this.mItemBackgroundRes);
      bottomNavigationItemView.setShiftingMode(this.mShiftingMode);
      bottomNavigationItemView.initialize((MenuItemImpl)this.mMenu.getItem(i), 0);
      bottomNavigationItemView.setItemPosition(i);
      bottomNavigationItemView.setOnClickListener(this.mOnClickListener);
      addView((View)bottomNavigationItemView);
    } 
    this.mSelectedItemPosition = Math.min(this.mMenu.size() - 1, this.mSelectedItemPosition);
    this.mMenu.getItem(this.mSelectedItemPosition).setChecked(true);
  }
  
  @Nullable
  public ColorStateList getIconTintList() {
    return this.mItemIconTint;
  }
  
  public int getItemBackgroundRes() {
    return this.mItemBackgroundRes;
  }
  
  public ColorStateList getItemTextColor() {
    return this.mItemTextColor;
  }
  
  public int getSelectedItemId() {
    return this.mSelectedItemId;
  }
  
  public int getWindowAnimations() {
    return 0;
  }
  
  public void initialize(MenuBuilder paramMenuBuilder) {
    this.mMenu = paramMenuBuilder;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    int i = getChildCount();
    paramInt3 -= paramInt1;
    paramInt4 -= paramInt2;
    paramInt1 = 0;
    paramInt2 = 0;
    while (paramInt1 < i) {
      View view = getChildAt(paramInt1);
      if (view.getVisibility() != 8) {
        if (ViewCompat.getLayoutDirection((View)this) == 1) {
          view.layout(paramInt3 - paramInt2 - view.getMeasuredWidth(), 0, paramInt3 - paramInt2, paramInt4);
        } else {
          view.layout(paramInt2, 0, view.getMeasuredWidth() + paramInt2, paramInt4);
        } 
        paramInt2 += view.getMeasuredWidth();
      } 
      paramInt1++;
    } 
  }
  
  protected void onMeasure(int paramInt1, int paramInt2) {
    paramInt2 = View.MeasureSpec.getSize(paramInt1);
    int i = getChildCount();
    int j = View.MeasureSpec.makeMeasureSpec(this.mItemHeight, 1073741824);
    if (this.mShiftingMode) {
      paramInt1 = i - 1;
      int k = Math.min(paramInt2 - this.mInactiveItemMinWidth * paramInt1, this.mActiveItemMaxWidth);
      int m = Math.min((paramInt2 - k) / paramInt1, this.mInactiveItemMaxWidth);
      paramInt1 = paramInt2 - k - paramInt1 * m;
      for (paramInt2 = 0; paramInt2 < i; paramInt2++) {
        int n;
        int[] arrayOfInt = this.mTempChildWidths;
        if (paramInt2 == this.mSelectedItemPosition) {
          n = k;
        } else {
          n = m;
        } 
        arrayOfInt[paramInt2] = n;
        if (paramInt1 > 0) {
          arrayOfInt = this.mTempChildWidths;
          arrayOfInt[paramInt2] = arrayOfInt[paramInt2] + 1;
          paramInt1--;
        } 
      } 
    } else {
      if (i == 0) {
        paramInt1 = 1;
      } else {
        paramInt1 = i;
      } 
      int k = Math.min(paramInt2 / paramInt1, this.mActiveItemMaxWidth);
      paramInt2 -= k * i;
      paramInt1 = 0;
      while (paramInt1 < i) {
        this.mTempChildWidths[paramInt1] = k;
        int m = paramInt2;
        if (paramInt2 > 0) {
          int[] arrayOfInt = this.mTempChildWidths;
          arrayOfInt[paramInt1] = arrayOfInt[paramInt1] + 1;
          m = paramInt2 - 1;
        } 
        paramInt1++;
        paramInt2 = m;
      } 
    } 
    paramInt1 = 0;
    paramInt2 = 0;
    while (paramInt1 < i) {
      View view = getChildAt(paramInt1);
      if (view.getVisibility() != 8) {
        view.measure(View.MeasureSpec.makeMeasureSpec(this.mTempChildWidths[paramInt1], 1073741824), j);
        (view.getLayoutParams()).width = view.getMeasuredWidth();
        paramInt2 += view.getMeasuredWidth();
      } 
      paramInt1++;
    } 
    setMeasuredDimension(ViewCompat.resolveSizeAndState(paramInt2, View.MeasureSpec.makeMeasureSpec(paramInt2, 1073741824), 0), ViewCompat.resolveSizeAndState(this.mItemHeight, j, 0));
  }
  
  public void setIconTintList(ColorStateList paramColorStateList) {
    this.mItemIconTint = paramColorStateList;
    if (this.mButtons != null) {
      BottomNavigationItemView[] arrayOfBottomNavigationItemView = this.mButtons;
      int j = arrayOfBottomNavigationItemView.length;
      int i = 0;
      while (true) {
        if (i < j) {
          arrayOfBottomNavigationItemView[i].setIconTintList(paramColorStateList);
          i++;
          continue;
        } 
        return;
      } 
    } 
  }
  
  public void setItemBackgroundRes(int paramInt) {
    this.mItemBackgroundRes = paramInt;
    if (this.mButtons != null) {
      BottomNavigationItemView[] arrayOfBottomNavigationItemView = this.mButtons;
      int j = arrayOfBottomNavigationItemView.length;
      int i = 0;
      while (true) {
        if (i < j) {
          arrayOfBottomNavigationItemView[i].setItemBackground(paramInt);
          i++;
          continue;
        } 
        return;
      } 
    } 
  }
  
  public void setItemTextColor(ColorStateList paramColorStateList) {
    this.mItemTextColor = paramColorStateList;
    if (this.mButtons != null) {
      BottomNavigationItemView[] arrayOfBottomNavigationItemView = this.mButtons;
      int j = arrayOfBottomNavigationItemView.length;
      int i = 0;
      while (true) {
        if (i < j) {
          arrayOfBottomNavigationItemView[i].setTextColor(paramColorStateList);
          i++;
          continue;
        } 
        return;
      } 
    } 
  }
  
  public void setPresenter(BottomNavigationPresenter paramBottomNavigationPresenter) {
    this.mPresenter = paramBottomNavigationPresenter;
  }
  
  void tryRestoreSelectedItemId(int paramInt) {
    int j = this.mMenu.size();
    for (int i = 0;; i++) {
      if (i < j) {
        MenuItem menuItem = this.mMenu.getItem(i);
        if (paramInt == menuItem.getItemId()) {
          this.mSelectedItemId = paramInt;
          this.mSelectedItemPosition = i;
          menuItem.setChecked(true);
          return;
        } 
      } else {
        return;
      } 
    } 
  }
  
  public void updateMenuView() {
    int j = this.mMenu.size();
    if (j != this.mButtons.length) {
      buildMenuView();
      return;
    } 
    int k = this.mSelectedItemId;
    int i;
    for (i = 0; i < j; i++) {
      MenuItem menuItem = this.mMenu.getItem(i);
      if (menuItem.isChecked()) {
        this.mSelectedItemId = menuItem.getItemId();
        this.mSelectedItemPosition = i;
      } 
    } 
    if (k != this.mSelectedItemId)
      this.mAnimationHelper.beginDelayedTransition(this); 
    i = 0;
    while (true) {
      if (i < j) {
        this.mPresenter.setUpdateSuspended(true);
        this.mButtons[i].initialize((MenuItemImpl)this.mMenu.getItem(i), 0);
        this.mPresenter.setUpdateSuspended(false);
        i++;
        continue;
      } 
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\internal\BottomNavigationMenuView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */