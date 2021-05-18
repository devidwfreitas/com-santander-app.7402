package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v7.view.ContextThemeWrapper;
import android.view.LayoutInflater;

public final class ThemedSpinnerAdapter$Helper {
  private final Context mContext;
  
  private LayoutInflater mDropDownInflater;
  
  private final LayoutInflater mInflater;
  
  public ThemedSpinnerAdapter$Helper(@NonNull Context paramContext) {
    this.mContext = paramContext;
    this.mInflater = LayoutInflater.from(paramContext);
  }
  
  @NonNull
  public LayoutInflater getDropDownViewInflater() {
    return (this.mDropDownInflater != null) ? this.mDropDownInflater : this.mInflater;
  }
  
  @Nullable
  public Resources.Theme getDropDownViewTheme() {
    return (this.mDropDownInflater == null) ? null : this.mDropDownInflater.getContext().getTheme();
  }
  
  public void setDropDownViewTheme(@Nullable Resources.Theme paramTheme) {
    if (paramTheme == null) {
      this.mDropDownInflater = null;
      return;
    } 
    if (paramTheme == this.mContext.getTheme()) {
      this.mDropDownInflater = this.mInflater;
      return;
    } 
    this.mDropDownInflater = LayoutInflater.from((Context)new ContextThemeWrapper(this.mContext, paramTheme));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ThemedSpinnerAdapter$Helper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */