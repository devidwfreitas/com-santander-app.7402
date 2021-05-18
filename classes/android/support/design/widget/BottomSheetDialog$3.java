package android.support.design.widget;

import android.support.annotation.NonNull;
import android.view.View;

class BottomSheetDialog$3 extends BottomSheetBehavior$BottomSheetCallback {
  public void onSlide(@NonNull View paramView, float paramFloat) {}
  
  public void onStateChanged(@NonNull View paramView, int paramInt) {
    if (paramInt == 5)
      BottomSheetDialog.this.cancel(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\BottomSheetDialog$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */