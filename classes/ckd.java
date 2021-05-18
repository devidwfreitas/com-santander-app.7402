import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.drawable.Drawable;
import com.github.mikephil.charting.charts.RadarChart;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.RadarEntry;

public class ckd extends cka {
  protected RadarChart a;
  
  protected Paint b;
  
  protected Paint c;
  
  protected Path d = new Path();
  
  protected Path e = new Path();
  
  public ckd(RadarChart paramRadarChart, cdq paramcdq, clh paramclh) {
    super(paramcdq, paramclh);
    this.a = paramRadarChart;
    this.i = new Paint(1);
    this.i.setStyle(Paint.Style.STROKE);
    this.i.setStrokeWidth(2.0F);
    this.i.setColor(Color.rgb(255, 187, 115));
    this.b = new Paint(1);
    this.b.setStyle(Paint.Style.STROKE);
    this.c = new Paint(1);
  }
  
  public void a() {}
  
  public void a(Canvas paramCanvas) {
    chb chb = (chb)this.a.aC();
    int i = chb.o().I();
    for (cit cit : chb.i()) {
      if (cit.B())
        a(paramCanvas, cit, i); 
    } 
  }
  
  protected void a(Canvas paramCanvas, cit paramcit, int paramInt) {
    float f1 = this.g.b();
    float f2 = this.g.a();
    float f3 = this.a.d();
    float f4 = this.a.c();
    cla cla1 = this.a.am();
    cla cla2 = cla.a(0.0F, 0.0F);
    Path path = this.d;
    path.reset();
    int i = 0;
    boolean bool = false;
    while (i < paramcit.I()) {
      this.h.setColor(paramcit.e(i));
      clg.a(cla1, (paramcit.m(i).c() - this.a.O()) * f4 * f2, i * f3 * f1 + this.a.z(), cla2);
      if (!Float.isNaN(cla2.a))
        if (!bool) {
          path.moveTo(cla2.a, cla2.b);
          bool = true;
        } else {
          path.lineTo(cla2.a, cla2.b);
        }  
      i++;
    } 
    if (paramcit.I() > paramInt)
      path.lineTo(cla1.a, cla1.b); 
    path.close();
    if (paramcit.ab()) {
      Drawable drawable = paramcit.Y();
      if (drawable != null) {
        a(paramCanvas, path, drawable);
      } else {
        a(paramCanvas, path, paramcit.X(), paramcit.Z());
      } 
    } 
    this.h.setStrokeWidth(paramcit.aa());
    this.h.setStyle(Paint.Style.STROKE);
    if (!paramcit.ab() || paramcit.Z() < 255)
      paramCanvas.drawPath(path, this.h); 
    cla.a(cla1);
    cla.a(cla2);
  }
  
  public void a(Canvas paramCanvas, cla paramcla, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2, float paramFloat3) {
    paramCanvas.save();
    paramFloat2 = clg.a(paramFloat2);
    paramFloat1 = clg.a(paramFloat1);
    if (paramInt1 != 1122867) {
      Path path = this.e;
      path.reset();
      path.addCircle(paramcla.a, paramcla.b, paramFloat2, Path.Direction.CW);
      if (paramFloat1 > 0.0F)
        path.addCircle(paramcla.a, paramcla.b, paramFloat1, Path.Direction.CCW); 
      this.c.setColor(paramInt1);
      this.c.setStyle(Paint.Style.FILL);
      paramCanvas.drawPath(path, this.c);
    } 
    if (paramInt2 != 1122867) {
      this.c.setColor(paramInt2);
      this.c.setStyle(Paint.Style.STROKE);
      this.c.setStrokeWidth(clg.a(paramFloat3));
      paramCanvas.drawCircle(paramcla.a, paramcla.b, paramFloat2, this.c);
    } 
    paramCanvas.restore();
  }
  
  public void a(Canvas paramCanvas, chv[] paramArrayOfchv) {
    float f1 = this.a.d();
    float f2 = this.a.c();
    cla cla1 = this.a.am();
    cla cla2 = cla.a(0.0F, 0.0F);
    chb chb = (chb)this.a.aC();
    int j = paramArrayOfchv.length;
    for (int i = 0; i < j; i++) {
      chv chv1 = paramArrayOfchv[i];
      cit cit = chb.a(chv1.f());
      if (cit != null && cit.q()) {
        RadarEntry radarEntry = cit.m((int)chv1.a());
        if (a((Entry)radarEntry, cit)) {
          clg.a(cla1, (radarEntry.c() - this.a.O()) * f2 * this.g.a(), chv1.a() * f1 * this.g.b() + this.a.z(), cla2);
          chv1.a(cla2.a, cla2.b);
          a(paramCanvas, cla2.a, cla2.b, cit);
          if (cit.b() && !Float.isNaN(cla2.a) && !Float.isNaN(cla2.b)) {
            int m = cit.d();
            int k = m;
            if (m == 1122867)
              k = cit.e(0); 
            if (cit.e() < 255)
              k = cku.a(k, cit.e()); 
            a(paramCanvas, cla2, cit.f(), cit.g(), cit.c(), k, cit.h());
          } 
        } 
      } 
    } 
    cla.a(cla1);
    cla.a(cla2);
  }
  
  public Paint b() {
    return this.b;
  }
  
  public void b(Canvas paramCanvas) {
    float f1 = this.g.b();
    float f2 = this.g.a();
    float f3 = this.a.d();
    float f4 = this.a.c();
    cla cla1 = this.a.am();
    cla cla2 = cla.a(0.0F, 0.0F);
    float f5 = clg.a(5.0F);
    int i = 0;
    label15: while (i < ((chb)this.a.aC()).d()) {
      cit cit = ((chb)this.a.aC()).a(i);
      if (!a(cit))
        continue; 
      b(cit);
      int j = 0;
      while (true) {
        if (j < cit.I()) {
          RadarEntry radarEntry = cit.m(j);
          clg.a(cla1, (radarEntry.c() - this.a.O()) * f4 * f2, j * f3 * f1 + this.a.z(), cla2);
          a(paramCanvas, cit.r(), radarEntry.c(), (Entry)radarEntry, i, cla2.a, cla2.b - f5, cit.i(j));
          j++;
          continue;
        } 
        i++;
        continue label15;
      } 
    } 
    cla.a(cla1);
    cla.a(cla2);
  }
  
  public void c(Canvas paramCanvas) {
    d(paramCanvas);
  }
  
  protected void d(Canvas paramCanvas) {
    float f1 = this.a.d();
    float f2 = this.a.c();
    float f3 = this.a.z();
    cla cla1 = this.a.am();
    this.b.setStrokeWidth(this.a.f());
    this.b.setColor(this.a.n());
    this.b.setAlpha(this.a.h());
    int j = this.a.p();
    int k = ((chb)this.a.aC()).o().I();
    cla cla2 = cla.a(0.0F, 0.0F);
    int i;
    for (i = 0; i < k; i += j + 1) {
      clg.a(cla1, this.a.q() * f2, i * f1 + f3, cla2);
      paramCanvas.drawLine(cla1.a, cla1.b, cla2.a, cla2.b, this.b);
    } 
    cla.a(cla2);
    this.b.setStrokeWidth(this.a.g());
    this.b.setColor(this.a.o());
    this.b.setAlpha(this.a.h());
    k = (this.a.e()).d;
    cla2 = cla.a(0.0F, 0.0F);
    cla cla3 = cla.a(0.0F, 0.0F);
    for (i = 0; i < k; i++) {
      for (j = 0; j < ((chb)this.a.aC()).n(); j++) {
        float f = ((this.a.e()).b[i] - this.a.O()) * f2;
        clg.a(cla1, f, j * f1 + f3, cla2);
        clg.a(cla1, f, (j + 1) * f1 + f3, cla3);
        paramCanvas.drawLine(cla2.a, cla2.b, cla3.a, cla3.b, this.b);
      } 
    } 
    cla.a(cla2);
    cla.a(cla3);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ckd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */