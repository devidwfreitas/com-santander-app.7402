package android.support.v7.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v7.appcompat.R;
import android.util.AttributeSet;
import android.view.View;

class ActionMenuPresenter$OverflowMenuButton extends AppCompatImageView implements ActionMenuView$ActionMenuChildView {
  private final float[] mTempPts = new float[2];
  
  public ActionMenuPresenter$OverflowMenuButton(Context paramContext) {
    super(paramContext, (AttributeSet)null, R.attr.actionOverflowButtonStyle);
    setClickable(true);
    setFocusable(true);
    setVisibility(0);
    setEnabled(true);
    setOnTouchListener(new ActionMenuPresenter$OverflowMenuButton$1(this, (View)this, paramActionMenuPresenter));
  }
  
  public boolean needsDividerAfter() {
    return false;
  }
  
  public boolean needsDividerBefore() {
    return false;
  }
  
  public boolean performClick() {
    if (super.performClick())
      return true; 
    playSoundEffect(0);
    ActionMenuPresenter.this.showOverflowMenu();
    return true;
  }
  
  protected boolean setFrame(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    boolean bool = super.setFrame(paramInt1, paramInt2, paramInt3, paramInt4);
    Drawable drawable1 = getDrawable();
    Drawable drawable2 = getBackground();
    if (drawable1 != null && drawable2 != null) {
      int i = getWidth();
      paramInt2 = getHeight();
      paramInt1 = Math.max(i, paramInt2) / 2;
      int j = getPaddingLeft();
      int k = getPaddingRight();
      paramInt3 = getPaddingTop();
      paramInt4 = getPaddingBottom();
      i = (i + j - k) / 2;
      paramInt2 = (paramInt2 + paramInt3 - paramInt4) / 2;
      DrawableCompat.setHotspotBounds(drawable2, i - paramInt1, paramInt2 - paramInt1, i + paramInt1, paramInt2 + paramInt1);
    } 
    return bool;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ActionMenuPresenter$OverflowMenuButton.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */