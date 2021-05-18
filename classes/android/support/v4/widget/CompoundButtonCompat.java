package android.support.v4.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.widget.CompoundButton;

public final class CompoundButtonCompat {
  private static final CompoundButtonCompat$CompoundButtonCompatImpl IMPL = new CompoundButtonCompat$BaseCompoundButtonCompat();
  
  @Nullable
  public static Drawable getButtonDrawable(@NonNull CompoundButton paramCompoundButton) {
    return IMPL.getButtonDrawable(paramCompoundButton);
  }
  
  @Nullable
  public static ColorStateList getButtonTintList(@NonNull CompoundButton paramCompoundButton) {
    return IMPL.getButtonTintList(paramCompoundButton);
  }
  
  @Nullable
  public static PorterDuff.Mode getButtonTintMode(@NonNull CompoundButton paramCompoundButton) {
    return IMPL.getButtonTintMode(paramCompoundButton);
  }
  
  public static void setButtonTintList(@NonNull CompoundButton paramCompoundButton, @Nullable ColorStateList paramColorStateList) {
    IMPL.setButtonTintList(paramCompoundButton, paramColorStateList);
  }
  
  public static void setButtonTintMode(@NonNull CompoundButton paramCompoundButton, @Nullable PorterDuff.Mode paramMode) {
    IMPL.setButtonTintMode(paramCompoundButton, paramMode);
  }
  
  static {
    int i = Build.VERSION.SDK_INT;
    if (i >= 23) {
      IMPL = new CompoundButtonCompat$Api23CompoundButtonImpl();
      return;
    } 
    if (i >= 21) {
      IMPL = new CompoundButtonCompat$LollipopCompoundButtonImpl();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\CompoundButtonCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */