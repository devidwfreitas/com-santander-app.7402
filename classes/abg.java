import android.view.MotionEvent;
import android.view.View;

class abg implements View.OnTouchListener {
  abg(abb paramabb) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent) {
    if ((abb.g(this.a) && paramMotionEvent.getAction() == 4) || (abb.h(this.a) && paramMotionEvent.getAction() == 1)) {
      this.a.c();
      return true;
    } 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\abg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */