package android.support.v7.app;

import android.graphics.drawable.Drawable;
import android.support.annotation.DrawableRes;
import android.view.View;

@Deprecated
public abstract class ActionBar$Tab {
  public static final int INVALID_POSITION = -1;
  
  public abstract CharSequence getContentDescription();
  
  public abstract View getCustomView();
  
  public abstract Drawable getIcon();
  
  public abstract int getPosition();
  
  public abstract Object getTag();
  
  public abstract CharSequence getText();
  
  public abstract void select();
  
  public abstract ActionBar$Tab setContentDescription(int paramInt);
  
  public abstract ActionBar$Tab setContentDescription(CharSequence paramCharSequence);
  
  public abstract ActionBar$Tab setCustomView(int paramInt);
  
  public abstract ActionBar$Tab setCustomView(View paramView);
  
  public abstract ActionBar$Tab setIcon(@DrawableRes int paramInt);
  
  public abstract ActionBar$Tab setIcon(Drawable paramDrawable);
  
  public abstract ActionBar$Tab setTabListener(ActionBar$TabListener paramActionBar$TabListener);
  
  public abstract ActionBar$Tab setTag(Object paramObject);
  
  public abstract ActionBar$Tab setText(int paramInt);
  
  public abstract ActionBar$Tab setText(CharSequence paramCharSequence);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\ActionBar$Tab.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */