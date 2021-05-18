package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.view.ActionProvider;
import android.support.v7.appcompat.R;
import android.support.v7.transition.ActionBarTransition;
import android.support.v7.view.ActionBarPolicy;
import android.support.v7.view.menu.ActionMenuItemView;
import android.support.v7.view.menu.BaseMenuPresenter;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.view.menu.MenuView;
import android.support.v7.view.menu.SubMenuBuilder;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

class ActionMenuPresenter extends BaseMenuPresenter implements ActionProvider.SubUiVisibilityListener {
  private static final String TAG = "ActionMenuPresenter";
  
  private final SparseBooleanArray mActionButtonGroups = new SparseBooleanArray();
  
  ActionMenuPresenter$ActionButtonSubmenu mActionButtonPopup;
  
  private int mActionItemWidthLimit;
  
  private boolean mExpandedActionViewsExclusive;
  
  private int mMaxItems;
  
  private boolean mMaxItemsSet;
  
  private int mMinCellSize;
  
  int mOpenSubMenuId;
  
  ActionMenuPresenter$OverflowMenuButton mOverflowButton;
  
  ActionMenuPresenter$OverflowPopup mOverflowPopup;
  
  private Drawable mPendingOverflowIcon;
  
  private boolean mPendingOverflowIconSet;
  
  private ActionMenuPresenter$ActionMenuPopupCallback mPopupCallback;
  
  final ActionMenuPresenter$PopupPresenterCallback mPopupPresenterCallback = new ActionMenuPresenter$PopupPresenterCallback(this);
  
  ActionMenuPresenter$OpenOverflowRunnable mPostedOpenRunnable;
  
  private boolean mReserveOverflow;
  
  private boolean mReserveOverflowSet;
  
  private View mScrapActionButtonView;
  
  private boolean mStrictWidthLimit;
  
  private int mWidthLimit;
  
  private boolean mWidthLimitSet;
  
  public ActionMenuPresenter(Context paramContext) {
    super(paramContext, R.layout.abc_action_menu_layout, R.layout.abc_action_menu_item_layout);
  }
  
  private View findViewForItem(MenuItem paramMenuItem) {
    ViewGroup viewGroup = (ViewGroup)this.mMenuView;
    if (viewGroup == null)
      return null; 
    int j = viewGroup.getChildCount();
    for (int i = 0; i < j; i++) {
      View view = viewGroup.getChildAt(i);
      if (view instanceof MenuView.ItemView) {
        View view1 = view;
        if (((MenuView.ItemView)view).getItemData() != paramMenuItem)
          continue; 
        return view1;
      } 
      continue;
    } 
    return null;
  }
  
  public void bindItemView(MenuItemImpl paramMenuItemImpl, MenuView.ItemView paramItemView) {
    paramItemView.initialize(paramMenuItemImpl, 0);
    ActionMenuView actionMenuView = (ActionMenuView)this.mMenuView;
    ActionMenuItemView actionMenuItemView = (ActionMenuItemView)paramItemView;
    actionMenuItemView.setItemInvoker(actionMenuView);
    if (this.mPopupCallback == null)
      this.mPopupCallback = new ActionMenuPresenter$ActionMenuPopupCallback(this); 
    actionMenuItemView.setPopupCallback(this.mPopupCallback);
  }
  
  public boolean dismissPopupMenus() {
    return hideOverflowMenu() | hideSubMenus();
  }
  
  public boolean filterLeftoverView(ViewGroup paramViewGroup, int paramInt) {
    return (paramViewGroup.getChildAt(paramInt) == this.mOverflowButton) ? false : super.filterLeftoverView(paramViewGroup, paramInt);
  }
  
  public boolean flagActionItems() {
    // Byte code:
    //   0: aload_0
    //   1: getfield mMenu : Landroid/support/v7/view/menu/MenuBuilder;
    //   4: ifnull -> 113
    //   7: aload_0
    //   8: getfield mMenu : Landroid/support/v7/view/menu/MenuBuilder;
    //   11: invokevirtual getVisibleItems : ()Ljava/util/ArrayList;
    //   14: astore #14
    //   16: aload #14
    //   18: invokevirtual size : ()I
    //   21: istore #6
    //   23: aload_0
    //   24: getfield mMaxItems : I
    //   27: istore_1
    //   28: aload_0
    //   29: getfield mActionItemWidthLimit : I
    //   32: istore #9
    //   34: iconst_0
    //   35: iconst_0
    //   36: invokestatic makeMeasureSpec : (II)I
    //   39: istore #10
    //   41: aload_0
    //   42: getfield mMenuView : Landroid/support/v7/view/menu/MenuView;
    //   45: checkcast android/view/ViewGroup
    //   48: astore #15
    //   50: iconst_0
    //   51: istore_3
    //   52: iconst_0
    //   53: istore #4
    //   55: iconst_0
    //   56: istore #5
    //   58: iconst_0
    //   59: istore_2
    //   60: iload_2
    //   61: iload #6
    //   63: if_icmpge -> 145
    //   66: aload #14
    //   68: iload_2
    //   69: invokevirtual get : (I)Ljava/lang/Object;
    //   72: checkcast android/support/v7/view/menu/MenuItemImpl
    //   75: astore #16
    //   77: aload #16
    //   79: invokevirtual requiresActionButton : ()Z
    //   82: ifeq -> 122
    //   85: iload_3
    //   86: iconst_1
    //   87: iadd
    //   88: istore_3
    //   89: aload_0
    //   90: getfield mExpandedActionViewsExclusive : Z
    //   93: ifeq -> 836
    //   96: aload #16
    //   98: invokevirtual isActionViewExpanded : ()Z
    //   101: ifeq -> 836
    //   104: iconst_0
    //   105: istore_1
    //   106: iload_2
    //   107: iconst_1
    //   108: iadd
    //   109: istore_2
    //   110: goto -> 60
    //   113: iconst_0
    //   114: istore #6
    //   116: aconst_null
    //   117: astore #14
    //   119: goto -> 23
    //   122: aload #16
    //   124: invokevirtual requestsActionButton : ()Z
    //   127: ifeq -> 139
    //   130: iload #4
    //   132: iconst_1
    //   133: iadd
    //   134: istore #4
    //   136: goto -> 89
    //   139: iconst_1
    //   140: istore #5
    //   142: goto -> 89
    //   145: iload_1
    //   146: istore_2
    //   147: aload_0
    //   148: getfield mReserveOverflow : Z
    //   151: ifeq -> 173
    //   154: iload #5
    //   156: ifne -> 169
    //   159: iload_1
    //   160: istore_2
    //   161: iload_3
    //   162: iload #4
    //   164: iadd
    //   165: iload_1
    //   166: if_icmple -> 173
    //   169: iload_1
    //   170: iconst_1
    //   171: isub
    //   172: istore_2
    //   173: iload_2
    //   174: iload_3
    //   175: isub
    //   176: istore_2
    //   177: aload_0
    //   178: getfield mActionButtonGroups : Landroid/util/SparseBooleanArray;
    //   181: astore #16
    //   183: aload #16
    //   185: invokevirtual clear : ()V
    //   188: iconst_0
    //   189: istore_1
    //   190: aload_0
    //   191: getfield mStrictWidthLimit : Z
    //   194: ifeq -> 830
    //   197: iload #9
    //   199: aload_0
    //   200: getfield mMinCellSize : I
    //   203: idiv
    //   204: istore_1
    //   205: aload_0
    //   206: getfield mMinCellSize : I
    //   209: istore_3
    //   210: aload_0
    //   211: getfield mMinCellSize : I
    //   214: istore #4
    //   216: iload #9
    //   218: iload_3
    //   219: irem
    //   220: iload_1
    //   221: idiv
    //   222: iload #4
    //   224: iadd
    //   225: istore #7
    //   227: iconst_0
    //   228: istore #8
    //   230: iconst_0
    //   231: istore #5
    //   233: iload_1
    //   234: istore_3
    //   235: iload_2
    //   236: istore_1
    //   237: iload #9
    //   239: istore #4
    //   241: iload #5
    //   243: istore_2
    //   244: iload #8
    //   246: iload #6
    //   248: if_icmpge -> 805
    //   251: aload #14
    //   253: iload #8
    //   255: invokevirtual get : (I)Ljava/lang/Object;
    //   258: checkcast android/support/v7/view/menu/MenuItemImpl
    //   261: astore #17
    //   263: aload #17
    //   265: invokevirtual requiresActionButton : ()Z
    //   268: ifeq -> 409
    //   271: aload_0
    //   272: aload #17
    //   274: aload_0
    //   275: getfield mScrapActionButtonView : Landroid/view/View;
    //   278: aload #15
    //   280: invokevirtual getItemView : (Landroid/support/v7/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    //   283: astore #18
    //   285: aload_0
    //   286: getfield mScrapActionButtonView : Landroid/view/View;
    //   289: ifnonnull -> 298
    //   292: aload_0
    //   293: aload #18
    //   295: putfield mScrapActionButtonView : Landroid/view/View;
    //   298: aload_0
    //   299: getfield mStrictWidthLimit : Z
    //   302: ifeq -> 394
    //   305: iload_3
    //   306: aload #18
    //   308: iload #7
    //   310: iload_3
    //   311: iload #10
    //   313: iconst_0
    //   314: invokestatic measureChildForCells : (Landroid/view/View;IIII)I
    //   317: isub
    //   318: istore #5
    //   320: aload #18
    //   322: invokevirtual getMeasuredWidth : ()I
    //   325: istore_3
    //   326: iload_2
    //   327: ifne -> 827
    //   330: iload_3
    //   331: istore_2
    //   332: aload #17
    //   334: invokevirtual getGroupId : ()I
    //   337: istore #9
    //   339: iload #9
    //   341: ifeq -> 352
    //   344: aload #16
    //   346: iload #9
    //   348: iconst_1
    //   349: invokevirtual put : (IZ)V
    //   352: aload #17
    //   354: iconst_1
    //   355: invokevirtual setIsActionButton : (Z)V
    //   358: iload #4
    //   360: iload_3
    //   361: isub
    //   362: istore #4
    //   364: iload_1
    //   365: istore_3
    //   366: iload #4
    //   368: istore_1
    //   369: iload #8
    //   371: iconst_1
    //   372: iadd
    //   373: istore #9
    //   375: iload_3
    //   376: istore #8
    //   378: iload #5
    //   380: istore_3
    //   381: iload_1
    //   382: istore #4
    //   384: iload #8
    //   386: istore_1
    //   387: iload #9
    //   389: istore #8
    //   391: goto -> 244
    //   394: aload #18
    //   396: iload #10
    //   398: iload #10
    //   400: invokevirtual measure : (II)V
    //   403: iload_3
    //   404: istore #5
    //   406: goto -> 320
    //   409: aload #17
    //   411: invokevirtual requestsActionButton : ()Z
    //   414: ifeq -> 780
    //   417: aload #17
    //   419: invokevirtual getGroupId : ()I
    //   422: istore #11
    //   424: aload #16
    //   426: iload #11
    //   428: invokevirtual get : (I)Z
    //   431: istore #13
    //   433: iload_1
    //   434: ifgt -> 442
    //   437: iload #13
    //   439: ifeq -> 642
    //   442: iload #4
    //   444: ifle -> 642
    //   447: aload_0
    //   448: getfield mStrictWidthLimit : Z
    //   451: ifeq -> 458
    //   454: iload_3
    //   455: ifle -> 642
    //   458: iconst_1
    //   459: istore #12
    //   461: iload #12
    //   463: ifeq -> 816
    //   466: aload_0
    //   467: aload #17
    //   469: aload_0
    //   470: getfield mScrapActionButtonView : Landroid/view/View;
    //   473: aload #15
    //   475: invokevirtual getItemView : (Landroid/support/v7/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    //   478: astore #18
    //   480: aload_0
    //   481: getfield mScrapActionButtonView : Landroid/view/View;
    //   484: ifnonnull -> 493
    //   487: aload_0
    //   488: aload #18
    //   490: putfield mScrapActionButtonView : Landroid/view/View;
    //   493: aload_0
    //   494: getfield mStrictWidthLimit : Z
    //   497: ifeq -> 648
    //   500: aload #18
    //   502: iload #7
    //   504: iload_3
    //   505: iload #10
    //   507: iconst_0
    //   508: invokestatic measureChildForCells : (Landroid/view/View;IIII)I
    //   511: istore #5
    //   513: iload #5
    //   515: ifne -> 813
    //   518: iconst_0
    //   519: istore #12
    //   521: iload_3
    //   522: iload #5
    //   524: isub
    //   525: istore_3
    //   526: aload #18
    //   528: invokevirtual getMeasuredWidth : ()I
    //   531: istore #5
    //   533: iload #4
    //   535: iload #5
    //   537: isub
    //   538: istore #9
    //   540: iload_2
    //   541: istore #4
    //   543: iload_2
    //   544: ifne -> 551
    //   547: iload #5
    //   549: istore #4
    //   551: aload_0
    //   552: getfield mStrictWidthLimit : Z
    //   555: ifeq -> 665
    //   558: iload #9
    //   560: iflt -> 660
    //   563: iconst_1
    //   564: istore_2
    //   565: iload #12
    //   567: iload_2
    //   568: iand
    //   569: istore #12
    //   571: iload #4
    //   573: istore_2
    //   574: iload_3
    //   575: istore #5
    //   577: iload #9
    //   579: istore #4
    //   581: iload_2
    //   582: istore_3
    //   583: iload #5
    //   585: istore_2
    //   586: iload #12
    //   588: ifeq -> 698
    //   591: iload #11
    //   593: ifeq -> 698
    //   596: aload #16
    //   598: iload #11
    //   600: iconst_1
    //   601: invokevirtual put : (IZ)V
    //   604: iload_1
    //   605: istore #5
    //   607: iload #12
    //   609: ifeq -> 617
    //   612: iload_1
    //   613: iconst_1
    //   614: isub
    //   615: istore #5
    //   617: aload #17
    //   619: iload #12
    //   621: invokevirtual setIsActionButton : (Z)V
    //   624: iload #4
    //   626: istore_1
    //   627: iload #5
    //   629: istore #4
    //   631: iload_2
    //   632: istore #5
    //   634: iload_3
    //   635: istore_2
    //   636: iload #4
    //   638: istore_3
    //   639: goto -> 369
    //   642: iconst_0
    //   643: istore #12
    //   645: goto -> 461
    //   648: aload #18
    //   650: iload #10
    //   652: iload #10
    //   654: invokevirtual measure : (II)V
    //   657: goto -> 526
    //   660: iconst_0
    //   661: istore_2
    //   662: goto -> 565
    //   665: iload #9
    //   667: iload #4
    //   669: iadd
    //   670: ifle -> 693
    //   673: iconst_1
    //   674: istore_2
    //   675: iload #12
    //   677: iload_2
    //   678: iand
    //   679: istore #12
    //   681: iload_3
    //   682: istore_2
    //   683: iload #4
    //   685: istore_3
    //   686: iload #9
    //   688: istore #4
    //   690: goto -> 586
    //   693: iconst_0
    //   694: istore_2
    //   695: goto -> 675
    //   698: iload #13
    //   700: ifeq -> 810
    //   703: aload #16
    //   705: iload #11
    //   707: iconst_0
    //   708: invokevirtual put : (IZ)V
    //   711: iconst_0
    //   712: istore #9
    //   714: iload #9
    //   716: iload #8
    //   718: if_icmpge -> 807
    //   721: aload #14
    //   723: iload #9
    //   725: invokevirtual get : (I)Ljava/lang/Object;
    //   728: checkcast android/support/v7/view/menu/MenuItemImpl
    //   731: astore #18
    //   733: iload_1
    //   734: istore #5
    //   736: aload #18
    //   738: invokevirtual getGroupId : ()I
    //   741: iload #11
    //   743: if_icmpne -> 768
    //   746: iload_1
    //   747: istore #5
    //   749: aload #18
    //   751: invokevirtual isActionButton : ()Z
    //   754: ifeq -> 762
    //   757: iload_1
    //   758: iconst_1
    //   759: iadd
    //   760: istore #5
    //   762: aload #18
    //   764: iconst_0
    //   765: invokevirtual setIsActionButton : (Z)V
    //   768: iload #9
    //   770: iconst_1
    //   771: iadd
    //   772: istore #9
    //   774: iload #5
    //   776: istore_1
    //   777: goto -> 714
    //   780: aload #17
    //   782: iconst_0
    //   783: invokevirtual setIsActionButton : (Z)V
    //   786: iload #4
    //   788: istore #5
    //   790: iload_1
    //   791: istore #4
    //   793: iload #5
    //   795: istore_1
    //   796: iload_3
    //   797: istore #5
    //   799: iload #4
    //   801: istore_3
    //   802: goto -> 369
    //   805: iconst_1
    //   806: ireturn
    //   807: goto -> 604
    //   810: goto -> 604
    //   813: goto -> 521
    //   816: iload_2
    //   817: istore #5
    //   819: iload_3
    //   820: istore_2
    //   821: iload #5
    //   823: istore_3
    //   824: goto -> 586
    //   827: goto -> 332
    //   830: iconst_0
    //   831: istore #7
    //   833: goto -> 227
    //   836: goto -> 106
  }
  
  public View getItemView(MenuItemImpl paramMenuItemImpl, View paramView, ViewGroup paramViewGroup) {
    boolean bool;
    View view = paramMenuItemImpl.getActionView();
    if (view == null || paramMenuItemImpl.hasCollapsibleActionView())
      view = super.getItemView(paramMenuItemImpl, paramView, paramViewGroup); 
    if (paramMenuItemImpl.isActionViewExpanded()) {
      bool = true;
    } else {
      bool = false;
    } 
    view.setVisibility(bool);
    ActionMenuView actionMenuView = (ActionMenuView)paramViewGroup;
    ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
    if (!actionMenuView.checkLayoutParams(layoutParams))
      view.setLayoutParams((ViewGroup.LayoutParams)actionMenuView.generateLayoutParams(layoutParams)); 
    return view;
  }
  
  public MenuView getMenuView(ViewGroup paramViewGroup) {
    MenuView menuView2 = this.mMenuView;
    MenuView menuView1 = super.getMenuView(paramViewGroup);
    if (menuView2 != menuView1)
      ((ActionMenuView)menuView1).setPresenter(this); 
    return menuView1;
  }
  
  public Drawable getOverflowIcon() {
    return (this.mOverflowButton != null) ? this.mOverflowButton.getDrawable() : (this.mPendingOverflowIconSet ? this.mPendingOverflowIcon : null);
  }
  
  public boolean hideOverflowMenu() {
    if (this.mPostedOpenRunnable != null && this.mMenuView != null) {
      ((View)this.mMenuView).removeCallbacks(this.mPostedOpenRunnable);
      this.mPostedOpenRunnable = null;
      return true;
    } 
    ActionMenuPresenter$OverflowPopup actionMenuPresenter$OverflowPopup = this.mOverflowPopup;
    if (actionMenuPresenter$OverflowPopup != null) {
      actionMenuPresenter$OverflowPopup.dismiss();
      return true;
    } 
    return false;
  }
  
  public boolean hideSubMenus() {
    if (this.mActionButtonPopup != null) {
      this.mActionButtonPopup.dismiss();
      return true;
    } 
    return false;
  }
  
  public void initForMenu(@NonNull Context paramContext, @Nullable MenuBuilder paramMenuBuilder) {
    super.initForMenu(paramContext, paramMenuBuilder);
    Resources resources = paramContext.getResources();
    ActionBarPolicy actionBarPolicy = ActionBarPolicy.get(paramContext);
    if (!this.mReserveOverflowSet)
      this.mReserveOverflow = actionBarPolicy.showsOverflowMenuButton(); 
    if (!this.mWidthLimitSet)
      this.mWidthLimit = actionBarPolicy.getEmbeddedMenuWidthLimit(); 
    if (!this.mMaxItemsSet)
      this.mMaxItems = actionBarPolicy.getMaxActionButtons(); 
    int i = this.mWidthLimit;
    if (this.mReserveOverflow) {
      if (this.mOverflowButton == null) {
        this.mOverflowButton = new ActionMenuPresenter$OverflowMenuButton(this, this.mSystemContext);
        if (this.mPendingOverflowIconSet) {
          this.mOverflowButton.setImageDrawable(this.mPendingOverflowIcon);
          this.mPendingOverflowIcon = null;
          this.mPendingOverflowIconSet = false;
        } 
        int j = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.mOverflowButton.measure(j, j);
      } 
      i -= this.mOverflowButton.getMeasuredWidth();
    } else {
      this.mOverflowButton = null;
    } 
    this.mActionItemWidthLimit = i;
    this.mMinCellSize = (int)(56.0F * (resources.getDisplayMetrics()).density);
    this.mScrapActionButtonView = null;
  }
  
  public boolean isOverflowMenuShowPending() {
    return (this.mPostedOpenRunnable != null || isOverflowMenuShowing());
  }
  
  public boolean isOverflowMenuShowing() {
    return (this.mOverflowPopup != null && this.mOverflowPopup.isShowing());
  }
  
  public boolean isOverflowReserved() {
    return this.mReserveOverflow;
  }
  
  public void onCloseMenu(MenuBuilder paramMenuBuilder, boolean paramBoolean) {
    dismissPopupMenus();
    super.onCloseMenu(paramMenuBuilder, paramBoolean);
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration) {
    if (!this.mMaxItemsSet)
      this.mMaxItems = ActionBarPolicy.get(this.mContext).getMaxActionButtons(); 
    if (this.mMenu != null)
      this.mMenu.onItemsChanged(true); 
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable) {
    if (paramParcelable instanceof ActionMenuPresenter$SavedState) {
      paramParcelable = paramParcelable;
      if (((ActionMenuPresenter$SavedState)paramParcelable).openSubMenuId > 0) {
        MenuItem menuItem = this.mMenu.findItem(((ActionMenuPresenter$SavedState)paramParcelable).openSubMenuId);
        if (menuItem != null) {
          onSubMenuSelected((SubMenuBuilder)menuItem.getSubMenu());
          return;
        } 
      } 
    } 
  }
  
  public Parcelable onSaveInstanceState() {
    ActionMenuPresenter$SavedState actionMenuPresenter$SavedState = new ActionMenuPresenter$SavedState();
    actionMenuPresenter$SavedState.openSubMenuId = this.mOpenSubMenuId;
    return actionMenuPresenter$SavedState;
  }
  
  public boolean onSubMenuSelected(SubMenuBuilder paramSubMenuBuilder) {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual hasVisibleItems : ()Z
    //   4: ifne -> 9
    //   7: iconst_0
    //   8: ireturn
    //   9: aload_1
    //   10: astore #5
    //   12: aload #5
    //   14: invokevirtual getParentMenu : ()Landroid/view/Menu;
    //   17: aload_0
    //   18: getfield mMenu : Landroid/support/v7/view/menu/MenuBuilder;
    //   21: if_acmpeq -> 37
    //   24: aload #5
    //   26: invokevirtual getParentMenu : ()Landroid/view/Menu;
    //   29: checkcast android/support/v7/view/menu/SubMenuBuilder
    //   32: astore #5
    //   34: goto -> 12
    //   37: aload_0
    //   38: aload #5
    //   40: invokevirtual getItem : ()Landroid/view/MenuItem;
    //   43: invokespecial findViewForItem : (Landroid/view/MenuItem;)Landroid/view/View;
    //   46: astore #5
    //   48: aload #5
    //   50: ifnull -> 7
    //   53: aload_0
    //   54: aload_1
    //   55: invokevirtual getItem : ()Landroid/view/MenuItem;
    //   58: invokeinterface getItemId : ()I
    //   63: putfield mOpenSubMenuId : I
    //   66: aload_1
    //   67: invokevirtual size : ()I
    //   70: istore_3
    //   71: iconst_0
    //   72: istore_2
    //   73: iload_2
    //   74: iload_3
    //   75: if_icmpge -> 158
    //   78: aload_1
    //   79: iload_2
    //   80: invokevirtual getItem : (I)Landroid/view/MenuItem;
    //   83: astore #6
    //   85: aload #6
    //   87: invokeinterface isVisible : ()Z
    //   92: ifeq -> 151
    //   95: aload #6
    //   97: invokeinterface getIcon : ()Landroid/graphics/drawable/Drawable;
    //   102: ifnull -> 151
    //   105: iconst_1
    //   106: istore #4
    //   108: aload_0
    //   109: new android/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu
    //   112: dup
    //   113: aload_0
    //   114: aload_0
    //   115: getfield mContext : Landroid/content/Context;
    //   118: aload_1
    //   119: aload #5
    //   121: invokespecial <init> : (Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/view/menu/SubMenuBuilder;Landroid/view/View;)V
    //   124: putfield mActionButtonPopup : Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;
    //   127: aload_0
    //   128: getfield mActionButtonPopup : Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;
    //   131: iload #4
    //   133: invokevirtual setForceShowIcon : (Z)V
    //   136: aload_0
    //   137: getfield mActionButtonPopup : Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;
    //   140: invokevirtual show : ()V
    //   143: aload_0
    //   144: aload_1
    //   145: invokespecial onSubMenuSelected : (Landroid/support/v7/view/menu/SubMenuBuilder;)Z
    //   148: pop
    //   149: iconst_1
    //   150: ireturn
    //   151: iload_2
    //   152: iconst_1
    //   153: iadd
    //   154: istore_2
    //   155: goto -> 73
    //   158: iconst_0
    //   159: istore #4
    //   161: goto -> 108
  }
  
  public void onSubUiVisibilityChanged(boolean paramBoolean) {
    if (paramBoolean) {
      super.onSubMenuSelected(null);
      return;
    } 
    if (this.mMenu != null) {
      this.mMenu.close(false);
      return;
    } 
  }
  
  public void setExpandedActionViewsExclusive(boolean paramBoolean) {
    this.mExpandedActionViewsExclusive = paramBoolean;
  }
  
  public void setItemLimit(int paramInt) {
    this.mMaxItems = paramInt;
    this.mMaxItemsSet = true;
  }
  
  public void setMenuView(ActionMenuView paramActionMenuView) {
    this.mMenuView = paramActionMenuView;
    paramActionMenuView.initialize(this.mMenu);
  }
  
  public void setOverflowIcon(Drawable paramDrawable) {
    if (this.mOverflowButton != null) {
      this.mOverflowButton.setImageDrawable(paramDrawable);
      return;
    } 
    this.mPendingOverflowIconSet = true;
    this.mPendingOverflowIcon = paramDrawable;
  }
  
  public void setReserveOverflow(boolean paramBoolean) {
    this.mReserveOverflow = paramBoolean;
    this.mReserveOverflowSet = true;
  }
  
  public void setWidthLimit(int paramInt, boolean paramBoolean) {
    this.mWidthLimit = paramInt;
    this.mStrictWidthLimit = paramBoolean;
    this.mWidthLimitSet = true;
  }
  
  public boolean shouldIncludeItem(int paramInt, MenuItemImpl paramMenuItemImpl) {
    return paramMenuItemImpl.isActionButton();
  }
  
  public boolean showOverflowMenu() {
    if (this.mReserveOverflow && !isOverflowMenuShowing() && this.mMenu != null && this.mMenuView != null && this.mPostedOpenRunnable == null && !this.mMenu.getNonActionItems().isEmpty()) {
      this.mPostedOpenRunnable = new ActionMenuPresenter$OpenOverflowRunnable(this, new ActionMenuPresenter$OverflowPopup(this, this.mContext, this.mMenu, (View)this.mOverflowButton, true));
      ((View)this.mMenuView).post(this.mPostedOpenRunnable);
      super.onSubMenuSelected(null);
      return true;
    } 
    return false;
  }
  
  public void updateMenuView(boolean paramBoolean) {
    boolean bool = true;
    byte b = 0;
    ViewGroup<MenuItemImpl> viewGroup = (ViewGroup)((View)this.mMenuView).getParent();
    if (viewGroup != null)
      ActionBarTransition.beginDelayedTransition(viewGroup); 
    super.updateMenuView(paramBoolean);
    ((View)this.mMenuView).requestLayout();
    if (this.mMenu != null) {
      ArrayList<MenuItemImpl> arrayList = this.mMenu.getActionItems();
      int k = arrayList.size();
      for (int j = 0; j < k; j++) {
        ActionProvider actionProvider = ((MenuItemImpl)arrayList.get(j)).getSupportActionProvider();
        if (actionProvider != null)
          actionProvider.setSubUiVisibilityListener(this); 
      } 
    } 
    if (this.mMenu != null) {
      ArrayList arrayList = this.mMenu.getNonActionItems();
    } else {
      viewGroup = null;
    } 
    int i = b;
    if (this.mReserveOverflow) {
      i = b;
      if (viewGroup != null) {
        i = viewGroup.size();
        if (i == 1) {
          if (!((MenuItemImpl)viewGroup.get(0)).isActionViewExpanded()) {
            i = 1;
          } else {
            i = 0;
          } 
        } else if (i > 0) {
          i = bool;
        } else {
          i = 0;
        } 
      } 
    } 
    if (i != 0) {
      if (this.mOverflowButton == null)
        this.mOverflowButton = new ActionMenuPresenter$OverflowMenuButton(this, this.mSystemContext); 
      viewGroup = (ViewGroup<MenuItemImpl>)this.mOverflowButton.getParent();
      if (viewGroup != this.mMenuView) {
        if (viewGroup != null)
          viewGroup.removeView((View)this.mOverflowButton); 
        viewGroup = (ActionMenuView)this.mMenuView;
        viewGroup.addView((View)this.mOverflowButton, (ViewGroup.LayoutParams)viewGroup.generateOverflowButtonLayoutParams());
      } 
    } else if (this.mOverflowButton != null && this.mOverflowButton.getParent() == this.mMenuView) {
      ((ViewGroup)this.mMenuView).removeView((View)this.mOverflowButton);
    } 
    ((ActionMenuView)this.mMenuView).setOverflowReserved(this.mReserveOverflow);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ActionMenuPresenter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */