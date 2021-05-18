package android.support.v7.widget;

import android.view.View;

final class GridLayout$7 extends GridLayout$Alignment {
  public int getAlignmentValue(View paramView, int paramInt1, int paramInt2) {
    if (paramView.getVisibility() == 8)
      return 0; 
    paramInt2 = paramView.getBaseline();
    paramInt1 = paramInt2;
    return (paramInt2 == -1) ? Integer.MIN_VALUE : paramInt1;
  }
  
  public GridLayout$Bounds getBounds() {
    return new GridLayout$7$1(this);
  }
  
  String getDebugString() {
    return "BASELINE";
  }
  
  int getGravityOffset(View paramView, int paramInt) {
    return 0;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\GridLayout$7.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */