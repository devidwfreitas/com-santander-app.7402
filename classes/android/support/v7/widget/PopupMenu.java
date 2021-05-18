package android.support.v7.widget;

import android.content.Context;
import android.support.annotation.AttrRes;
import android.support.annotation.MenuRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.StyleRes;
import android.support.v7.appcompat.R;
import android.support.v7.view.SupportMenuInflater;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuPopupHelper;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;

public class PopupMenu {
  private final View mAnchor;
  
  private final Context mContext;
  
  private View.OnTouchListener mDragListener;
  
  private final MenuBuilder mMenu;
  
  PopupMenu$OnMenuItemClickListener mMenuItemClickListener;
  
  PopupMenu$OnDismissListener mOnDismissListener;
  
  final MenuPopupHelper mPopup;
  
  public PopupMenu(@NonNull Context paramContext, @NonNull View paramView) {
    this(paramContext, paramView, 0);
  }
  
  public PopupMenu(@NonNull Context paramContext, @NonNull View paramView, int paramInt) {
    this(paramContext, paramView, paramInt, R.attr.popupMenuStyle, 0);
  }
  
  public PopupMenu(@NonNull Context paramContext, @NonNull View paramView, int paramInt1, @AttrRes int paramInt2, @StyleRes int paramInt3) {
    this.mContext = paramContext;
    this.mAnchor = paramView;
    this.mMenu = new MenuBuilder(paramContext);
    this.mMenu.setCallback(new PopupMenu$1(this));
    this.mPopup = new MenuPopupHelper(paramContext, this.mMenu, paramView, false, paramInt2, paramInt3);
    this.mPopup.setGravity(paramInt1);
    this.mPopup.setOnDismissListener(new PopupMenu$2(this));
  }
  
  public void dismiss() {
    this.mPopup.dismiss();
  }
  
  @NonNull
  public View.OnTouchListener getDragToOpenListener() {
    if (this.mDragListener == null)
      this.mDragListener = new PopupMenu$3(this, this.mAnchor); 
    return this.mDragListener;
  }
  
  public int getGravity() {
    return this.mPopup.getGravity();
  }
  
  @NonNull
  public Menu getMenu() {
    return (Menu)this.mMenu;
  }
  
  @NonNull
  public MenuInflater getMenuInflater() {
    return (MenuInflater)new SupportMenuInflater(this.mContext);
  }
  
  public void inflate(@MenuRes int paramInt) {
    getMenuInflater().inflate(paramInt, (Menu)this.mMenu);
  }
  
  public void setGravity(int paramInt) {
    this.mPopup.setGravity(paramInt);
  }
  
  public void setOnDismissListener(@Nullable PopupMenu$OnDismissListener paramPopupMenu$OnDismissListener) {
    this.mOnDismissListener = paramPopupMenu$OnDismissListener;
  }
  
  public void setOnMenuItemClickListener(@Nullable PopupMenu$OnMenuItemClickListener paramPopupMenu$OnMenuItemClickListener) {
    this.mMenuItemClickListener = paramPopupMenu$OnMenuItemClickListener;
  }
  
  public void show() {
    this.mPopup.show();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\PopupMenu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */