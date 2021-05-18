import android.graphics.PointF;
import android.view.MotionEvent;
import android.view.View;

class mft implements View.OnTouchListener {
  mft(mfq parammfq) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent) {
    PointF pointF = this.a.a(paramMotionEvent);
    MotionEvent motionEvent = MotionEvent.obtain(paramMotionEvent.getDownTime(), paramMotionEvent.getEventTime(), paramMotionEvent.getAction(), pointF.x, pointF.y, paramMotionEvent.getMetaState());
    return this.a.a.dispatchTouchEvent(motionEvent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mft.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */