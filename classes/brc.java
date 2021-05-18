import android.view.MotionEvent;
import android.view.View;

class brc implements View.OnTouchListener {
  brc(bqy parambqy) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent) {
    if (!paramView.hasFocus())
      paramView.requestFocus(); 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\brc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */