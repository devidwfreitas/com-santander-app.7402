package android.support.v7.widget;

import android.support.v4.view.ViewCompat;
import android.view.View;

final class GridLayout$5 extends GridLayout$Alignment {
  public int getAlignmentValue(View paramView, int paramInt1, int paramInt2) {
    boolean bool = true;
    if (ViewCompat.getLayoutDirection(paramView) != 1)
      bool = false; 
    if (!bool) {
      GridLayout$Alignment gridLayout$Alignment1 = ltr;
      return gridLayout$Alignment1.getAlignmentValue(paramView, paramInt1, paramInt2);
    } 
    GridLayout$Alignment gridLayout$Alignment = rtl;
    return gridLayout$Alignment.getAlignmentValue(paramView, paramInt1, paramInt2);
  }
  
  String getDebugString() {
    return "SWITCHING[L:" + ltr.getDebugString() + ", R:" + rtl.getDebugString() + "]";
  }
  
  int getGravityOffset(View paramView, int paramInt) {
    boolean bool = true;
    if (ViewCompat.getLayoutDirection(paramView) != 1)
      bool = false; 
    if (!bool) {
      GridLayout$Alignment gridLayout$Alignment1 = ltr;
      return gridLayout$Alignment1.getGravityOffset(paramView, paramInt);
    } 
    GridLayout$Alignment gridLayout$Alignment = rtl;
    return gridLayout$Alignment.getGravityOffset(paramView, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\GridLayout$5.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */