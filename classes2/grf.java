import android.view.View;
import android.view.inputmethod.InputMethodManager;
import com.jeremyfeinstein.slidingmenu.lib.SlidingMenu;

final class grf implements View.OnClickListener {
  private SlidingMenu a = gpu.l();
  
  public void onClick(View paramView) {
    InputMethodManager inputMethodManager = (InputMethodManager)paramView.getContext().getSystemService("input_method");
    if (inputMethodManager != null)
      inputMethodManager.hideSoftInputFromWindow(paramView.getWindowToken(), 0); 
    if (hau.a().w() != null)
      gpu.c(hau.a().w()); 
    this.a.f();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\grf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */