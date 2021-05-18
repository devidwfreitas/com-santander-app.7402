package android.support.v7.widget;

import android.view.View;

public abstract class GridLayout$Alignment {
  abstract int getAlignmentValue(View paramView, int paramInt1, int paramInt2);
  
  GridLayout$Bounds getBounds() {
    return new GridLayout$Bounds();
  }
  
  abstract String getDebugString();
  
  abstract int getGravityOffset(View paramView, int paramInt);
  
  int getSizeInCell(View paramView, int paramInt1, int paramInt2) {
    return paramInt1;
  }
  
  public String toString() {
    return "Alignment:" + getDebugString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\GridLayout$Alignment.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */