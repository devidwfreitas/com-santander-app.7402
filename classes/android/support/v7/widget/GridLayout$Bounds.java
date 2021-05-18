package android.support.v7.widget;

import android.support.v4.view.ViewGroupCompat;
import android.view.View;

class GridLayout$Bounds {
  public int after;
  
  public int before;
  
  public int flexibility;
  
  GridLayout$Bounds() {
    reset();
  }
  
  protected int getOffset(GridLayout paramGridLayout, View paramView, GridLayout$Alignment paramGridLayout$Alignment, int paramInt, boolean paramBoolean) {
    return this.before - paramGridLayout$Alignment.getAlignmentValue(paramView, paramInt, ViewGroupCompat.getLayoutMode(paramGridLayout));
  }
  
  protected void include(int paramInt1, int paramInt2) {
    this.before = Math.max(this.before, paramInt1);
    this.after = Math.max(this.after, paramInt2);
  }
  
  protected final void include(GridLayout paramGridLayout, View paramView, GridLayout$Spec paramGridLayout$Spec, GridLayout$Axis paramGridLayout$Axis, int paramInt) {
    this.flexibility &= paramGridLayout$Spec.getFlexibility();
    int i = paramGridLayout$Spec.getAbsoluteAlignment(paramGridLayout$Axis.horizontal).getAlignmentValue(paramView, paramInt, ViewGroupCompat.getLayoutMode(paramGridLayout));
    include(i, paramInt - i);
  }
  
  protected void reset() {
    this.before = Integer.MIN_VALUE;
    this.after = Integer.MIN_VALUE;
    this.flexibility = 2;
  }
  
  protected int size(boolean paramBoolean) {
    return (!paramBoolean && GridLayout.canStretch(this.flexibility)) ? 100000 : (this.before + this.after);
  }
  
  public String toString() {
    return "Bounds{before=" + this.before + ", after=" + this.after + '}';
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\GridLayout$Bounds.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */