import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.github.mikephil.charting.charts.Chart;

public abstract class cjc<T extends Chart<?>> extends GestureDetector.SimpleOnGestureListener implements View.OnTouchListener {
  protected static final int b = 0;
  
  protected static final int c = 1;
  
  protected static final int d = 2;
  
  protected static final int e = 3;
  
  protected static final int f = 4;
  
  protected static final int g = 5;
  
  protected static final int h = 6;
  
  protected cjd a = cjd.NONE;
  
  protected int i = 0;
  
  protected chv j;
  
  protected GestureDetector k;
  
  protected T l;
  
  public cjc(T paramT) {
    this.l = paramT;
    this.k = new GestureDetector(paramT.getContext(), (GestureDetector.OnGestureListener)this);
  }
  
  protected static float a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4) {
    paramFloat1 -= paramFloat2;
    paramFloat2 = paramFloat3 - paramFloat4;
    return (float)Math.sqrt((paramFloat1 * paramFloat1 + paramFloat2 * paramFloat2));
  }
  
  public void a(MotionEvent paramMotionEvent) {
    cje cje = this.l.af();
    if (cje != null)
      cje.a(paramMotionEvent, this.a); 
  }
  
  public void a(chv paramchv) {
    this.j = paramchv;
  }
  
  protected void a(chv paramchv, MotionEvent paramMotionEvent) {
    if (paramchv == null || paramchv.a(this.j)) {
      this.l.a(null, true);
      this.j = null;
      return;
    } 
    this.l.a(paramchv, true);
    this.j = paramchv;
  }
  
  public void b(MotionEvent paramMotionEvent) {
    cje cje = this.l.af();
    if (cje != null)
      cje.b(paramMotionEvent, this.a); 
  }
  
  public int d() {
    return this.i;
  }
  
  public cjd e() {
    return this.a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cjc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */