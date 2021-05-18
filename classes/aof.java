import android.view.MotionEvent;
import android.view.View;

class aof implements View.OnTouchListener {
  aof(aoa paramaoa) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent) {
    if ((aoa.i(this.a) && paramMotionEvent.getAction() == 4) || (aoa.j(this.a) && paramMotionEvent.getAction() == 1)) {
      this.a.c();
      return true;
    } 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aof.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */