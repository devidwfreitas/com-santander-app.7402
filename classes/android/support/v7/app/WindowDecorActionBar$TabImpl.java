package android.support.v7.app;

import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.support.v7.content.res.AppCompatResources;
import android.view.LayoutInflater;
import android.view.View;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class WindowDecorActionBar$TabImpl extends ActionBar$Tab {
  private ActionBar$TabListener mCallback;
  
  private CharSequence mContentDesc;
  
  private View mCustomView;
  
  private Drawable mIcon;
  
  private int mPosition = -1;
  
  private Object mTag;
  
  private CharSequence mText;
  
  public ActionBar$TabListener getCallback() {
    return this.mCallback;
  }
  
  public CharSequence getContentDescription() {
    return this.mContentDesc;
  }
  
  public View getCustomView() {
    return this.mCustomView;
  }
  
  public Drawable getIcon() {
    return this.mIcon;
  }
  
  public int getPosition() {
    return this.mPosition;
  }
  
  public Object getTag() {
    return this.mTag;
  }
  
  public CharSequence getText() {
    return this.mText;
  }
  
  public void select() {
    WindowDecorActionBar.this.selectTab(this);
  }
  
  public ActionBar$Tab setContentDescription(int paramInt) {
    return setContentDescription(WindowDecorActionBar.this.mContext.getResources().getText(paramInt));
  }
  
  public ActionBar$Tab setContentDescription(CharSequence paramCharSequence) {
    this.mContentDesc = paramCharSequence;
    if (this.mPosition >= 0)
      WindowDecorActionBar.this.mTabScrollView.updateTab(this.mPosition); 
    return this;
  }
  
  public ActionBar$Tab setCustomView(int paramInt) {
    return setCustomView(LayoutInflater.from(WindowDecorActionBar.this.getThemedContext()).inflate(paramInt, null));
  }
  
  public ActionBar$Tab setCustomView(View paramView) {
    this.mCustomView = paramView;
    if (this.mPosition >= 0)
      WindowDecorActionBar.this.mTabScrollView.updateTab(this.mPosition); 
    return this;
  }
  
  public ActionBar$Tab setIcon(int paramInt) {
    return setIcon(AppCompatResources.getDrawable(WindowDecorActionBar.this.mContext, paramInt));
  }
  
  public ActionBar$Tab setIcon(Drawable paramDrawable) {
    this.mIcon = paramDrawable;
    if (this.mPosition >= 0)
      WindowDecorActionBar.this.mTabScrollView.updateTab(this.mPosition); 
    return this;
  }
  
  public void setPosition(int paramInt) {
    this.mPosition = paramInt;
  }
  
  public ActionBar$Tab setTabListener(ActionBar$TabListener paramActionBar$TabListener) {
    this.mCallback = paramActionBar$TabListener;
    return this;
  }
  
  public ActionBar$Tab setTag(Object paramObject) {
    this.mTag = paramObject;
    return this;
  }
  
  public ActionBar$Tab setText(int paramInt) {
    return setText(WindowDecorActionBar.this.mContext.getResources().getText(paramInt));
  }
  
  public ActionBar$Tab setText(CharSequence paramCharSequence) {
    this.mText = paramCharSequence;
    if (this.mPosition >= 0)
      WindowDecorActionBar.this.mTabScrollView.updateTab(this.mPosition); 
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\WindowDecorActionBar$TabImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */