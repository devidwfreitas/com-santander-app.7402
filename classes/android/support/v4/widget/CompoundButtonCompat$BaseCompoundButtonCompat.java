package android.support.v4.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.widget.CompoundButton;

class CompoundButtonCompat$BaseCompoundButtonCompat implements CompoundButtonCompat$CompoundButtonCompatImpl {
  public Drawable getButtonDrawable(CompoundButton paramCompoundButton) {
    return CompoundButtonCompatGingerbread.getButtonDrawable(paramCompoundButton);
  }
  
  public ColorStateList getButtonTintList(CompoundButton paramCompoundButton) {
    return CompoundButtonCompatGingerbread.getButtonTintList(paramCompoundButton);
  }
  
  public PorterDuff.Mode getButtonTintMode(CompoundButton paramCompoundButton) {
    return CompoundButtonCompatGingerbread.getButtonTintMode(paramCompoundButton);
  }
  
  public void setButtonTintList(CompoundButton paramCompoundButton, ColorStateList paramColorStateList) {
    CompoundButtonCompatGingerbread.setButtonTintList(paramCompoundButton, paramColorStateList);
  }
  
  public void setButtonTintMode(CompoundButton paramCompoundButton, PorterDuff.Mode paramMode) {
    CompoundButtonCompatGingerbread.setButtonTintMode(paramCompoundButton, paramMode);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\CompoundButtonCompat$BaseCompoundButtonCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */