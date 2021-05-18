package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.support.annotation.RestrictTo;
import android.support.v7.view.menu.ListMenuItemView;
import android.support.v7.view.menu.MenuAdapter;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class MenuPopupWindow$MenuDropDownListView extends DropDownListView {
  final int mAdvanceKey;
  
  private MenuItemHoverListener mHoverListener;
  
  private MenuItem mHoveredMenuItem;
  
  final int mRetreatKey;
  
  public MenuPopupWindow$MenuDropDownListView(Context paramContext, boolean paramBoolean) {
    super(paramContext, paramBoolean);
    Configuration configuration = paramContext.getResources().getConfiguration();
    if (Build.VERSION.SDK_INT >= 17 && 1 == configuration.getLayoutDirection()) {
      this.mAdvanceKey = 21;
      this.mRetreatKey = 22;
      return;
    } 
    this.mAdvanceKey = 22;
    this.mRetreatKey = 21;
  }
  
  public void clearSelection() {
    setSelection(-1);
  }
  
  public boolean onHoverEvent(MotionEvent paramMotionEvent) {
    // Byte code:
    //   0: aload_0
    //   1: getfield mHoverListener : Landroid/support/v7/widget/MenuItemHoverListener;
    //   4: ifnull -> 160
    //   7: aload_0
    //   8: invokevirtual getAdapter : ()Landroid/widget/ListAdapter;
    //   11: astore #4
    //   13: aload #4
    //   15: instanceof android/widget/HeaderViewListAdapter
    //   18: ifeq -> 166
    //   21: aload #4
    //   23: checkcast android/widget/HeaderViewListAdapter
    //   26: astore #4
    //   28: aload #4
    //   30: invokevirtual getHeadersCount : ()I
    //   33: istore_2
    //   34: aload #4
    //   36: invokevirtual getWrappedAdapter : ()Landroid/widget/ListAdapter;
    //   39: checkcast android/support/v7/view/menu/MenuAdapter
    //   42: astore #4
    //   44: aload_1
    //   45: invokevirtual getAction : ()I
    //   48: bipush #10
    //   50: if_icmpeq -> 178
    //   53: aload_0
    //   54: aload_1
    //   55: invokevirtual getX : ()F
    //   58: f2i
    //   59: aload_1
    //   60: invokevirtual getY : ()F
    //   63: f2i
    //   64: invokevirtual pointToPosition : (II)I
    //   67: istore_3
    //   68: iload_3
    //   69: iconst_m1
    //   70: if_icmpeq -> 178
    //   73: iload_3
    //   74: iload_2
    //   75: isub
    //   76: istore_2
    //   77: iload_2
    //   78: iflt -> 178
    //   81: iload_2
    //   82: aload #4
    //   84: invokevirtual getCount : ()I
    //   87: if_icmpge -> 178
    //   90: aload #4
    //   92: iload_2
    //   93: invokevirtual getItem : (I)Landroid/support/v7/view/menu/MenuItemImpl;
    //   96: astore #5
    //   98: aload_0
    //   99: getfield mHoveredMenuItem : Landroid/view/MenuItem;
    //   102: astore #6
    //   104: aload #6
    //   106: aload #5
    //   108: if_acmpeq -> 160
    //   111: aload #4
    //   113: invokevirtual getAdapterMenu : ()Landroid/support/v7/view/menu/MenuBuilder;
    //   116: astore #4
    //   118: aload #6
    //   120: ifnull -> 136
    //   123: aload_0
    //   124: getfield mHoverListener : Landroid/support/v7/widget/MenuItemHoverListener;
    //   127: aload #4
    //   129: aload #6
    //   131: invokeinterface onItemHoverExit : (Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)V
    //   136: aload_0
    //   137: aload #5
    //   139: putfield mHoveredMenuItem : Landroid/view/MenuItem;
    //   142: aload #5
    //   144: ifnull -> 160
    //   147: aload_0
    //   148: getfield mHoverListener : Landroid/support/v7/widget/MenuItemHoverListener;
    //   151: aload #4
    //   153: aload #5
    //   155: invokeinterface onItemHoverEnter : (Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)V
    //   160: aload_0
    //   161: aload_1
    //   162: invokespecial onHoverEvent : (Landroid/view/MotionEvent;)Z
    //   165: ireturn
    //   166: iconst_0
    //   167: istore_2
    //   168: aload #4
    //   170: checkcast android/support/v7/view/menu/MenuAdapter
    //   173: astore #4
    //   175: goto -> 44
    //   178: aconst_null
    //   179: astore #5
    //   181: goto -> 98
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent) {
    ListMenuItemView listMenuItemView = (ListMenuItemView)getSelectedView();
    if (listMenuItemView != null && paramInt == this.mAdvanceKey) {
      if (listMenuItemView.isEnabled() && listMenuItemView.getItemData().hasSubMenu())
        performItemClick((View)listMenuItemView, getSelectedItemPosition(), getSelectedItemId()); 
      return true;
    } 
    if (listMenuItemView != null && paramInt == this.mRetreatKey) {
      setSelection(-1);
      ((MenuAdapter)getAdapter()).getAdapterMenu().close(false);
      return true;
    } 
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public void setHoverListener(MenuItemHoverListener paramMenuItemHoverListener) {
    this.mHoverListener = paramMenuItemHoverListener;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\MenuPopupWindow$MenuDropDownListView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */