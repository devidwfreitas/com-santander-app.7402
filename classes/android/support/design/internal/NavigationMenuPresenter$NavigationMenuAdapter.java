package android.support.design.internal;

import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.view.ViewCompat;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.widget.RecyclerView;
import android.util.SparseArray;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import java.util.ArrayList;

class NavigationMenuPresenter$NavigationMenuAdapter extends RecyclerView.Adapter<NavigationMenuPresenter$ViewHolder> {
  private static final String STATE_ACTION_VIEWS = "android:menu:action_views";
  
  private static final String STATE_CHECKED_ITEM = "android:menu:checked";
  
  private static final int VIEW_TYPE_HEADER = 3;
  
  private static final int VIEW_TYPE_NORMAL = 0;
  
  private static final int VIEW_TYPE_SEPARATOR = 2;
  
  private static final int VIEW_TYPE_SUBHEADER = 1;
  
  private MenuItemImpl mCheckedItem;
  
  private final ArrayList<NavigationMenuPresenter$NavigationMenuItem> mItems = new ArrayList<NavigationMenuPresenter$NavigationMenuItem>();
  
  private boolean mUpdateSuspended;
  
  NavigationMenuPresenter$NavigationMenuAdapter() {
    prepareMenuItems();
  }
  
  private void appendTransparentIconIfMissing(int paramInt1, int paramInt2) {
    while (paramInt1 < paramInt2) {
      ((NavigationMenuPresenter$NavigationMenuTextItem)this.mItems.get(paramInt1)).needsEmptyIcon = true;
      paramInt1++;
    } 
  }
  
  private void prepareMenuItems() {
    if (this.mUpdateSuspended)
      return; 
    this.mUpdateSuspended = true;
    this.mItems.clear();
    this.mItems.add(new NavigationMenuPresenter$NavigationMenuHeaderItem());
    int j = -1;
    int i = 0;
    boolean bool = false;
    int m = NavigationMenuPresenter.this.mMenu.getVisibleItems().size();
    int k = 0;
    while (k < m) {
      MenuItemImpl menuItemImpl = NavigationMenuPresenter.this.mMenu.getVisibleItems().get(k);
      if (menuItemImpl.isChecked())
        setCheckedItem(menuItemImpl); 
      if (menuItemImpl.isCheckable())
        menuItemImpl.setExclusiveCheckable(false); 
      if (menuItemImpl.hasSubMenu()) {
        SubMenu subMenu = menuItemImpl.getSubMenu();
        if (subMenu.hasVisibleItems()) {
          if (k != 0)
            this.mItems.add(new NavigationMenuPresenter$NavigationMenuSeparatorItem(NavigationMenuPresenter.this.mPaddingSeparator, 0)); 
          this.mItems.add(new NavigationMenuPresenter$NavigationMenuTextItem(menuItemImpl));
          boolean bool1 = false;
          int i3 = this.mItems.size();
          int i4 = subMenu.size();
          int i2 = 0;
          while (i2 < i4) {
            MenuItemImpl menuItemImpl1 = (MenuItemImpl)subMenu.getItem(i2);
            boolean bool2 = bool1;
            if (menuItemImpl1.isVisible()) {
              bool2 = bool1;
              if (!bool1) {
                bool2 = bool1;
                if (menuItemImpl1.getIcon() != null)
                  bool2 = true; 
              } 
              if (menuItemImpl1.isCheckable())
                menuItemImpl1.setExclusiveCheckable(false); 
              if (menuItemImpl.isChecked())
                setCheckedItem(menuItemImpl); 
              this.mItems.add(new NavigationMenuPresenter$NavigationMenuTextItem(menuItemImpl1));
            } 
            i2++;
            bool1 = bool2;
          } 
          if (bool1)
            appendTransparentIconIfMissing(i3, this.mItems.size()); 
        } 
        int i1 = j;
        j = i;
        i = i1;
      } else {
        int i1 = menuItemImpl.getGroupId();
        if (i1 != j) {
          boolean bool1;
          j = this.mItems.size();
          if (menuItemImpl.getIcon() != null) {
            bool1 = true;
          } else {
            bool1 = false;
          } 
          bool = bool1;
          i = j;
          if (k != 0) {
            i = j + 1;
            this.mItems.add(new NavigationMenuPresenter$NavigationMenuSeparatorItem(NavigationMenuPresenter.this.mPaddingSeparator, NavigationMenuPresenter.this.mPaddingSeparator));
            bool = bool1;
          } 
        } else if (!bool && menuItemImpl.getIcon() != null) {
          bool = true;
          appendTransparentIconIfMissing(i, this.mItems.size());
        } 
        NavigationMenuPresenter$NavigationMenuTextItem navigationMenuPresenter$NavigationMenuTextItem = new NavigationMenuPresenter$NavigationMenuTextItem(menuItemImpl);
        navigationMenuPresenter$NavigationMenuTextItem.needsEmptyIcon = bool;
        this.mItems.add(navigationMenuPresenter$NavigationMenuTextItem);
        j = i;
        i = i1;
      } 
      k++;
      int n = i;
      i = j;
      j = n;
    } 
    this.mUpdateSuspended = false;
  }
  
  public Bundle createInstanceState() {
    Bundle bundle = new Bundle();
    if (this.mCheckedItem != null)
      bundle.putInt("android:menu:checked", this.mCheckedItem.getItemId()); 
    SparseArray sparseArray = new SparseArray();
    int j = this.mItems.size();
    for (int i = 0; i < j; i++) {
      NavigationMenuPresenter$NavigationMenuItem navigationMenuPresenter$NavigationMenuItem = this.mItems.get(i);
      if (navigationMenuPresenter$NavigationMenuItem instanceof NavigationMenuPresenter$NavigationMenuTextItem) {
        MenuItemImpl menuItemImpl = ((NavigationMenuPresenter$NavigationMenuTextItem)navigationMenuPresenter$NavigationMenuItem).getMenuItem();
        if (menuItemImpl != null) {
          View view = menuItemImpl.getActionView();
        } else {
          navigationMenuPresenter$NavigationMenuItem = null;
        } 
        if (navigationMenuPresenter$NavigationMenuItem != null) {
          ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
          navigationMenuPresenter$NavigationMenuItem.saveHierarchyState(parcelableSparseArray);
          sparseArray.put(menuItemImpl.getItemId(), parcelableSparseArray);
        } 
      } 
    } 
    bundle.putSparseParcelableArray("android:menu:action_views", sparseArray);
    return bundle;
  }
  
  public int getItemCount() {
    return this.mItems.size();
  }
  
  public long getItemId(int paramInt) {
    return paramInt;
  }
  
  public int getItemViewType(int paramInt) {
    NavigationMenuPresenter$NavigationMenuItem navigationMenuPresenter$NavigationMenuItem = this.mItems.get(paramInt);
    if (navigationMenuPresenter$NavigationMenuItem instanceof NavigationMenuPresenter$NavigationMenuSeparatorItem)
      return 2; 
    if (navigationMenuPresenter$NavigationMenuItem instanceof NavigationMenuPresenter$NavigationMenuHeaderItem)
      return 3; 
    if (navigationMenuPresenter$NavigationMenuItem instanceof NavigationMenuPresenter$NavigationMenuTextItem)
      return ((NavigationMenuPresenter$NavigationMenuTextItem)navigationMenuPresenter$NavigationMenuItem).getMenuItem().hasSubMenu() ? 1 : 0; 
    throw new RuntimeException("Unknown item type.");
  }
  
  public void onBindViewHolder(NavigationMenuPresenter$ViewHolder paramNavigationMenuPresenter$ViewHolder, int paramInt) {
    NavigationMenuPresenter$NavigationMenuTextItem navigationMenuPresenter$NavigationMenuTextItem;
    NavigationMenuItemView navigationMenuItemView;
    switch (getItemViewType(paramInt)) {
      default:
        return;
      case 0:
        navigationMenuItemView = (NavigationMenuItemView)paramNavigationMenuPresenter$ViewHolder.itemView;
        navigationMenuItemView.setIconTintList(NavigationMenuPresenter.this.mIconTintList);
        if (NavigationMenuPresenter.this.mTextAppearanceSet)
          navigationMenuItemView.setTextAppearance(NavigationMenuPresenter.this.mTextAppearance); 
        if (NavigationMenuPresenter.this.mTextColor != null)
          navigationMenuItemView.setTextColor(NavigationMenuPresenter.this.mTextColor); 
        if (NavigationMenuPresenter.this.mItemBackground != null) {
          Drawable drawable = NavigationMenuPresenter.this.mItemBackground.getConstantState().newDrawable();
        } else {
          paramNavigationMenuPresenter$ViewHolder = null;
        } 
        ViewCompat.setBackground((View)navigationMenuItemView, (Drawable)paramNavigationMenuPresenter$ViewHolder);
        navigationMenuPresenter$NavigationMenuTextItem = (NavigationMenuPresenter$NavigationMenuTextItem)this.mItems.get(paramInt);
        navigationMenuItemView.setNeedsEmptyIcon(navigationMenuPresenter$NavigationMenuTextItem.needsEmptyIcon);
        navigationMenuItemView.initialize(navigationMenuPresenter$NavigationMenuTextItem.getMenuItem(), 0);
        return;
      case 1:
        ((TextView)((NavigationMenuPresenter$ViewHolder)navigationMenuPresenter$NavigationMenuTextItem).itemView).setText(((NavigationMenuPresenter$NavigationMenuTextItem)this.mItems.get(paramInt)).getMenuItem().getTitle());
        return;
      case 2:
        break;
    } 
    NavigationMenuPresenter$NavigationMenuSeparatorItem navigationMenuPresenter$NavigationMenuSeparatorItem = (NavigationMenuPresenter$NavigationMenuSeparatorItem)this.mItems.get(paramInt);
    ((NavigationMenuPresenter$ViewHolder)navigationMenuPresenter$NavigationMenuTextItem).itemView.setPadding(0, navigationMenuPresenter$NavigationMenuSeparatorItem.getPaddingTop(), 0, navigationMenuPresenter$NavigationMenuSeparatorItem.getPaddingBottom());
  }
  
  public NavigationMenuPresenter$ViewHolder onCreateViewHolder(ViewGroup paramViewGroup, int paramInt) {
    switch (paramInt) {
      default:
        return null;
      case 0:
        return new NavigationMenuPresenter$NormalViewHolder(NavigationMenuPresenter.this.mLayoutInflater, paramViewGroup, NavigationMenuPresenter.this.mOnClickListener);
      case 1:
        return new NavigationMenuPresenter$SubheaderViewHolder(NavigationMenuPresenter.this.mLayoutInflater, paramViewGroup);
      case 2:
        return new NavigationMenuPresenter$SeparatorViewHolder(NavigationMenuPresenter.this.mLayoutInflater, paramViewGroup);
      case 3:
        break;
    } 
    return new NavigationMenuPresenter$HeaderViewHolder((View)NavigationMenuPresenter.this.mHeaderLayout);
  }
  
  public void onViewRecycled(NavigationMenuPresenter$ViewHolder paramNavigationMenuPresenter$ViewHolder) {
    if (paramNavigationMenuPresenter$ViewHolder instanceof NavigationMenuPresenter$NormalViewHolder)
      ((NavigationMenuItemView)paramNavigationMenuPresenter$ViewHolder.itemView).recycle(); 
  }
  
  public void restoreInstanceState(Bundle paramBundle) {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: aload_1
    //   3: ldc 'android:menu:checked'
    //   5: iconst_0
    //   6: invokevirtual getInt : (Ljava/lang/String;I)I
    //   9: istore #4
    //   11: iload #4
    //   13: ifeq -> 99
    //   16: aload_0
    //   17: iconst_1
    //   18: putfield mUpdateSuspended : Z
    //   21: aload_0
    //   22: getfield mItems : Ljava/util/ArrayList;
    //   25: invokevirtual size : ()I
    //   28: istore #5
    //   30: iconst_0
    //   31: istore_2
    //   32: iload_2
    //   33: iload #5
    //   35: if_icmpge -> 90
    //   38: aload_0
    //   39: getfield mItems : Ljava/util/ArrayList;
    //   42: iload_2
    //   43: invokevirtual get : (I)Ljava/lang/Object;
    //   46: checkcast android/support/design/internal/NavigationMenuPresenter$NavigationMenuItem
    //   49: astore #6
    //   51: aload #6
    //   53: instanceof android/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem
    //   56: ifeq -> 155
    //   59: aload #6
    //   61: checkcast android/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem
    //   64: invokevirtual getMenuItem : ()Landroid/support/v7/view/menu/MenuItemImpl;
    //   67: astore #6
    //   69: aload #6
    //   71: ifnull -> 155
    //   74: aload #6
    //   76: invokevirtual getItemId : ()I
    //   79: iload #4
    //   81: if_icmpne -> 155
    //   84: aload_0
    //   85: aload #6
    //   87: invokevirtual setCheckedItem : (Landroid/support/v7/view/menu/MenuItemImpl;)V
    //   90: aload_0
    //   91: iconst_0
    //   92: putfield mUpdateSuspended : Z
    //   95: aload_0
    //   96: invokespecial prepareMenuItems : ()V
    //   99: aload_1
    //   100: ldc 'android:menu:action_views'
    //   102: invokevirtual getSparseParcelableArray : (Ljava/lang/String;)Landroid/util/SparseArray;
    //   105: astore_1
    //   106: aload_1
    //   107: ifnull -> 218
    //   110: aload_0
    //   111: getfield mItems : Ljava/util/ArrayList;
    //   114: invokevirtual size : ()I
    //   117: istore #4
    //   119: iload_3
    //   120: istore_2
    //   121: iload_2
    //   122: iload #4
    //   124: if_icmpge -> 218
    //   127: aload_0
    //   128: getfield mItems : Ljava/util/ArrayList;
    //   131: iload_2
    //   132: invokevirtual get : (I)Ljava/lang/Object;
    //   135: checkcast android/support/design/internal/NavigationMenuPresenter$NavigationMenuItem
    //   138: astore #6
    //   140: aload #6
    //   142: instanceof android/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem
    //   145: ifne -> 162
    //   148: iload_2
    //   149: iconst_1
    //   150: iadd
    //   151: istore_2
    //   152: goto -> 121
    //   155: iload_2
    //   156: iconst_1
    //   157: iadd
    //   158: istore_2
    //   159: goto -> 32
    //   162: aload #6
    //   164: checkcast android/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem
    //   167: invokevirtual getMenuItem : ()Landroid/support/v7/view/menu/MenuItemImpl;
    //   170: astore #7
    //   172: aload #7
    //   174: ifnull -> 148
    //   177: aload #7
    //   179: invokevirtual getActionView : ()Landroid/view/View;
    //   182: astore #6
    //   184: aload #6
    //   186: ifnull -> 148
    //   189: aload_1
    //   190: aload #7
    //   192: invokevirtual getItemId : ()I
    //   195: invokevirtual get : (I)Ljava/lang/Object;
    //   198: checkcast android/support/design/internal/ParcelableSparseArray
    //   201: astore #7
    //   203: aload #7
    //   205: ifnull -> 148
    //   208: aload #6
    //   210: aload #7
    //   212: invokevirtual restoreHierarchyState : (Landroid/util/SparseArray;)V
    //   215: goto -> 148
    //   218: return
  }
  
  public void setCheckedItem(MenuItemImpl paramMenuItemImpl) {
    if (this.mCheckedItem == paramMenuItemImpl || !paramMenuItemImpl.isCheckable())
      return; 
    if (this.mCheckedItem != null)
      this.mCheckedItem.setChecked(false); 
    this.mCheckedItem = paramMenuItemImpl;
    paramMenuItemImpl.setChecked(true);
  }
  
  public void setUpdateSuspended(boolean paramBoolean) {
    this.mUpdateSuspended = paramBoolean;
  }
  
  public void update() {
    prepareMenuItems();
    notifyDataSetChanged();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\internal\NavigationMenuPresenter$NavigationMenuAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */