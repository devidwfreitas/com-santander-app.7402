import android.annotation.SuppressLint;
import android.view.MotionEvent;
import android.view.View;
import br.com.santander.uisdk.dropdown.SantanderDropDownView;

public class amm implements View.OnTouchListener {
  public amm(SantanderDropDownView paramSantanderDropDownView) {}
  
  @SuppressLint({"ClickableViewAccessibility"})
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent) {
    SantanderDropDownView.c(this.a);
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\amm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */