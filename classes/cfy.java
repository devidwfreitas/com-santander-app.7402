import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import com.github.mikephil.charting.charts.Chart;
import com.github.mikephil.charting.data.Entry;
import java.lang.ref.WeakReference;

public class cfy implements cfm {
  private Context a;
  
  private Drawable b;
  
  private cla c = new cla();
  
  private cla d = new cla();
  
  private WeakReference<Chart> e;
  
  private ckw f = new ckw();
  
  private Rect g = new Rect();
  
  public cfy(Context paramContext, int paramInt) {
    this.a = paramContext;
    if (Build.VERSION.SDK_INT >= 21) {
      this.b = this.a.getResources().getDrawable(paramInt, null);
      return;
    } 
    this.b = this.a.getResources().getDrawable(paramInt);
  }
  
  public cla a() {
    return this.c;
  }
  
  public cla a(float paramFloat1, float paramFloat2) {
    cla cla1 = a();
    this.d.a = cla1.a;
    this.d.b = cla1.b;
    Chart chart = c();
    float f2 = this.f.a;
    float f3 = this.f.b;
    float f1 = f2;
    if (f2 == 0.0F) {
      f1 = f2;
      if (this.b != null)
        f1 = this.b.getIntrinsicWidth(); 
    } 
    f2 = f3;
    if (f3 == 0.0F) {
      f2 = f3;
      if (this.b != null)
        f2 = this.b.getIntrinsicHeight(); 
    } 
    if (this.d.a + paramFloat1 < 0.0F) {
      this.d.a = -paramFloat1;
    } else if (chart != null && paramFloat1 + f1 + this.d.a > chart.getWidth()) {
      this.d.a = chart.getWidth() - paramFloat1 - f1;
    } 
    if (this.d.b + paramFloat2 < 0.0F) {
      this.d.b = -paramFloat2;
      return this.d;
    } 
    if (chart != null && paramFloat2 + f2 + this.d.b > chart.getHeight())
      this.d.b = chart.getHeight() - paramFloat2 - f2; 
    return this.d;
  }
  
  public void a(Canvas paramCanvas, float paramFloat1, float paramFloat2) {
    if (this.b == null)
      return; 
    cla cla1 = a(paramFloat1, paramFloat2);
    float f2 = this.f.a;
    float f3 = this.f.b;
    float f1 = f2;
    if (f2 == 0.0F) {
      f1 = f2;
      if (this.b != null)
        f1 = this.b.getIntrinsicWidth(); 
    } 
    f2 = f3;
    if (f3 == 0.0F) {
      f2 = f3;
      if (this.b != null)
        f2 = this.b.getIntrinsicHeight(); 
    } 
    this.b.copyBounds(this.g);
    Drawable drawable = this.b;
    int i = this.g.left;
    int j = this.g.top;
    int k = this.g.left;
    int m = (int)f1;
    int n = this.g.top;
    drawable.setBounds(i, j, m + k, (int)f2 + n);
    i = paramCanvas.save();
    paramCanvas.translate(cla1.a + paramFloat1, cla1.b + paramFloat2);
    this.b.draw(paramCanvas);
    paramCanvas.restoreToCount(i);
    this.b.setBounds(this.g);
  }
  
  public void a(ckw paramckw) {
    this.f = paramckw;
    if (this.f == null)
      this.f = new ckw(); 
  }
  
  public void a(cla paramcla) {
    this.c = paramcla;
    if (this.c == null)
      this.c = new cla(); 
  }
  
  public void a(Chart paramChart) {
    this.e = new WeakReference<Chart>(paramChart);
  }
  
  public void a(Entry paramEntry, chv paramchv) {}
  
  public ckw b() {
    return this.f;
  }
  
  public void b(float paramFloat1, float paramFloat2) {
    this.c.a = paramFloat1;
    this.c.b = paramFloat2;
  }
  
  public Chart c() {
    return (this.e == null) ? null : this.e.get();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cfy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */