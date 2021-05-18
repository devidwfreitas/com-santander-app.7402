package android.support.v4.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.widget.CompoundButton;

class CompoundButtonCompat$LollipopCompoundButtonImpl extends CompoundButtonCompat$BaseCompoundButtonCompat {
  public ColorStateList getButtonTintList(CompoundButton paramCompoundButton) {
    return CompoundButtonCompatLollipop.getButtonTintList(paramCompoundButton);
  }
  
  public PorterDuff.Mode getButtonTintMode(CompoundButton paramCompoundButton) {
    return CompoundButtonCompatLollipop.getButtonTintMode(paramCompoundButton);
  }
  
  public void setButtonTintList(CompoundButton paramCompoundButton, ColorStateList paramColorStateList) {
    CompoundButtonCompatLollipop.setButtonTintList(paramCompoundButton, paramColorStateList);
  }
  
  public void setButtonTintMode(CompoundButton paramCompoundButton, PorterDuff.Mode paramMode) {
    CompoundButtonCompatLollipop.setButtonTintMode(paramCompoundButton, paramMode);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\CompoundButtonCompat$LollipopCompoundButtonImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */