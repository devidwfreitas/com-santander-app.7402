package android.support.v7.widget;

import android.view.View;

final class GridLayout$6 extends GridLayout$Alignment {
  public int getAlignmentValue(View paramView, int paramInt1, int paramInt2) {
    return paramInt1 >> 1;
  }
  
  String getDebugString() {
    return "CENTER";
  }
  
  int getGravityOffset(View paramView, int paramInt) {
    return paramInt >> 1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\GridLayout$6.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */