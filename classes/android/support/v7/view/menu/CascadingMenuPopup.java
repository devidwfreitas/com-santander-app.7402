package android.support.v7.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Parcelable;
import android.support.annotation.AttrRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.StyleRes;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R;
import android.support.v7.widget.MenuItemHoverListener;
import android.support.v7.widget.MenuPopupWindow;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

final class CascadingMenuPopup extends MenuPopup implements MenuPresenter, View.OnKeyListener, PopupWindow.OnDismissListener {
  static final int HORIZ_POSITION_LEFT = 0;
  
  static final int HORIZ_POSITION_RIGHT = 1;
  
  static final int SUBMENU_TIMEOUT_MS = 200;
  
  private View mAnchorView;
  
  private final Context mContext;
  
  private int mDropDownGravity = 0;
  
  private boolean mForceShowIcon;
  
  private final ViewTreeObserver.OnGlobalLayoutListener mGlobalLayoutListener = new CascadingMenuPopup$1(this);
  
  private boolean mHasXOffset;
  
  private boolean mHasYOffset;
  
  private int mLastPosition;
  
  private final MenuItemHoverListener mMenuItemHoverListener = new CascadingMenuPopup$2(this);
  
  private final int mMenuMaxWidth;
  
  private PopupWindow.OnDismissListener mOnDismissListener;
  
  private final boolean mOverflowOnly;
  
  private final List<MenuBuilder> mPendingMenus = new LinkedList<MenuBuilder>();
  
  private final int mPopupStyleAttr;
  
  private final int mPopupStyleRes;
  
  private MenuPresenter$Callback mPresenterCallback;
  
  private int mRawDropDownGravity = 0;
  
  boolean mShouldCloseImmediately;
  
  private boolean mShowTitle;
  
  final List<CascadingMenuPopup$CascadingMenuInfo> mShowingMenus = new ArrayList<CascadingMenuPopup$CascadingMenuInfo>();
  
  View mShownAnchorView;
  
  final Handler mSubMenuHoverHandler;
  
  private ViewTreeObserver mTreeObserver;
  
  private int mXOffset;
  
  private int mYOffset;
  
  public CascadingMenuPopup(@NonNull Context paramContext, @NonNull View paramView, @AttrRes int paramInt1, @StyleRes int paramInt2, boolean paramBoolean) {
    this.mContext = paramContext;
    this.mAnchorView = paramView;
    this.mPopupStyleAttr = paramInt1;
    this.mPopupStyleRes = paramInt2;
    this.mOverflowOnly = paramBoolean;
    this.mForceShowIcon = false;
    this.mLastPosition = getInitialMenuPosition();
    Resources resources = paramContext.getResources();
    this.mMenuMaxWidth = Math.max((resources.getDisplayMetrics()).widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
    this.mSubMenuHoverHandler = new Handler();
  }
  
  private MenuPopupWindow createPopupWindow() {
    MenuPopupWindow menuPopupWindow = new MenuPopupWindow(this.mContext, null, this.mPopupStyleAttr, this.mPopupStyleRes);
    menuPopupWindow.setHoverListener(this.mMenuItemHoverListener);
    menuPopupWindow.setOnItemClickListener(this);
    menuPopupWindow.setOnDismissListener(this);
    menuPopupWindow.setAnchorView(this.mAnchorView);
    menuPopupWindow.setDropDownGravity(this.mDropDownGravity);
    menuPopupWindow.setModal(true);
    return menuPopupWindow;
  }
  
  private int findIndexOfAddedMenu(@NonNull MenuBuilder paramMenuBuilder) {
    int i = 0;
    int j = this.mShowingMenus.size();
    while (i < j) {
      if (paramMenuBuilder == ((CascadingMenuPopup$CascadingMenuInfo)this.mShowingMenus.get(i)).menu)
        return i; 
      i++;
    } 
    return -1;
  }
  
  private MenuItem findMenuItemForSubmenu(@NonNull MenuBuilder paramMenuBuilder1, @NonNull MenuBuilder paramMenuBuilder2) {
    int j = paramMenuBuilder1.size();
    for (int i = 0; i < j; i++) {
      MenuItem menuItem = paramMenuBuilder1.getItem(i);
      if (menuItem.hasSubMenu() && paramMenuBuilder2 == menuItem.getSubMenu())
        return menuItem; 
    } 
    return null;
  }
  
  @Nullable
  private View findParentViewForSubmenu(@NonNull CascadingMenuPopup$CascadingMenuInfo paramCascadingMenuPopup$CascadingMenuInfo, @NonNull MenuBuilder paramMenuBuilder) {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: aload_0
    //   3: aload_1
    //   4: getfield menu : Landroid/support/v7/view/menu/MenuBuilder;
    //   7: aload_2
    //   8: invokespecial findMenuItemForSubmenu : (Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuBuilder;)Landroid/view/MenuItem;
    //   11: astore_2
    //   12: aload_2
    //   13: ifnonnull -> 18
    //   16: aconst_null
    //   17: areturn
    //   18: aload_1
    //   19: invokevirtual getListView : ()Landroid/widget/ListView;
    //   22: astore #6
    //   24: aload #6
    //   26: invokevirtual getAdapter : ()Landroid/widget/ListAdapter;
    //   29: astore_1
    //   30: aload_1
    //   31: instanceof android/widget/HeaderViewListAdapter
    //   34: ifeq -> 84
    //   37: aload_1
    //   38: checkcast android/widget/HeaderViewListAdapter
    //   41: astore_1
    //   42: aload_1
    //   43: invokevirtual getHeadersCount : ()I
    //   46: istore #4
    //   48: aload_1
    //   49: invokevirtual getWrappedAdapter : ()Landroid/widget/ListAdapter;
    //   52: checkcast android/support/v7/view/menu/MenuAdapter
    //   55: astore_1
    //   56: aload_1
    //   57: invokevirtual getCount : ()I
    //   60: istore #5
    //   62: iload_3
    //   63: iload #5
    //   65: if_icmpge -> 135
    //   68: aload_2
    //   69: aload_1
    //   70: iload_3
    //   71: invokevirtual getItem : (I)Landroid/support/v7/view/menu/MenuItemImpl;
    //   74: if_acmpne -> 95
    //   77: iload_3
    //   78: iconst_m1
    //   79: if_icmpne -> 102
    //   82: aconst_null
    //   83: areturn
    //   84: aload_1
    //   85: checkcast android/support/v7/view/menu/MenuAdapter
    //   88: astore_1
    //   89: iconst_0
    //   90: istore #4
    //   92: goto -> 56
    //   95: iload_3
    //   96: iconst_1
    //   97: iadd
    //   98: istore_3
    //   99: goto -> 62
    //   102: iload_3
    //   103: iload #4
    //   105: iadd
    //   106: aload #6
    //   108: invokevirtual getFirstVisiblePosition : ()I
    //   111: isub
    //   112: istore_3
    //   113: iload_3
    //   114: iflt -> 126
    //   117: iload_3
    //   118: aload #6
    //   120: invokevirtual getChildCount : ()I
    //   123: if_icmplt -> 128
    //   126: aconst_null
    //   127: areturn
    //   128: aload #6
    //   130: iload_3
    //   131: invokevirtual getChildAt : (I)Landroid/view/View;
    //   134: areturn
    //   135: iconst_m1
    //   136: istore_3
    //   137: goto -> 77
  }
  
  private int getInitialMenuPosition() {
    boolean bool = true;
    if (ViewCompat.getLayoutDirection(this.mAnchorView) == 1)
      bool = false; 
    return bool;
  }
  
  private int getNextMenuPosition(int paramInt) {
    ListView listView = ((CascadingMenuPopup$CascadingMenuInfo)this.mShowingMenus.get(this.mShowingMenus.size() - 1)).getListView();
    int[] arrayOfInt = new int[2];
    listView.getLocationOnScreen(arrayOfInt);
    Rect rect = new Rect();
    this.mShownAnchorView.getWindowVisibleDisplayFrame(rect);
    if (this.mLastPosition == 1) {
      int i = arrayOfInt[0];
      return (listView.getWidth() + i + paramInt > rect.right) ? 0 : 1;
    } 
    return (arrayOfInt[0] - paramInt < 0) ? 1 : 0;
  }
  
  private void showMenu(@NonNull MenuBuilder paramMenuBuilder) {
    View view;
    LayoutInflater layoutInflater = LayoutInflater.from(this.mContext);
    MenuAdapter menuAdapter = new MenuAdapter(paramMenuBuilder, layoutInflater, this.mOverflowOnly);
    if (!isShowing() && this.mForceShowIcon) {
      menuAdapter.setForceShowIcon(true);
    } else if (isShowing()) {
      menuAdapter.setForceShowIcon(MenuPopup.shouldPreserveIconSpacing(paramMenuBuilder));
    } 
    int i = measureIndividualMenuWidth((ListAdapter)menuAdapter, null, this.mContext, this.mMenuMaxWidth);
    MenuPopupWindow menuPopupWindow = createPopupWindow();
    menuPopupWindow.setAdapter((ListAdapter)menuAdapter);
    menuPopupWindow.setContentWidth(i);
    menuPopupWindow.setDropDownGravity(this.mDropDownGravity);
    if (this.mShowingMenus.size() > 0) {
      CascadingMenuPopup$CascadingMenuInfo cascadingMenuPopup$CascadingMenuInfo1 = this.mShowingMenus.get(this.mShowingMenus.size() - 1);
      view = findParentViewForSubmenu(cascadingMenuPopup$CascadingMenuInfo1, paramMenuBuilder);
    } else {
      view = null;
      menuAdapter = null;
    } 
    if (view != null) {
      int j;
      menuPopupWindow.setTouchModal(false);
      menuPopupWindow.setEnterTransition(null);
      int k = getNextMenuPosition(i);
      if (k == 1) {
        j = 1;
      } else {
        j = 0;
      } 
      this.mLastPosition = k;
      int[] arrayOfInt = new int[2];
      view.getLocationInWindow(arrayOfInt);
      int n = ((CascadingMenuPopup$CascadingMenuInfo)menuAdapter).window.getHorizontalOffset() + arrayOfInt[0];
      k = ((CascadingMenuPopup$CascadingMenuInfo)menuAdapter).window.getVerticalOffset();
      int m = arrayOfInt[1];
      if ((this.mDropDownGravity & 0x5) == 5) {
        if (j) {
          j = n + i;
        } else {
          j = n - view.getWidth();
        } 
      } else if (j != 0) {
        j = view.getWidth() + n;
      } else {
        j = n - i;
      } 
      menuPopupWindow.setHorizontalOffset(j);
      menuPopupWindow.setVerticalOffset(m + k);
    } else {
      if (this.mHasXOffset)
        menuPopupWindow.setHorizontalOffset(this.mXOffset); 
      if (this.mHasYOffset)
        menuPopupWindow.setVerticalOffset(this.mYOffset); 
      menuPopupWindow.setEpicenterBounds(getEpicenterBounds());
    } 
    CascadingMenuPopup$CascadingMenuInfo cascadingMenuPopup$CascadingMenuInfo = new CascadingMenuPopup$CascadingMenuInfo(menuPopupWindow, paramMenuBuilder, this.mLastPosition);
    this.mShowingMenus.add(cascadingMenuPopup$CascadingMenuInfo);
    menuPopupWindow.show();
    if (menuAdapter == null && this.mShowTitle && paramMenuBuilder.getHeaderTitle() != null) {
      ListView listView = menuPopupWindow.getListView();
      FrameLayout frameLayout = (FrameLayout)layoutInflater.inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup)listView, false);
      TextView textView = (TextView)frameLayout.findViewById(16908310);
      frameLayout.setEnabled(false);
      textView.setText(paramMenuBuilder.getHeaderTitle());
      listView.addHeaderView((View)frameLayout, null, false);
      menuPopupWindow.show();
    } 
  }
  
  public void addMenu(MenuBuilder paramMenuBuilder) {
    paramMenuBuilder.addMenuPresenter(this, this.mContext);
    if (isShowing()) {
      showMenu(paramMenuBuilder);
      return;
    } 
    this.mPendingMenus.add(paramMenuBuilder);
  }
  
  protected boolean closeMenuOnSubMenuOpened() {
    return false;
  }
  
  public void dismiss() {
    int i = this.mShowingMenus.size();
    if (i > 0) {
      CascadingMenuPopup$CascadingMenuInfo[] arrayOfCascadingMenuPopup$CascadingMenuInfo = this.mShowingMenus.<CascadingMenuPopup$CascadingMenuInfo>toArray(new CascadingMenuPopup$CascadingMenuInfo[i]);
      while (--i >= 0) {
        CascadingMenuPopup$CascadingMenuInfo cascadingMenuPopup$CascadingMenuInfo = arrayOfCascadingMenuPopup$CascadingMenuInfo[i];
        if (cascadingMenuPopup$CascadingMenuInfo.window.isShowing())
          cascadingMenuPopup$CascadingMenuInfo.window.dismiss(); 
        i--;
      } 
    } 
  }
  
  public boolean flagActionItems() {
    return false;
  }
  
  public ListView getListView() {
    return this.mShowingMenus.isEmpty() ? null : ((CascadingMenuPopup$CascadingMenuInfo)this.mShowingMenus.get(this.mShowingMenus.size() - 1)).getListView();
  }
  
  public boolean isShowing() {
    return (this.mShowingMenus.size() > 0 && ((CascadingMenuPopup$CascadingMenuInfo)this.mShowingMenus.get(0)).window.isShowing());
  }
  
  public void onCloseMenu(MenuBuilder paramMenuBuilder, boolean paramBoolean) {
    int i = findIndexOfAddedMenu(paramMenuBuilder);
    if (i >= 0) {
      int j = i + 1;
      if (j < this.mShowingMenus.size())
        ((CascadingMenuPopup$CascadingMenuInfo)this.mShowingMenus.get(j)).menu.close(false); 
      CascadingMenuPopup$CascadingMenuInfo cascadingMenuPopup$CascadingMenuInfo = this.mShowingMenus.remove(i);
      cascadingMenuPopup$CascadingMenuInfo.menu.removeMenuPresenter(this);
      if (this.mShouldCloseImmediately) {
        cascadingMenuPopup$CascadingMenuInfo.window.setExitTransition(null);
        cascadingMenuPopup$CascadingMenuInfo.window.setAnimationStyle(0);
      } 
      cascadingMenuPopup$CascadingMenuInfo.window.dismiss();
      i = this.mShowingMenus.size();
      if (i > 0) {
        this.mLastPosition = ((CascadingMenuPopup$CascadingMenuInfo)this.mShowingMenus.get(i - 1)).position;
      } else {
        this.mLastPosition = getInitialMenuPosition();
      } 
      if (i == 0) {
        dismiss();
        if (this.mPresenterCallback != null)
          this.mPresenterCallback.onCloseMenu(paramMenuBuilder, true); 
        if (this.mTreeObserver != null) {
          if (this.mTreeObserver.isAlive())
            this.mTreeObserver.removeGlobalOnLayoutListener(this.mGlobalLayoutListener); 
          this.mTreeObserver = null;
        } 
        this.mOnDismissListener.onDismiss();
        return;
      } 
      if (paramBoolean) {
        ((CascadingMenuPopup$CascadingMenuInfo)this.mShowingMenus.get(0)).menu.close(false);
        return;
      } 
    } 
  }
  
  public void onDismiss() {
    // Byte code:
    //   0: aload_0
    //   1: getfield mShowingMenus : Ljava/util/List;
    //   4: invokeinterface size : ()I
    //   9: istore_2
    //   10: iconst_0
    //   11: istore_1
    //   12: iload_1
    //   13: iload_2
    //   14: if_icmpge -> 61
    //   17: aload_0
    //   18: getfield mShowingMenus : Ljava/util/List;
    //   21: iload_1
    //   22: invokeinterface get : (I)Ljava/lang/Object;
    //   27: checkcast android/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo
    //   30: astore_3
    //   31: aload_3
    //   32: getfield window : Landroid/support/v7/widget/MenuPopupWindow;
    //   35: invokevirtual isShowing : ()Z
    //   38: ifne -> 54
    //   41: aload_3
    //   42: ifnull -> 53
    //   45: aload_3
    //   46: getfield menu : Landroid/support/v7/view/menu/MenuBuilder;
    //   49: iconst_0
    //   50: invokevirtual close : (Z)V
    //   53: return
    //   54: iload_1
    //   55: iconst_1
    //   56: iadd
    //   57: istore_1
    //   58: goto -> 12
    //   61: aconst_null
    //   62: astore_3
    //   63: goto -> 41
  }
  
  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent) {
    if (paramKeyEvent.getAction() == 1 && paramInt == 82) {
      dismiss();
      return true;
    } 
    return false;
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable) {}
  
  public Parcelable onSaveInstanceState() {
    return null;
  }
  
  public boolean onSubMenuSelected(SubMenuBuilder paramSubMenuBuilder) {
    for (CascadingMenuPopup$CascadingMenuInfo cascadingMenuPopup$CascadingMenuInfo : this.mShowingMenus) {
      if (paramSubMenuBuilder == cascadingMenuPopup$CascadingMenuInfo.menu) {
        cascadingMenuPopup$CascadingMenuInfo.getListView().requestFocus();
        return true;
      } 
    } 
    if (paramSubMenuBuilder.hasVisibleItems()) {
      addMenu(paramSubMenuBuilder);
      if (this.mPresenterCallback != null)
        this.mPresenterCallback.onOpenSubMenu(paramSubMenuBuilder); 
      return true;
    } 
    return false;
  }
  
  public void setAnchorView(@NonNull View paramView) {
    if (this.mAnchorView != paramView) {
      this.mAnchorView = paramView;
      this.mDropDownGravity = GravityCompat.getAbsoluteGravity(this.mRawDropDownGravity, ViewCompat.getLayoutDirection(this.mAnchorView));
    } 
  }
  
  public void setCallback(MenuPresenter$Callback paramMenuPresenter$Callback) {
    this.mPresenterCallback = paramMenuPresenter$Callback;
  }
  
  public void setForceShowIcon(boolean paramBoolean) {
    this.mForceShowIcon = paramBoolean;
  }
  
  public void setGravity(int paramInt) {
    if (this.mRawDropDownGravity != paramInt) {
      this.mRawDropDownGravity = paramInt;
      this.mDropDownGravity = GravityCompat.getAbsoluteGravity(paramInt, ViewCompat.getLayoutDirection(this.mAnchorView));
    } 
  }
  
  public void setHorizontalOffset(int paramInt) {
    this.mHasXOffset = true;
    this.mXOffset = paramInt;
  }
  
  public void setOnDismissListener(PopupWindow.OnDismissListener paramOnDismissListener) {
    this.mOnDismissListener = paramOnDismissListener;
  }
  
  public void setShowTitle(boolean paramBoolean) {
    this.mShowTitle = paramBoolean;
  }
  
  public void setVerticalOffset(int paramInt) {
    this.mHasYOffset = true;
    this.mYOffset = paramInt;
  }
  
  public void show() {
    if (!isShowing()) {
      Iterator<MenuBuilder> iterator = this.mPendingMenus.iterator();
      while (iterator.hasNext())
        showMenu(iterator.next()); 
      this.mPendingMenus.clear();
      this.mShownAnchorView = this.mAnchorView;
      if (this.mShownAnchorView != null) {
        boolean bool;
        if (this.mTreeObserver == null) {
          bool = true;
        } else {
          bool = false;
        } 
        this.mTreeObserver = this.mShownAnchorView.getViewTreeObserver();
        if (bool) {
          this.mTreeObserver.addOnGlobalLayoutListener(this.mGlobalLayoutListener);
          return;
        } 
      } 
    } 
  }
  
  public void updateMenuView(boolean paramBoolean) {
    Iterator<CascadingMenuPopup$CascadingMenuInfo> iterator = this.mShowingMenus.iterator();
    while (iterator.hasNext())
      toMenuAdapter(((CascadingMenuPopup$CascadingMenuInfo)iterator.next()).getListView().getAdapter()).notifyDataSetChanged(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\view\menu\CascadingMenuPopup.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */