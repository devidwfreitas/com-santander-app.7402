package android.support.v7.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.support.annotation.RestrictTo;
import android.support.v4.internal.view.SupportMenu;
import android.support.v7.view.menu.MenuWrapperFactory;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;

@TargetApi(11)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class SupportActionModeWrapper extends ActionMode {
  final Context mContext;
  
  final ActionMode mWrappedObject;
  
  public SupportActionModeWrapper(Context paramContext, ActionMode paramActionMode) {
    this.mContext = paramContext;
    this.mWrappedObject = paramActionMode;
  }
  
  public void finish() {
    this.mWrappedObject.finish();
  }
  
  public View getCustomView() {
    return this.mWrappedObject.getCustomView();
  }
  
  public Menu getMenu() {
    return MenuWrapperFactory.wrapSupportMenu(this.mContext, (SupportMenu)this.mWrappedObject.getMenu());
  }
  
  public MenuInflater getMenuInflater() {
    return this.mWrappedObject.getMenuInflater();
  }
  
  public CharSequence getSubtitle() {
    return this.mWrappedObject.getSubtitle();
  }
  
  public Object getTag() {
    return this.mWrappedObject.getTag();
  }
  
  public CharSequence getTitle() {
    return this.mWrappedObject.getTitle();
  }
  
  public boolean getTitleOptionalHint() {
    return this.mWrappedObject.getTitleOptionalHint();
  }
  
  public void invalidate() {
    this.mWrappedObject.invalidate();
  }
  
  public boolean isTitleOptional() {
    return this.mWrappedObject.isTitleOptional();
  }
  
  public void setCustomView(View paramView) {
    this.mWrappedObject.setCustomView(paramView);
  }
  
  public void setSubtitle(int paramInt) {
    this.mWrappedObject.setSubtitle(paramInt);
  }
  
  public void setSubtitle(CharSequence paramCharSequence) {
    this.mWrappedObject.setSubtitle(paramCharSequence);
  }
  
  public void setTag(Object paramObject) {
    this.mWrappedObject.setTag(paramObject);
  }
  
  public void setTitle(int paramInt) {
    this.mWrappedObject.setTitle(paramInt);
  }
  
  public void setTitle(CharSequence paramCharSequence) {
    this.mWrappedObject.setTitle(paramCharSequence);
  }
  
  public void setTitleOptionalHint(boolean paramBoolean) {
    this.mWrappedObject.setTitleOptionalHint(paramBoolean);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\view\SupportActionModeWrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */