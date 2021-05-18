import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathEffect;
import android.graphics.RectF;
import com.github.mikephil.charting.charts.BarChart;
import java.util.List;

public class ckh extends ckg {
  protected BarChart n;
  
  protected Path o = new Path();
  
  public ckh(clh paramclh, cfz paramcfz, cle paramcle, BarChart paramBarChart) {
    super(paramclh, paramcfz, paramcle);
    this.n = paramBarChart;
  }
  
  public void a(float paramFloat1, float paramFloat2, boolean paramBoolean) {
    float f2 = paramFloat1;
    float f1 = paramFloat2;
    if (this.s.j() > 10.0F) {
      f2 = paramFloat1;
      f1 = paramFloat2;
      if (!this.s.B()) {
        ckz ckz1 = this.b.a(this.s.g(), this.s.i());
        ckz ckz2 = this.b.a(this.s.g(), this.s.f());
        if (paramBoolean) {
          paramFloat1 = (float)ckz2.b;
          paramFloat2 = (float)ckz1.b;
        } else {
          paramFloat1 = (float)ckz1.b;
          paramFloat2 = (float)ckz2.b;
        } 
        ckz.a(ckz1);
        ckz.a(ckz2);
        f1 = paramFloat2;
        f2 = paramFloat1;
      } 
    } 
    a(f2, f1);
  }
  
  public void a(Canvas paramCanvas) {
    if (!this.g.K() || !this.g.h())
      return; 
    float f = this.g.F();
    this.d.setTypeface(this.g.H());
    this.d.setTextSize(this.g.I());
    this.d.setColor(this.g.J());
    cla cla = cla.a(0.0F, 0.0F);
    if (this.g.L() == cga.TOP) {
      cla.a = 0.0F;
      cla.b = 0.5F;
      a(paramCanvas, f + this.s.h(), cla);
    } else if (this.g.L() == cga.TOP_INSIDE) {
      cla.a = 1.0F;
      cla.b = 0.5F;
      a(paramCanvas, this.s.h() - f, cla);
    } else if (this.g.L() == cga.BOTTOM) {
      cla.a = 1.0F;
      cla.b = 0.5F;
      a(paramCanvas, this.s.g() - f, cla);
    } else if (this.g.L() == cga.BOTTOM_INSIDE) {
      cla.a = 1.0F;
      cla.b = 0.5F;
      a(paramCanvas, f + this.s.g(), cla);
    } else {
      cla.a = 0.0F;
      cla.b = 0.5F;
      a(paramCanvas, this.s.h() + f, cla);
      cla.a = 1.0F;
      cla.b = 0.5F;
      a(paramCanvas, this.s.g() - f, cla);
    } 
    cla.a(cla);
  }
  
  protected void a(Canvas paramCanvas, float paramFloat1, float paramFloat2, Path paramPath) {
    paramPath.moveTo(this.s.h(), paramFloat2);
    paramPath.lineTo(this.s.g(), paramFloat2);
    paramCanvas.drawPath(paramPath, this.c);
    paramPath.reset();
  }
  
  protected void a(Canvas paramCanvas, float paramFloat, cla paramcla) {
    float f = this.g.M();
    boolean bool = this.g.c();
    float[] arrayOfFloat = new float[this.g.d * 2];
    int i;
    for (i = 0; i < arrayOfFloat.length; i += 2) {
      if (bool) {
        arrayOfFloat[i + 1] = this.g.c[i / 2];
      } else {
        arrayOfFloat[i + 1] = this.g.b[i / 2];
      } 
    } 
    this.b.a(arrayOfFloat);
    for (i = 0; i < arrayOfFloat.length; i += 2) {
      float f1 = arrayOfFloat[i + 1];
      if (this.s.f(f1))
        a(paramCanvas, this.g.q().a(this.g.b[i / 2], this.g), paramFloat, f1, paramcla, f); 
    } 
  }
  
  public void c(Canvas paramCanvas) {
    if (this.g.b() && this.g.K()) {
      this.e.setColor(this.g.g());
      this.e.setStrokeWidth(this.g.e());
      if (this.g.L() == cga.TOP || this.g.L() == cga.TOP_INSIDE || this.g.L() == cga.BOTH_SIDED)
        paramCanvas.drawLine(this.s.h(), this.s.f(), this.s.h(), this.s.i(), this.e); 
      if (this.g.L() == cga.BOTTOM || this.g.L() == cga.BOTTOM_INSIDE || this.g.L() == cga.BOTH_SIDED) {
        paramCanvas.drawLine(this.s.g(), this.s.f(), this.s.g(), this.s.i(), this.e);
        return;
      } 
    } 
  }
  
  public void d(Canvas paramCanvas) {
    List<cfw> list = this.g.n();
    if (list != null && list.size() > 0) {
      float[] arrayOfFloat = this.k;
      arrayOfFloat[0] = 0.0F;
      arrayOfFloat[1] = 0.0F;
      Path path = this.o;
      path.reset();
      int i = 0;
      while (true) {
        if (i < list.size()) {
          cfw cfw = list.get(i);
          if (cfw.K()) {
            int j = paramCanvas.save();
            this.l.set(this.s.l());
            this.l.inset(0.0F, -cfw.b());
            paramCanvas.clipRect(this.l);
            this.f.setStyle(Paint.Style.STROKE);
            this.f.setColor(cfw.c());
            this.f.setStrokeWidth(cfw.b());
            this.f.setPathEffect((PathEffect)cfw.f());
            arrayOfFloat[1] = cfw.a();
            this.b.a(arrayOfFloat);
            path.moveTo(this.s.g(), arrayOfFloat[1]);
            path.lineTo(this.s.h(), arrayOfFloat[1]);
            paramCanvas.drawPath(path, this.f);
            path.reset();
            String str = cfw.i();
            if (str != null && !str.equals("")) {
              this.f.setStyle(cfw.g());
              this.f.setPathEffect(null);
              this.f.setColor(cfw.J());
              this.f.setStrokeWidth(0.5F);
              this.f.setTextSize(cfw.I());
              float f1 = clg.b(this.f, str);
              float f2 = clg.a(4.0F) + cfw.F();
              float f3 = cfw.b() + f1 + cfw.G();
              cfx cfx = cfw.h();
              if (cfx == cfx.RIGHT_TOP) {
                this.f.setTextAlign(Paint.Align.RIGHT);
                paramCanvas.drawText(str, this.s.h() - f2, f1 + arrayOfFloat[1] - f3, this.f);
              } else if (cfx == cfx.RIGHT_BOTTOM) {
                this.f.setTextAlign(Paint.Align.RIGHT);
                paramCanvas.drawText(str, this.s.h() - f2, arrayOfFloat[1] + f3, this.f);
              } else if (cfx == cfx.LEFT_TOP) {
                this.f.setTextAlign(Paint.Align.LEFT);
                paramCanvas.drawText(str, this.s.g() + f2, f1 + arrayOfFloat[1] - f3, this.f);
              } else {
                this.f.setTextAlign(Paint.Align.LEFT);
                paramCanvas.drawText(str, this.s.b() + f2, arrayOfFloat[1] + f3, this.f);
              } 
            } 
            paramCanvas.restoreToCount(j);
          } 
          i++;
          continue;
        } 
        return;
      } 
    } 
  }
  
  protected void f() {
    this.d.setTypeface(this.g.H());
    this.d.setTextSize(this.g.I());
    String str = this.g.p();
    ckw ckw = clg.c(this.d, str);
    float f1 = (int)(ckw.a + this.g.F() * 3.5F);
    float f2 = ckw.b;
    ckw = clg.a(ckw.a, f2, this.g.M());
    this.g.B = Math.round(f1);
    this.g.C = Math.round(f2);
    this.g.D = (int)(ckw.a + this.g.F() * 3.5F);
    this.g.E = Math.round(ckw.b);
    ckw.a(ckw);
  }
  
  public RectF g() {
    this.j.set(this.s.l());
    this.j.inset(0.0F, -this.a.f());
    return this.j;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ckh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */