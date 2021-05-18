package android.support.design.widget;

import android.graphics.drawable.Drawable;
import android.support.annotation.DrawableRes;
import android.support.annotation.LayoutRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.StringRes;
import android.support.v7.content.res.AppCompatResources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public final class TabLayout$Tab {
  public static final int INVALID_POSITION = -1;
  
  private CharSequence mContentDesc;
  
  private View mCustomView;
  
  private Drawable mIcon;
  
  TabLayout mParent;
  
  private int mPosition = -1;
  
  private Object mTag;
  
  private CharSequence mText;
  
  TabLayout$TabView mView;
  
  @Nullable
  public CharSequence getContentDescription() {
    return this.mContentDesc;
  }
  
  @Nullable
  public View getCustomView() {
    return this.mCustomView;
  }
  
  @Nullable
  public Drawable getIcon() {
    return this.mIcon;
  }
  
  public int getPosition() {
    return this.mPosition;
  }
  
  @Nullable
  public Object getTag() {
    return this.mTag;
  }
  
  @Nullable
  public CharSequence getText() {
    return this.mText;
  }
  
  public boolean isSelected() {
    if (this.mParent == null)
      throw new IllegalArgumentException("Tab not attached to a TabLayout"); 
    return (this.mParent.getSelectedTabPosition() == this.mPosition);
  }
  
  void reset() {
    this.mParent = null;
    this.mView = null;
    this.mTag = null;
    this.mIcon = null;
    this.mText = null;
    this.mContentDesc = null;
    this.mPosition = -1;
    this.mCustomView = null;
  }
  
  public void select() {
    if (this.mParent == null)
      throw new IllegalArgumentException("Tab not attached to a TabLayout"); 
    this.mParent.selectTab(this);
  }
  
  @NonNull
  public TabLayout$Tab setContentDescription(@StringRes int paramInt) {
    if (this.mParent == null)
      throw new IllegalArgumentException("Tab not attached to a TabLayout"); 
    return setContentDescription(this.mParent.getResources().getText(paramInt));
  }
  
  @NonNull
  public TabLayout$Tab setContentDescription(@Nullable CharSequence paramCharSequence) {
    this.mContentDesc = paramCharSequence;
    updateView();
    return this;
  }
  
  @NonNull
  public TabLayout$Tab setCustomView(@LayoutRes int paramInt) {
    return setCustomView(LayoutInflater.from(this.mView.getContext()).inflate(paramInt, (ViewGroup)this.mView, false));
  }
  
  @NonNull
  public TabLayout$Tab setCustomView(@Nullable View paramView) {
    this.mCustomView = paramView;
    updateView();
    return this;
  }
  
  @NonNull
  public TabLayout$Tab setIcon(@DrawableRes int paramInt) {
    if (this.mParent == null)
      throw new IllegalArgumentException("Tab not attached to a TabLayout"); 
    return setIcon(AppCompatResources.getDrawable(this.mParent.getContext(), paramInt));
  }
  
  @NonNull
  public TabLayout$Tab setIcon(@Nullable Drawable paramDrawable) {
    this.mIcon = paramDrawable;
    updateView();
    return this;
  }
  
  void setPosition(int paramInt) {
    this.mPosition = paramInt;
  }
  
  @NonNull
  public TabLayout$Tab setTag(@Nullable Object paramObject) {
    this.mTag = paramObject;
    return this;
  }
  
  @NonNull
  public TabLayout$Tab setText(@StringRes int paramInt) {
    if (this.mParent == null)
      throw new IllegalArgumentException("Tab not attached to a TabLayout"); 
    return setText(this.mParent.getResources().getText(paramInt));
  }
  
  @NonNull
  public TabLayout$Tab setText(@Nullable CharSequence paramCharSequence) {
    this.mText = paramCharSequence;
    updateView();
    return this;
  }
  
  void updateView() {
    if (this.mView != null)
      this.mView.update(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\TabLayout$Tab.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */