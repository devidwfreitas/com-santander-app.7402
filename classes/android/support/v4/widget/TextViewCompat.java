package android.support.v4.widget;

import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.StyleRes;
import android.widget.TextView;

public final class TextViewCompat {
  static final TextViewCompat$TextViewCompatImpl IMPL = new TextViewCompat$BaseTextViewCompatImpl();
  
  public static Drawable[] getCompoundDrawablesRelative(@NonNull TextView paramTextView) {
    return IMPL.getCompoundDrawablesRelative(paramTextView);
  }
  
  public static int getMaxLines(@NonNull TextView paramTextView) {
    return IMPL.getMaxLines(paramTextView);
  }
  
  public static int getMinLines(@NonNull TextView paramTextView) {
    return IMPL.getMinLines(paramTextView);
  }
  
  public static void setCompoundDrawablesRelative(@NonNull TextView paramTextView, @Nullable Drawable paramDrawable1, @Nullable Drawable paramDrawable2, @Nullable Drawable paramDrawable3, @Nullable Drawable paramDrawable4) {
    IMPL.setCompoundDrawablesRelative(paramTextView, paramDrawable1, paramDrawable2, paramDrawable3, paramDrawable4);
  }
  
  public static void setCompoundDrawablesRelativeWithIntrinsicBounds(@NonNull TextView paramTextView, @DrawableRes int paramInt1, @DrawableRes int paramInt2, @DrawableRes int paramInt3, @DrawableRes int paramInt4) {
    IMPL.setCompoundDrawablesRelativeWithIntrinsicBounds(paramTextView, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public static void setCompoundDrawablesRelativeWithIntrinsicBounds(@NonNull TextView paramTextView, @Nullable Drawable paramDrawable1, @Nullable Drawable paramDrawable2, @Nullable Drawable paramDrawable3, @Nullable Drawable paramDrawable4) {
    IMPL.setCompoundDrawablesRelativeWithIntrinsicBounds(paramTextView, paramDrawable1, paramDrawable2, paramDrawable3, paramDrawable4);
  }
  
  public static void setTextAppearance(@NonNull TextView paramTextView, @StyleRes int paramInt) {
    IMPL.setTextAppearance(paramTextView, paramInt);
  }
  
  static {
    int i = Build.VERSION.SDK_INT;
    if (i >= 23) {
      IMPL = new TextViewCompat$Api23TextViewCompatImpl();
      return;
    } 
    if (i >= 18) {
      IMPL = new TextViewCompat$JbMr2TextViewCompatImpl();
      return;
    } 
    if (i >= 17) {
      IMPL = new TextViewCompat$JbMr1TextViewCompatImpl();
      return;
    } 
    if (i >= 16) {
      IMPL = new TextViewCompat$JbTextViewCompatImpl();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\TextViewCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */