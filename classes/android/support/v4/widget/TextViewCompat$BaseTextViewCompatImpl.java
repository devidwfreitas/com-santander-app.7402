package android.support.v4.widget;

import android.graphics.drawable.Drawable;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.StyleRes;
import android.widget.TextView;

class TextViewCompat$BaseTextViewCompatImpl implements TextViewCompat$TextViewCompatImpl {
  public Drawable[] getCompoundDrawablesRelative(@NonNull TextView paramTextView) {
    return TextViewCompatGingerbread.getCompoundDrawablesRelative(paramTextView);
  }
  
  public int getMaxLines(TextView paramTextView) {
    return TextViewCompatGingerbread.getMaxLines(paramTextView);
  }
  
  public int getMinLines(TextView paramTextView) {
    return TextViewCompatGingerbread.getMinLines(paramTextView);
  }
  
  public void setCompoundDrawablesRelative(@NonNull TextView paramTextView, @Nullable Drawable paramDrawable1, @Nullable Drawable paramDrawable2, @Nullable Drawable paramDrawable3, @Nullable Drawable paramDrawable4) {
    paramTextView.setCompoundDrawables(paramDrawable1, paramDrawable2, paramDrawable3, paramDrawable4);
  }
  
  public void setCompoundDrawablesRelativeWithIntrinsicBounds(@NonNull TextView paramTextView, @DrawableRes int paramInt1, @DrawableRes int paramInt2, @DrawableRes int paramInt3, @DrawableRes int paramInt4) {
    paramTextView.setCompoundDrawablesWithIntrinsicBounds(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void setCompoundDrawablesRelativeWithIntrinsicBounds(@NonNull TextView paramTextView, @Nullable Drawable paramDrawable1, @Nullable Drawable paramDrawable2, @Nullable Drawable paramDrawable3, @Nullable Drawable paramDrawable4) {
    paramTextView.setCompoundDrawablesWithIntrinsicBounds(paramDrawable1, paramDrawable2, paramDrawable3, paramDrawable4);
  }
  
  public void setTextAppearance(TextView paramTextView, @StyleRes int paramInt) {
    TextViewCompatGingerbread.setTextAppearance(paramTextView, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\TextViewCompat$BaseTextViewCompatImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */