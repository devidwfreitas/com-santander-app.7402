import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.PathEffect;
import com.github.mikephil.charting.charts.RadarChart;
import java.util.List;

public class ckl extends ckj {
  private RadarChart q;
  
  private Path r = new Path();
  
  public ckl(clh paramclh, cgb paramcgb, RadarChart paramRadarChart) {
    super(paramclh, paramcgb, (cle)null);
    this.q = paramRadarChart;
  }
  
  protected void a(float paramFloat1, float paramFloat2) {
    int i;
    int j = this.a.j();
    double d4 = Math.abs(paramFloat2 - paramFloat1);
    if (j == 0 || d4 <= 0.0D || Double.isInfinite(d4)) {
      this.a.b = new float[0];
      this.a.c = new float[0];
      this.a.d = 0;
      return;
    } 
    double d2 = clg.a(d4 / j);
    double d1 = d2;
    if (this.a.k()) {
      d1 = d2;
      if (d2 < this.a.l())
        d1 = this.a.l(); 
    } 
    d2 = clg.a(Math.pow(10.0D, (int)Math.log10(d1)));
    double d3 = d1;
    if ((int)(d1 / d2) > 5)
      d3 = Math.floor(10.0D * d2); 
    boolean bool = this.a.c();
    if (bool) {
      i = 1;
    } else {
      i = 0;
    } 
    if (this.a.i()) {
      paramFloat2 = (float)d4 / (j - 1);
      this.a.d = j;
      if (this.a.b.length < j)
        this.a.b = new float[j]; 
      for (i = 0; i < j; i++) {
        this.a.b[i] = paramFloat1;
        paramFloat1 += paramFloat2;
      } 
      i = j;
    } else {
      if (d3 == 0.0D) {
        d2 = 0.0D;
      } else {
        d2 = Math.ceil(paramFloat1 / d3) * d3;
      } 
      d1 = d2;
      if (bool)
        d1 = d2 - d3; 
      if (d3 == 0.0D) {
        d2 = 0.0D;
      } else {
        d2 = clg.b(Math.floor(paramFloat2 / d3) * d3);
      } 
      j = i;
      if (d3 != 0.0D) {
        d4 = d1;
        while (true) {
          j = i;
          if (d4 <= d2) {
            d4 += d3;
            i++;
            continue;
          } 
          break;
        } 
      } 
      this.a.d = ++j;
      if (this.a.b.length < j)
        this.a.b = new float[j]; 
      i = 0;
      while (i < j) {
        d2 = d1;
        if (d1 == 0.0D)
          d2 = 0.0D; 
        this.a.b[i] = (float)d2;
        i++;
        d1 = d2 + d3;
      } 
      i = j;
    } 
    if (d3 < 1.0D) {
      this.a.e = (int)Math.ceil(-Math.log10(d3));
    } else {
      this.a.e = 0;
    } 
    if (bool) {
      if (this.a.c.length < i)
        this.a.c = new float[i]; 
      paramFloat1 = (this.a.b[1] - this.a.b[0]) / 2.0F;
      for (j = 0; j < i; j++)
        this.a.c[j] = this.a.b[j] + paramFloat1; 
    } 
    this.a.t = this.a.b[0];
    this.a.s = this.a.b[i - 1];
    this.a.u = Math.abs(this.a.s - this.a.t);
  }
  
  public void a(Canvas paramCanvas) {
    int i;
    int j;
    if (!this.g.K() || !this.g.h())
      return; 
    this.d.setTypeface(this.g.H());
    this.d.setTextSize(this.g.I());
    this.d.setColor(this.g.J());
    cla cla1 = this.q.am();
    cla cla2 = cla.a(0.0F, 0.0F);
    float f = this.q.c();
    if (this.g.Q()) {
      i = 0;
    } else {
      i = 1;
    } 
    if (this.g.P()) {
      j = this.g.d;
    } else {
      j = this.g.d - 1;
    } 
    while (i < j) {
      clg.a(cla1, (this.g.b[i] - this.g.t) * f, this.q.z(), cla2);
      paramCanvas.drawText(this.g.d(i), cla2.a + 10.0F, cla2.b, this.d);
      i++;
    } 
    cla.a(cla1);
    cla.a(cla2);
  }
  
  public void d(Canvas paramCanvas) {
    List<cfw> list = this.g.n();
    if (list == null)
      return; 
    float f1 = this.q.d();
    float f2 = this.q.c();
    cla cla1 = this.q.am();
    cla cla2 = cla.a(0.0F, 0.0F);
    for (int i = 0; i < list.size(); i++) {
      cfw cfw = list.get(i);
      if (cfw.K()) {
        this.f.setColor(cfw.c());
        this.f.setPathEffect((PathEffect)cfw.f());
        this.f.setStrokeWidth(cfw.b());
        float f3 = cfw.a();
        float f4 = this.q.O();
        Path path = this.r;
        path.reset();
        for (int j = 0; j < ((chb)this.q.aC()).o().I(); j++) {
          clg.a(cla1, (f3 - f4) * f2, j * f1 + this.q.z(), cla2);
          if (j == 0) {
            path.moveTo(cla2.a, cla2.b);
          } else {
            path.lineTo(cla2.a, cla2.b);
          } 
        } 
        path.close();
        paramCanvas.drawPath(path, this.f);
      } 
    } 
    cla.a(cla1);
    cla.a(cla2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ckl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */