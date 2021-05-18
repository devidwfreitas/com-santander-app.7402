package android.support.v7.widget;

import android.view.View;

class GridLayout$7$1 extends GridLayout$Bounds {
  private int size;
  
  protected int getOffset(GridLayout paramGridLayout, View paramView, GridLayout$Alignment paramGridLayout$Alignment, int paramInt, boolean paramBoolean) {
    return Math.max(0, super.getOffset(paramGridLayout, paramView, paramGridLayout$Alignment, paramInt, paramBoolean));
  }
  
  protected void include(int paramInt1, int paramInt2) {
    super.include(paramInt1, paramInt2);
    this.size = Math.max(this.size, paramInt1 + paramInt2);
  }
  
  protected void reset() {
    super.reset();
    this.size = Integer.MIN_VALUE;
  }
  
  protected int size(boolean paramBoolean) {
    return Math.max(super.size(paramBoolean), this.size);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\GridLayout$7$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */