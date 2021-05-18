import android.graphics.Point;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.SeekBar;

public class mfp extends mfq {
  public mfp(SeekBar paramSeekBar, AttributeSet paramAttributeSet, int paramInt) {
    super(paramSeekBar, paramAttributeSet, paramInt);
  }
  
  private int d(int paramInt) {
    return c(paramInt) - this.c.getMeasuredWidth() / 2 + this.a.getHeight() / 2;
  }
  
  private int j() {
    return -(this.a.getHeight() + this.c.getMeasuredHeight() + this.e);
  }
  
  protected Point a() {
    return new Point(d(this.a.getMax() / 2), j());
  }
  
  protected PointF a(MotionEvent paramMotionEvent) {
    return new PointF(paramMotionEvent.getRawX() - this.a.getX(), this.a.getY());
  }
  
  protected Point b() {
    return new Point(d(this.a.getProgress()), j());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mfp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */