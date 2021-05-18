package android.support.design.widget;

import android.content.Context;
import android.support.annotation.RestrictTo;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R;
import android.support.v7.widget.AppCompatImageButton;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Checkable;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class CheckableImageButton extends AppCompatImageButton implements Checkable {
  private static final int[] DRAWABLE_STATE_CHECKED = new int[] { 16842912 };
  
  private boolean mChecked;
  
  public CheckableImageButton(Context paramContext) {
    this(paramContext, (AttributeSet)null);
  }
  
  public CheckableImageButton(Context paramContext, AttributeSet paramAttributeSet) {
    this(paramContext, paramAttributeSet, R.attr.imageButtonStyle);
  }
  
  public CheckableImageButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    ViewCompat.setAccessibilityDelegate((View)this, new CheckableImageButton$1(this));
  }
  
  public boolean isChecked() {
    return this.mChecked;
  }
  
  public int[] onCreateDrawableState(int paramInt) {
    return this.mChecked ? mergeDrawableStates(super.onCreateDrawableState(DRAWABLE_STATE_CHECKED.length + paramInt), DRAWABLE_STATE_CHECKED) : super.onCreateDrawableState(paramInt);
  }
  
  public void setChecked(boolean paramBoolean) {
    if (this.mChecked != paramBoolean) {
      this.mChecked = paramBoolean;
      refreshDrawableState();
      sendAccessibilityEvent(2048);
    } 
  }
  
  public void toggle() {
    boolean bool;
    if (!this.mChecked) {
      bool = true;
    } else {
      bool = false;
    } 
    setChecked(bool);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\CheckableImageButton.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */